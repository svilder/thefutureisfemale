class Api::V1::FemaleCharactersController < ActionController::API
  def index
    @female_characters = FemaleCharacter.all
  end
end
