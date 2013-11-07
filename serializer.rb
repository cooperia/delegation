class SomeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description

  def title
    object.title.titleize
  end  
end
