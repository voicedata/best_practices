class Practice < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :title
  def self.contents
    items = self.all
    items << NullPractice.new if items.size==0
    items
  end
  
  class NullPractice
    def title
      ""
    end
    def content
      "no content" 
    end
  end
end
