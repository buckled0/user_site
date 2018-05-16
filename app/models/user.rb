class User
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  validates :first_name, :presence => true
  validates :last_name, :presence => true
end
