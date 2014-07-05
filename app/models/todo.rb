class Todo < ActiveRecord::Base

  validates :description, length: {minimum: 1 }, presence: true
  validates :user, presence: true
  belongs_to :user

end
