class Post < ActiveRecord::Base
  	attr_accessible :url, :title

  	has_many :comments
	has_many :votes


	before_create :generate_slug

	validates :title, presence: true
	validates :title, length: { minimum: 2 }

	validates :url, presence: :true

	def vote_number
		votes.where(direction: "up").count - votes.where(direction: "down").count
	end

	
	def to_param
		title.split(' ').join('_')
	end

	def generate_slug
		self.slug = title.split(' ').join('_')
	end

end