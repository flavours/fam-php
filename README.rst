Flavour addon manager for php
=============================

Will add contents to you `app.flavour` and `composer.json` file.

It uses composer in the background to install the dependencies from the registry but adds functionality to configure your flavour configuration as well as adding the requirement to be installed to the correct environments.

Build
-----

To build the docker container ::

   docker build . -t flavour/fam-php:latest


Flavour will try to automatically detect the ideal installation scenario. Dev packages should therefore be installed only to `require-dev` and custom install scripts will prepare your environment to customize package configurations.


If you are providing your own flavour packages: by adding an optional `mode: dev` to your addon flavour file, you can decide on where the requirement. ::

   install:
      package: barryvdh/laravel-debugbar:v3.2.4
      mode: dev

Please look into the php-getting-started project for other sample configurations.


References
----------

Flavour CLI: https://www.npmjs.com/package/@flavour/cli
