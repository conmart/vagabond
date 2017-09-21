class Post < ApplicationRecord
  belongs_to :City, optional: true
  belongs_to :User, optional: true
end
