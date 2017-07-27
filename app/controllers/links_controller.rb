class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def create
    binding.pry
    @link = Link.new(link_params)
    if @link.save
      redirect_to root_path
    end
  end

  def link_params
    params.require(:link).permit(:url)
  end
end
