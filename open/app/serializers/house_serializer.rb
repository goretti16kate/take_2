class HouseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :slug, :image_url
  #include the relationship with reviews
  has_many :reviews
end
