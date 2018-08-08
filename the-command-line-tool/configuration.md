# Configuration

ampersand.exe can be configured in several ways. [Options](https://github.com/AmpersandTarski/documentation/tree/5c45435a2b5cdd69129ba6ee9401819331fb531e/the-command-line-tool/options.md) can be used to tell what artifacts to generate, and all kinds of other useful things. You can add a configuration file in the the same directory as your model, so you don't have to remember all these switches each time you call ampersand.exe.

## Environment Variables

The standard behavior of **ampersand** is affected by the following environment variables.

* **CCdbName**  Sets the name of the database that is to be generated. Can be overruled by --dbName
* **CCdirOutput** Sets the default output directory for generated assets. Can be overruled by --outputDir 
* **CCdirPrototype** Sets the default directory where functional prototypes are being generated. Can be overruled by --proto

