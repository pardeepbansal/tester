class Test < ActiveRecord::Base
	validates :title ,:description, presence: true
end
