class Practice < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :title
end
