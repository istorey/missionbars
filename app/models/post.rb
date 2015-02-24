class Post < ActiveRecord::Base
	has_attached_file :image, styles: { large: "300x300", medium: "150x150", thumb: "100x100#"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	belongs_to :wall
end
