class Micropost < ActiveRecord::Base
	belongs_to :peeps
	validates :comment, :length => { :maximum => 140}
end
