class Api::CardsController < Api::BaseController

  def index
    @cards = Card.order("id ASC")
    render json: @cards.to_json
  end
  
end
