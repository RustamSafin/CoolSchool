class Note < ActiveRecord::Base
  validates :name,:number, presence: true
  validates :vk, presence: false
  
end
