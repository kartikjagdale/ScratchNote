class ScratchesController < ApplicationController
  before_action :find_scratch, only: [:show, :edit, :update, :destroy]
  
  def index
    @scratches = Scratch.all.order("created_at DESC")
  end

  def show
  end

  def new
    @scratch = Scratch.new
  end

  def create
    @scratch = Scratch.new(scratch_params)
    if @scratch.save
      redirect_to @scratch
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_scratch
    @scratch = Scratch.find(params[:id])
  end

  def scratch_params
    params.require(:scratch).permit(:title, :content)
  end


end
