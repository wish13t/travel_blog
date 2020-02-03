class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
  class Blog < ActiveRecord::Base
  validates :content, :length=>{ :maximum=>500 }
  belongs_to :travel
end
  class Travel < ActiveRecord::Database
    has_many :blogs
  end
