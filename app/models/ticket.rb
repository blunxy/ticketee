class Ticket < ActiveRecord::Base
  belongs_to :project
  validates :title, :presence => true
  validates :description, :presence => true, 
                          :length => {:minimum => 10, 
                                      :message => "Description must be more than 10 characters." }
end
