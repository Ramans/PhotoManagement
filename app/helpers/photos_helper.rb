module PhotosHelper
	def photo_name(photo)
		if photo
			image_tag photo.photo.url(:thumb)
		end
	end
end
