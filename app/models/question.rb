class Question < ActiveRecord::Base
	validates :title , :a ,:b, :c ,:d ,:answer, presence: true

	has_many :qts , dependent: :destroy
	has_many :tests ,through: :qts
end
