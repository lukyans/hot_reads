class Api::V1::LinksController < ApplicationController
  def index
    render json: Link.all
  end

  def create
    link = Link.find_or_create_by(url: params[:url]).increment!(:count,1)
    @link = link.where(created_at: 24.hours.ago..Time.now)
    render json: Link.all
  end
end
