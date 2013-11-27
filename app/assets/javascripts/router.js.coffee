# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()-> 
  @resource 'posts', -> 
    @resource 'post', path: '/:post_id'
    @route 'new'

  @route 'about'
  @route 'login'
  @route 'registration'