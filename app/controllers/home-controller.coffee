Controller = require 'controllers/base/controller'
HeaderView = require 'views/home/header-view'
MenuView = require 'views/home/menu-view'
HomePageView = require 'views/home/home-page-view'
HomePage = require 'models/home-page'

module.exports = class HomeController extends Controller
  beforeAction: ->
    super
    @compose 'header', HeaderView, region: 'header'
    @compose 'menu', MenuView, region: 'menu'

  index: ->
    @view = new HomePageView region: 'main'

  category: (params) ->
    @model = new HomePage category: params.category
    @view = new HomePageView {region: 'main' ,model: @model}
