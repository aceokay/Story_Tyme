class AdditionsController < ApplicationController
  def new
    @story = Story.find(params[:story_id])
    @addition = @story.additions.new

    images = Image.all
    image_count = images.length
    selected_id = 1 + rand(image_count).ceil
    @image = Image.find(selected_id)
    if @story.additions.length > 1
      @placeholder = @story.additions[-2].body
    else
      @placeholder = @story.body
    end
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

  def edit
    @addition = Addition.find(params[:id])
    render :edit
  end

  def update
    @addition = Addition.find(params[:id])
    @story = Story.find(@addition.story_id)
    if @addition.update(addition_params)
      redirect_to story_path(@addition.story)
    else
      render :edit
    end
  end

  def destroy
    @story = Story.find(params[:story_id])
    @addition = Addition.find(params[:id])
    @addition.destroy
    redirect_to story_path(@story)
  end

  private
  def addition_params
    params.require(:addition).permit(:body, :author, :image_id)
  end
end
