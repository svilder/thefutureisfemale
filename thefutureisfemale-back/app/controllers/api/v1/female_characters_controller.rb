class Api::V1::FemaleCharactersController < ActionController::API
  def index
    render json: @female_characters = FemaleCharacter.all
  end
end
