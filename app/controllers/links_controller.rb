class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def create
    link = Link.find_or_create_by(url: params[:url]).increment!(:count,1)
    @link = link.where(created_at: 24.hours.ago..Time.now)
    redirect_to root_path
  end
end
