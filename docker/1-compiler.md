## Ampersand compiler
To run the Ampersand compiler, you can easily use a Docker image from:
`docker.pkg.github.com/ampersandtarski/ampersand/ampersand`

Make a shortcut tag for easy use
```bash
docker tag docker.pkg.github.com/ampersandtarski/ampersand/ampersand ampersand
```

Different tags are available, e.g.:
* :latest -> development branche
* :stable -> master branche
* :[branch] -> specific branch
* :v3.17 -> specific tags/releases

```bash
docker run -it -v "$(pwd)":/usr/local/project ampersand [OPTIONS] FILE
```

This alternative presumes you have `docker` installed on your computer and it can be found (i.e. the path is set correctly).