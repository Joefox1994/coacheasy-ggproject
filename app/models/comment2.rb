class Comment2 < ActiveRecord::Base
  
  belongs_to :program
  
  attr_accessible :body, :program_id
end