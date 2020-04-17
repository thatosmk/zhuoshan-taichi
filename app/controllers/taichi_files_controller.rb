class TaichiFilesController < ApplicationController
  before_action :set_taichi_file, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /taichi_files
  # GET /taichi_files.json
  def index
    @taichi_files = TaichiFile.all
    @taichi_file = TaichiFile.new
  end

  # GET /taichi_files/1
  # GET /taichi_files/1.json
  def show
  end

  # GET /taichi_files/new
  def new
    @taichi_file = TaichiFile.new
  end

  # GET /taichi_files/1/edit
  def edit
  end

  # POST /taichi_files
  # POST /taichi_files.json
  def create
    @taichi_file = TaichiFile.new(taichi_file_params)
    @taichi_file.user_id = current_user.id
    @taichi_file.docs.attach(params[:taichi_file][:docs])

    respond_to do |format|
      if @taichi_file.save
        format.html { redirect_to taichi_files_url, notice: 'Taichi file was successfully created.' }
        format.json { render :show, status: :created, location: @taichi_file }
      else
        format.html { render :new }
        format.json { render json: @taichi_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taichi_files/1
  # PATCH/PUT /taichi_files/1.json
  def update
    respond_to do |format|
      if @taichi_file.update(taichi_file_params)
        format.html { redirect_to taichi_files_url, notice: 'Taichi file was successfully updated.' }
        format.json { render :show, status: :ok, location: @taichi_file }
      else
        format.html { render :edit }
        format.json { render json: @taichi_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taichi_files/1
  # DELETE /taichi_files/1.json
  def destroy
    @taichi_file.destroy
    respond_to do |format|
      format.html { redirect_to taichi_files_url, notice: 'Taichi file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taichi_file
      @taichi_file = TaichiFile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def taichi_file_params
      params.require(:taichi_file).permit(:title, :desc, :category, :user_id)
    end
end
