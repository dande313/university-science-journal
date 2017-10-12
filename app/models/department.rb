class Department < ApplicationRecord
	has_many :users
	has_many :articles, through: :users
end
