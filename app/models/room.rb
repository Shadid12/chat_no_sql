class Room
  include Mongoid::Document
  field :name, type: String
  belongs_to :user
  field :members, type: Array
  has_many :messages
end
