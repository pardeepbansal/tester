class Test < ActiveRecord::Base
	validates :title ,:description, presence: true


	has_many :qts ,dependent: :destroy
	has_many :questions ,through: :qts
end
