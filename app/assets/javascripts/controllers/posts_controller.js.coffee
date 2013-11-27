App.PostsController = Ember.ArrayController.extend
  needs: ['auth']
  isAuthenticated: Em.computed.alias "controllers.auth.isAuthenticated"