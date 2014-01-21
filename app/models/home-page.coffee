Model = require 'models/base/model'

module.exports = class HomePage extends Model

  initialize: ()->
    console.log 'initialized'


  result: (result)->
    if result?
      @_result = result
      @publishEvent 'change:result', @_result
    else
      @_result

  getDataFromApi: () ->
    $.ajax
      url: "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20xml%20where%20url%3D'http%3A%2F%2Fwww.tokyoartbeat.com%2Flist%2Fevent_type_print_graphicdesign.ja.xml'%20&format=json&callback="
      crossDomain: true
    .done (data) =>
        @result data.query.results.Events.Event[0]
