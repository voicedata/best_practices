#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.BestPractices =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  init: ->
    new BestPractices.Routers.PeopleRouter
    Backbone.history.start()

$(document).ready ->
  BestPractices.init()
