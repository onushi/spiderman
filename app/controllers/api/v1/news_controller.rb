class Api::V1::NewsController < ApplicationController
  def index
    render json: { message: "hi, this is news controller."} 
  end

  def show
  end
end