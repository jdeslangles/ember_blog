class PostSerializer < ActiveModel::Serializer
  attributes :id, :url, :title, :body, :date, :last_updated_at, :can_update, :can_destroy
  
  embed :ids, include: true
  
  has_one :user

  def url
    post_url object
  end
  
  def body
    object.content
  end
  
  def date
    object.created_at.getutc.iso8601
  end
 
  def last_updated_at
    if object.updated_at != object.created_at
      object.updated_at.getutc.iso8601
    end    
  end

  def can_update
    Ability.new(scope).can?(:update, object)
  end

  def can_destroy
    Ability.new(scope).can?(:destroy, object)    
  end
end
