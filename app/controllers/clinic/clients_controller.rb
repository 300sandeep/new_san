class Clinic::ClientsController < ApplicationController
   helper_method :sort_column, :sort_direction

	def index
    if params[:value]
      #@clients = current_user.clients.where(first_name: params[:value]).page(params[:page]).per(params[:limit])
      @clients = current_user.clients.where(first_name: params[:value]).page(params[:page]).per(params[:limit])
    else
      if params[:limit]
       @clients = current_user.clients.page(params[:page]).per(params[:limit])
      else
       @clients = current_user.clients.order("#{sort_column} #{sort_direction}").page(params[:page])

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
  private
  def sortable_columns
    ["first_name", "price"]
  end

  def sort_column
    sortable_columns.include?(params[:column]) ? params[:column] : "first_name"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
