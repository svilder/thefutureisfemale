class Api::V1::FemaleCharactersController < ActionController::API
  def index
    render json: @female_characters = FemaleCharacter.all
  end

  # def create
  #   @owner = Owner.new(owner_params)
  #   @female_character = FemaleCharacter.new(female_character_params)
  #   @female_character.owner = @owner

  #   if @owner.save && @female_character.save
  #     render :index
  #   else
  #     render_error
  #   end
  # end


  # def update
  #   @female_character = FemaleCharacter.find(params[:id])
  #   if @female_character.update(female_character_params)
  #     render :index
  #   else
  #     render_error
  #   end
  # end

  # private

  # def female_character_params
  #   params.require(:female_character).permit(:name, :book_title, :author_name)
  # end

  # def owner_params
  #   params.require(:owner).permit(:name)
  # end

  # def render_error
  #   render json: { errors: @female_character.errors.full_messages },
  #     status: :unprocessable_entity
  # end
end
