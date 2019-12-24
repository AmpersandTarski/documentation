# Compiler

To run the Ampersand compiler, you can use a Docker image from: `docker.pkg.github.com/ampersandtarski/ampersand/ampersand`

Make a shortcut tag for easy use

```bash
docker tag docker.pkg.github.com/ampersandtarski/ampersand/ampersand ampersand
```

Different tags are available, e.g.:

* :latest -&gt; development branche
* :stable -&gt; master branche
* :\[branch\] -&gt; specific branch
* :v3.17 -&gt; specific tags/releases

```bash
docker run -it -v "$(pwd)":/usr/local/project ampersand [OPTIONS] FILE
```

This alternative presumes you have `docker` installed on your computer and it can be found \(i.e. the path is set correctly\).

