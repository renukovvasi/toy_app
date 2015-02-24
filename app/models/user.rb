class User < ActiveRecord::Base
  has_many :microposts
  validates :name, presence: true
  validates :email, presence: true
  def self.search(search)
  search_condition = "%" + search + "%"
  find(:all, :conditions => ['name LIKE ? OR email LIKE ?', search_condition, search_condition])
  end
end
