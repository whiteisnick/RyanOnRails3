class EntriesController < ApplicationController

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @collection = Collection.find(params[:collection_id])
    @entry = Entry.new
  end

  def create
    @collection = Collection.find(params[:collection_id])
    @entry = Collection.entries.new(entry_params)

    if @entry.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  def edit
    @collection = Collection.find(params[:collection_id])
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])

    if @entry.update
      redirect_to '/'
    else
      render 'edit'
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    redirect_to '/'
  end

  private
    def entry_params
    params.require(:entry).permit(:name, :description, :image_url, :collection_id)
    end

end
