class BestPractices.Models.Person extends Backbone.Model
  paramRoot: 'person'
  url: '/practices'

  defaults:
    name: "John"
    age: 36

  initialize: ->
    this.on "change:name", (model) -> 
      name = model.get "name"
      alert "Changed my name to #{name}"

    this.on "error", (model, error) -> 
      alert error

  validate: (attributes) ->
    return "you cannot have negative year of birth" if attributes.age<0 and attributes.name !="jiang"

class BestPractices.Collections.PeopleCollection extends Backbone.Collection
  model: BestPractices.Models.Person
  url: '/practices'

