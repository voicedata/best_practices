class BestPractices.Routers.PeopleRouter extends Backbone.Router
  initialize: (options) ->

  routes:
    "test/:id": "do_test"
    "*actions": "defaultRoute" 
    
  do_test: (id) ->
    alert "do_test with id: #{id}"

  defaultRoute: (actions) ->
    alert "defaultRoute with action: #{actions}" 

