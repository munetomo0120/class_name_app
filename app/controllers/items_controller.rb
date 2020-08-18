class ItemsController < ApplicationController
  def new
    @item = Item.new
  end
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to new_item_path
    else
      render 'new'
    end
  end

  private
  def item_params
    #mergeもあとで
    # params.require(:item).permit(:name)
    params.require(:item).permit(:name).merge(seller_id: current_user.id)
  end
end
