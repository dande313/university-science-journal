class Topic < ApplicationRecord
  has_many :article_topics
  has_many :articles, through: :article_topics
  belongs_to :department
  validates :name, presence: true, uniqueness: true
end
