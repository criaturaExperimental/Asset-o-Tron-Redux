class MyAssetsController < ApplicationController
  before_action :set_my_asset, only: [:show, :edit, :update, :destroy]
  before_action :set_project

  def show
  end

  def new
    @my_asset = @project.my_assets.new
  end

  def edit
  end

  def create
    @my_asset = @project.my_assets.new(my_asset_params)

    respond_to do |format|
      if @my_asset.save
        format.html { redirect_to @project, notice: 'Asset was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @my_asset.update(my_asset_params)
        format.html { redirect_to @project, notice: 'Asset was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @my_asset.destroy
    respond_to do |format|
      format.html { redirect_to my_assets_url, notice: 'Asset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_asset
      @project = Project.find(params[:project_id])
      @my_asset = @project.my_assets.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_asset_params
      params.fetch(:my_asset, {}).permit(:name)
    end

    def set_project
      @project = Project.find(params[:project_id])
    end
end
