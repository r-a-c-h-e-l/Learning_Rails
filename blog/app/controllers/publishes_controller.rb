class PublishesController < ApplicationController
  def index
    @publishes = Publish.all()
  end

  def  edit
    @publish = Publish.find(params[:id])
  end

  def new
    @publish = Publish.new
  end

  def create
    @publish = Publish.create(publishes_params)
    if @publish.save
      redirect_to publish_path(@publish)
    else
      render :new
    end
  end

  def show
    @publish = Publish.find(params[:id])
  end

  def update
    @publish = Publish.find(params[:id])
    @publish.update(publishes_params)
    redirect_to publish_path(@publish)
  end

  def destroy
    @publish = Publish.find(params[:id])
    @publish.destroy
    redirect_to publishes_path
  end

  private
    def publishes_params
      params.require(:publish).permit(:title, :author, :content)
    end

end
