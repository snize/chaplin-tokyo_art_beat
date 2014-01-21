View = require 'views/base/view'

module.exports = class HomePageView extends View
  autoRender: true
  template: require './templates/home'

  constructor: (options) ->
    super options
    @model.subscribeEvent 'change:result', _.bind(@onChangeResult, @)
    @model.getDataFromApi()

  onChangeResult: (val) ->
    @render()

  getTemplateData: ->
    result = @model.result()
    data = {
      category: @model.attributes.category,
      result: result
    }
    return data
