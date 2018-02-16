class Clinic::SettingsController < ApplicationController
  
  def dashboard
  end
  
	def manage_rewards
	end

	def videos
		@video  = Video.new
		@video.images.build
	end

	def create
		binding.pry
		@video = Video.new(video_params)
		if @video.save!
			@video.images.create(name: params[:video][:images_attributes]["0"]["name"][0])
			params[:video][:body_locations].each do |b|
        @video.allocations.create(body_location_id: b)
      end  
		end
		redirect_to :back
	end

	def send_for_approve
		@video = Video.find(params[:id])
		status = @video.update(:sending_for_approval) ? true : false
	end

	private
	  def video_params
			params.require(:video).permit(:url, :category, :amount, :type, :sets, :reps, :description, :rehab_name)
		end
end
