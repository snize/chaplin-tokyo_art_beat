# Application routes.
module.exports = (match) ->
  match '', 'home#index'
  match 'graphics', 'home#graphics'
  match 'illustration', 'home#illustration'
  match 'painting', 'home#painting'
