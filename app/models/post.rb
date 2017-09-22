class Post < ApplicationRecord
  belongs_to :City, optional: true
  belongs_to :User, optional: true

  validates :title, presence: true, length: {maximum: 200, minimum: 1}
  validates :message, presence: true

end
