class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def create
    url = params[:url]
    @link = Link.create(url: url)
    binding.pry
    if @link.save
      redirect_to root_path
    end
  end
end
