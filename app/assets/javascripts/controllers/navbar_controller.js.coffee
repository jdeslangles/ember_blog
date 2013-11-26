App.NavbarController = Ember.ObjectController.extend
  needs: ['auth']
  currentUser: Em.computed.alias "controllers.auth.currentUser"
  isAuthenticated: Em.computed.alias "controllers.auth.isAuthenticated"
  actions:
    logout: ->
      log.info "NavbarController handling logout event..."
      @get("controllers.auth").logout()