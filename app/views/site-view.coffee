View = require 'views/base/view'

# Site view is a top-level view which is bound to body.
module.exports = class SiteView extends View
  container: 'body'
  id: 'layout'
  regions:
    menu: '#menu'
    header: '.header'
    main: '.content'
  template: require './templates/site'
