
class PhotosController < ApplicationController

	def index
		@photos = Photo.all
	end

	def new
		@photo = Photo.new
	end

	def create
		@photo = Photo.new(params[:photo])
		@photo.save
		redirect_to photos_url
	end

	def show
		@photo = Photo.find_by_id(params[:id])
	end

	def edit
		@photo = Photo.find_by_id(params[:id])
	end

	def update
		@photo = Photo.find_by_id(params[:id])
		if @photo.update_attributes(params[:photo])
			redirect_to @photo
		end
	end

end
