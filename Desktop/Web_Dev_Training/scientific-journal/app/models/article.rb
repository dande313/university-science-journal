class Article < ApplicationRecord
	belongs_to :user
	has_many :article_topics, :dependent => :destroy
	has_many :topics, through: :article_topics
	accepts_nested_attributes_for :topics
	validates :name, presence: true

	def topics_attributes=(topic_attributes)
	    topic_attributes.values.each do |topic_attribute|
	    	if !topic_attribute[:name].empty?
		      topic= Topic.find_or_create_by(topic_attribute)
		      self.topics << topic
		    end
	    end
	end
end
