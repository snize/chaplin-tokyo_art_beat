View = require 'views/base/view'

module.exports = class MenuView extends View
  autoRender: true
  className: 'menu'
  tagName: 'div'
  template: require './templates/menu'
