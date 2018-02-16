class Clinic::ClientsController < ApplicationController

	def index
    if params[:value]
      @clients = current_user.clients.where(first_name: params[:value]).page(params[:page]).per(params[:limit])
    else
      if params[:limit]
       @clients = current_user.clients.page(params[:page]).per(params[:limit])
      else
       @clients = current_user.clients.page(params[:page])
      end
    end
    respond_to do |format|
     format.html
     format.js
    end
	end

  def rehab
  end

  def change
  end

  def messages
  end

  def stats
  end
end
