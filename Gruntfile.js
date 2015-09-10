var _ = require('lodash');

module.exports = function (grunt) {
  'use strict';
  var categories = ['Tutorials', 'CI Integrations', 'Reference'];
  grunt.initConfig({
    // See https://github.com/CabinJS/grunt-pages to learn about this plugin
    pages: {
      docs: {
        src: 'markdown',
        dest: 'dist',
        layout: 'test/post.ejs',
        url: '/:category/:title/',
        options: {
          metadataValidator: function(posts) {
            posts.forEach(function(post) {
              var errorString;
              if (!post.category || categories.indexOf(post.category) === -1) {
                errorString = 'The following doc belongs to a non-existent `category`: ';
              } else if (!post.description) {
                errorString = 'The following doc is missing a `description` property: ';
              } else if (_.isUndefined(post.index) || _.isNaN(parseInt(post.index))) {
                errorString = 'The following doc needs a number `index` property to indicate its position in the nav: ';
              } else {
                var categoryPosts = _.filter(posts, { category: post.category });
                var duplicateIndexDocs = _.filter(categoryPosts, { index: post.index });
                if (duplicateIndexDocs.length > 1) {
                  errorString = 'The following docs have duplicate `index` properties: ' + _(duplicateIndexDocs).without(post).map('sourcePath') + ' and ';
                } else {
                  return;
                }
              }
              grunt.fail.fatal(errorString + post.sourcePath);
            });
          },
          markedOptions: function(marked) {
            var renderer = new marked.Renderer();
            renderer.heading = function (text, level, raw, post) {
              if (level === 1) {
                grunt.fail.fatal('No H1 level headings allowed in the docs. Found "' + text + '" at ' +
                                 post.sourcePath);
              }
              // Note: changing this may break fragment identifier links from other pages
              var escapedText = raw
                                  .toLowerCase()
                                  .replace(/(<([^>]+)>)/ig, '')
                                  .replace(/[^\w]+/g, '-');
              return'<h' + level + ' id="' + escapedText + '">' + raw + '</h' + level + '>';
            };
            return {
              renderer: renderer
            };
          }
        }
      }
    },
    'link-checker': {
      dev: {
        site: 'localhost',
        options: {
          maxConcurrency: 20,
          initialPort: 4001,
          // Removed url('') because it produced false positives in code blocks
          discoverRegex: [
            /(\shref\s?=\s?|\ssrc\s?=\s?>\)]+)/ig,
            /(\shref\s?=\s?|\ssrc\s?=\s?)['"]([^"']+)/ig,
            /http(s)?\:\/\/[^?\s><\'\"]+/ig
          ],
          callback: function(crawler) {
            crawler.addFetchCondition(function(url) {
                return url.port === '4001';
            });
          }
        }
      }
    },
    jshint: {
      all: ['*.js'],
      options: {
        jshintrc: true
      }
    },
    connect: {
      options: {
        port: 4001,
        hostname: '0.0.0.0',
        base: 'dist',
        livereload: true
      },
      dev: {}
    },
    copy: {
      images: {
        files: [{
          expand: true,
          dest: 'dist',
          src: [
            'images/**',
          ]
        }]
      }
    }
  });
  grunt.registerTask('test', [
    'jshint',
    'pages',
    'copy',
    'connect',
    'link-checker'
  ]);
  require('load-grunt-tasks')(grunt);
};
