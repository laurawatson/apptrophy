class CreateImagesController < ApplicationController
  before_action :set_create_image, only: [:show, :edit, :update, :destroy]

  # GET /create_images
  # GET /create_images.json
  def index
    @create_images = CreateImage.all
  end

  # GET /create_images/1
  # GET /create_images/1.json
  def show
  end

  # GET /create_images/new
  def new
    @create_image = CreateImage.new
  end

  # GET /create_images/1/edit
  def edit
  end

  # POST /create_images
  # POST /create_images.json
  def create
    @create_image = CreateImage.new(create_image_params)

    respond_to do |format|
      if @create_image.save
        format.html { redirect_to @create_image, notice: 'Create image was successfully created.' }
        format.json { render :show, status: :created, location: @create_image }
      else
        format.html { render :new }
        format.json { render json: @create_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_images/1
  # PATCH/PUT /create_images/1.json
  def update
    respond_to do |format|
      if @create_image.update(create_image_params)
        format.html { redirect_to @create_image, notice: 'Create image was successfully updated.' }
        format.json { render :show, status: :ok, location: @create_image }
      else
        format.html { render :edit }
        format.json { render json: @create_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_images/1
  # DELETE /create_images/1.json
  def destroy
    @create_image.destroy
    respond_to do |format|
      format.html { redirect_to create_images_url, notice: 'Create image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_image
      @create_image = CreateImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def create_image_params
      params.require(:create_image).permit(:file, :view_count, :user_id)
    end
end
