class Question < ActiveRecord::Base
	validates :title , :a ,:b, :c ,:d ,:answer, presence: true
end
