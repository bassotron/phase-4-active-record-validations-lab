class Post < ApplicationRecord
	validates :title, presence: true, allow_blank: false
	validates :content, length: { minimum: 250 }
	validates :summary, length: { maximum: 250 }
	validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
	validate  :true_facts

	def true_facts
		if title == "True Facts"
			errors.add(:title, "Title is clickbait")
		end

	end

end
