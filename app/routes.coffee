# Application routes.
module.exports = (match) ->
  match '', 'home#index'
  match ':category', 'home#category'
