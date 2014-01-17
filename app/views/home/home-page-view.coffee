View = require 'views/base/view'

module.exports = class HomePageView extends View
  autoRender: true
  template: require './templates/home'
