class EntriesController < ApplicationController

  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    render :new
  end

  def create
    redirect_to entries_url
  end

  def edit
    render :edit
  end

  def update
    redirect_to entry_url(params[:id])
  end

  def destroy
    redirect_to entry_url
  end

end
