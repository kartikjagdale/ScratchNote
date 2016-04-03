# == Schema Information
#
# Table name: scratches
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class ScratchesController < ApplicationController
  before_action :find_scratch, only: [:show, :edit, :update, :destroy]
  
  def index
    @scratches = get_all_scratches(current_user)
  end

  def show
  end

  def new
    @scratch = current_user.scratches.build
  end

  def create
    @scratch = current_user.scratches.build(scratch_params)
    if @scratch.save
      redirect_to @scratch
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @scratch.update(scratch_params)
      redirect_to @scratch
    else
      render 'edit'
    end
  end

  def destroy
    @scratch.destroy
    redirect_to scratches_path
  end

  private

  def find_scratch
    @scratch = current_user.scratches.find(params[:id])
  end

  def scratch_params
    params.require(:scratch).permit(:title, :content)
  end

end
