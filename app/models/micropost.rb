class Micropost < ActiveRecord::Base
	belongs_to :peeps
	validates :comments, :length => { :maximum => 140}
end
