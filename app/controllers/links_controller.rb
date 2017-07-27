class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def create
    url = params[:url]
    # binding.pry
    @link = Link.find_or_create_by(url: url).increment!(:count,1)
    # @link.save
    redirect_to root_path
  end
end
