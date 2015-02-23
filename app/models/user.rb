class User < ActiveRecord::Base
  has_many :microposts
  validates title, presence: true
  validates text, presence: true
end
