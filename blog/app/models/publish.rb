class Publish < ActiveRecord::Base
  validates :title, presence: true
  validates :author, presence: true
  validates :content, presence: true

  validates :content, length: {
    maximum: 30,
    minimum: 3
  }
end
