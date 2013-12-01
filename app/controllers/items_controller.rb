class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @event = Event.find(params[:event_id])
    @item = Item.create(name: params[:item][:name], price: params[:item][:price], event_id: params[:event_id])

    redirect_to host_event_path(session[:host_id], @event)
  end

  def update

  end

  def destroy
  end
end