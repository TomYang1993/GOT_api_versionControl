class V2::CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def show
    @character = Character.find_by(id: params[:id])
  end
end
