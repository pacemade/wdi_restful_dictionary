class EntriesController < ApplicationController

  def index
    @entries = Entry.all.sort
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new
    @entry.word = params[:entry][:word]
    @entry.definition = params[:entry][:definition]
    @entry.language = params[:entry][:language]

    if @entry.save
      redirect_to entries_url
      # this gives the whole URL
    else
      redirect_to new_entry_url
    end

  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.word = params[:entry][:word]
    @entry.definition = params[:entry][:definition]
    @entry.language = params[:entry][:language]

    if @entry.save
      redirect_to entry_url(params[:id])
    else
      redirect_to edit_entry_url(params[:id])
    end
  end

  def destroy
    redirect_to entry_url
  end

end
