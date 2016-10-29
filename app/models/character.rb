class Character < ActiveRecord::Base
  validates :name, :house, :location, presence: true
end
