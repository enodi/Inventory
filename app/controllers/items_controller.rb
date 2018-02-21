class ItemsController < ApplicationController
  def index
    @items = @current_user.items
    json_response(@items)
  end

  def create
    new_item_params = {
      name: item_params[:name],
      description: item_params[:description],
      quantity: item_params[:quantity],
      user_id: JsonWebToken.decode(request.headers[:HTTP_AUTHORIZATION])[:user_id]
    }

    @item = Item.create!(new_item_params)
    json_response(@item, :created)
  end

  private

  def item_params
    params.permit(
      :name,
      :description,
      :quantity,
      :user_id
    )
  end
end
