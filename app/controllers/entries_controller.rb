class EntriesController < ApplicationController

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  def edit
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
