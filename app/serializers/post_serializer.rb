class PostSerializer < ActiveModel::Serializer
  attributes :id, :url, :title, :body, :date
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
end
