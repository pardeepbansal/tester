class Question < ActiveRecord::Base
	validates :title , :a ,:b, :c ,:d , :e ,:answer, presence: true
end
