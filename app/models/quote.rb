class Quote < ActiveRecord::Base
  belongs_to :user
  validates :content, presence: { message: "Content can't be blank." }
  validates :content, length: { minimum: 6 }
end
