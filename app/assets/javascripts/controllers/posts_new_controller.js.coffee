App.PostsNewController = Ember.ObjectController.extend
  actions:
    createPost: ->
      post = App.Post.createRecord
        title: @get('title')
        body: @get('body')
      post.save().then =>
        @transitionToRoute 'post', post