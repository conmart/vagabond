class Comment < ApplicationRecord
  belongs_to :Post, optional: true
  belongs_to :User, optional: true
end
