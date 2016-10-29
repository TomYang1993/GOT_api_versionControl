class Api::V1::CharactersController < ApplicationController
  def new

  end

  def index
    @characters = Character.all
  end

  def show
    @character = Character.find_by(id: params[:id])
  end

  def create
    @character = Character.new(
      name: params[:name],
      house: params[:house],
      location: params[:location]
    )
    if @character.save
      render json: {message: "haha"}
    else
      render json: {errors: @character.errors.full_messages} ,status: 422
# status is defined, so the browser knows it is error, and go to that error condition
# in http post success and error condition
    end
    # render 'show'
  end

  def destroy
    @character = Character.find_by(id: params[:id])
    @character.destroy
  end
end
