Application = require 'application'
routes = require 'routes'

# Initialize the application on DOM ready event.
$ ->
  new Application {
    title: 'TAB on Chaplin.js',
    controllerSuffix: '-controller',
    routes
  }
