class AdditionsController < ApplicationController
  def new
    @story = Story.find(params[:story_id])
    @addition = @story.additions.new

    images = Image.all
    image_count = images.length
    selected_id = 1 + rand(image_count).ceil
    @image = Image.find(selected_id)
  end

  def create
    @story = Story.find(params[:story_id])
    @image = Image.find(addition_params[:image_id])
    @addition = @story.additions.new(addition_params)
    if @addition.save
      redirect_to story_path(@story)
    else
      render :new
    end
  end

  private
  def addition_params
    params.require(:addition).permit(:body, :author, :image_id)
  end
end
