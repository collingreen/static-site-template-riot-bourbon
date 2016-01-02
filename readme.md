# Static Site Template

This is a project template for use with Wintersmith. This comes out of the box
with a working setup that includes:

- live reload
- bower for front end dependency management
- riot js
- sass and jade (but you are not forced to use them!)
- bourbon, bitters, and neat


## TODO

- minification and concatenation
- deploy script - use arazu?
- fix livereload breaking preview server when config is changed


## Requirements

You must have npm and wintersmith installed before getting started with
this project. Everything else will be installed for you.


## Create New Project

You can use wintersmith to generate a brand new project using this as
the template with the following command:

`wintersmith new -T path/to/this/project project_name`

Now start editing your files (start with config.json) to customize your
project and start creating your new content.


## Install Requirements

In the top level of your project directory, run `npm install`.  This will ensure
you have everything your site needs, ready to go. This includes installing
all the configured plugins, running `bower install` to handle the bower
dependencies, and running the postinstall script to move and patch things as
necessary (this template takes a manual approach to moving files from
bower_components into the contents folder because of bloat, sanity, and safety).


## Run the Development Server

Start the preview server using:

`wintersmith preview`

You can now access your site at localhost:8080. The default base template
includes a livereload script so your pages will reload as you save changes
in your source code, giving you instant visual feedback.


## Build

When you want to create a deployable build of your site, simply call

`wintersmith build`

This will generate a build folder in the top level of the project that
includes your entire site, ready to deploy on any static hosting system
(github pages, S3, etc).


## Tools

- Wintersmith - static site generator
- npm - project dependency management
- Bower - client side dependency management
- Normalize - css reset
- Bourbon - Sass mixins
- Neat - grid system for bourbon
- Bitters - default bourbon styling
- RiotJS - reactive front end


## Wintersmith Plugins

- wintersmith-sass
- wintersmith-nunjucks
- wintersmith-riot
- wintersmith-livereload


## Usage Suggestions


### Use Wintersmith Plugins

Wintersmith is a very flexible site generator that comes with a powerful
plugin system. This enables you to easily use third party tools (like the
pre-processor plugins this template ships with) or manipulate your content when
creating things like article lists or pagination.


### Use Bower

Use bower to manage client side dependencies. Use the
scripts/bower_postinstall.sh script to move just what you need from the
bower_components folder (usually FILLED with project cruft) into the contents
folder (usually contents/styles/vendor or contents/scripts/vendor).


## Known Issues

Changing the config.json file while the preview server is running breaks the
preview server. Simply call wintersmith preview again to restart it.
