# Flavour addon manager for php

Will add contents to you `app.flavour` and `composer.json` file.

> Notice:
> _Once fam-flavour is not based on python anymore, this behavour is subject to change, but won't interfere with the usability!_

This addon parses the yaml file passed via stdin and tries to install the given package.
It uses composer in the background to install the dependencies from the registry but adds functionality to configure your flavour configuration as well as adding the requirement to be installed to the correct environments.

## Build

To build the docker container

```
docker build . -t flavour/fam-php:latest
```

## Add

To add a package to your project using `flavour-cli`

```
#  Add package from registry to your project
flavour add composer/package-namespace/package-name

# use a specific addon manager and a custom flavour file
flavour add  --addonmanager=flavour/fam-php --package=../test.php.flavour
```

The namespace for php packages is `composer` which has to be the first part of the package identifier.

Flavour will try to automatically detect the ideal installation scenario. Dev packages should therefore be installed only to `require-dev` and custom install scripts will prepare your environment to customize package configurations.


If you are providing your own flavour packages: by adding an optional `mode: dev` to your addon flavour file, you can decide on where the requirement


```
install:
  package: barryvdh/laravel-debugbar:v3.2.4
  mode: dev
```

Please look into the php-getting-started project for other sample configurations.


## Remove

Removing packages works the same way adding does

```
#  Remove package from registry to your project
flavour remove composer/package-namespace/package-name
```

## References

Flavour CLI: https://www.npmjs.com/package/@flavour/cli
