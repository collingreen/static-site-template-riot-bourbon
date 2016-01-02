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

You must have node and npm installed before getting started with this project.
Everything else will be installed for you.


## Create Project

If you already have wintersmith installed globally you can use wintersmith to
generate a brand new project using this as the template with the following
command:

`wintersmith new -T path/to/this/project project_name`

Otherwise clone the project from git, nuke the .git folder, and start editing.

`git clone git@github.com:collingreen/static-site-template-riot-bourbon your-project-name`
`rm -rf your-project-name/.git`


## Install Requirements

In the top level of your project directory, run `npm install`.  This will ensure
you have everything your site needs, ready to go. This includes installing
all the configured plugins, running `bower install` to handle the bower
dependencies, and running the postinstall script to move and patch things as
necessary (this template takes a manual approach to moving files from
bower_components into the contents folder because of bloat, sanity, and safety).


## Run the Development Server

Start the preview server using:

`npm start`

You can now access your site at localhost:8080. The default base template
includes a livereload script so your pages will reload as you save changes
in your source code, giving you instant visual feedback.

Note - this is the same as running `wintersmith preview`.


## Build

When you want to create a build of your site, simply call

`npm run-script build`

This will generate a build folder in the top level of the project that
includes your entire site.

Note - this is the same as running `wintersmith build`.


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
