Controller = require 'controllers/base/controller'
HeaderView = require 'views/home/header-view'
MenuView = require 'views/home/menu-view'
HomePageView = require 'views/home/home-page-view'

module.exports = class HomeController extends Controller
  beforeAction: ->
    super
    @compose 'header', HeaderView, region: 'header'
    @compose 'menu', MenuView, region: 'menu'

  index: ->
    @view = new HomePageView region: 'main'

  graphics: ->
    @view = new HomePageView region: 'main'

  illustration: ->
    @view = new HomePageView region: 'main'

  painting: ->
    @view = new HomePageView region: 'main'
