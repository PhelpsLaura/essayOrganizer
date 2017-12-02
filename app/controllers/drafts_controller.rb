class DraftsController < ApplicationController
  def show
    @essay = Essay.find(params[:essay_id])
    @draft = @essay.drafts.find(params[:id])
  end

  def new
    @essay = Essay.find(params[:essay_id])
    @draft = @essay.drafts.new
  end

  def create
    @essay = Essay.find(params[:essay_id])
    @draft = @essay.drafts.new(draft_params)
    if @draft.save
      redirect_to essay_path(@essay)
    else
      render 'new'
    end
  end

  def edit
    @essay = Essay.find(params[:essay_id])
    @draft = @essay.drafts.find(params[:id])
  end

  def update
    @essay = Essay.find(params[:essay_id])
    @draft = @essay.drafts.find(params[:id])
    if @draft.update(draft_params)
      redirect_to essay_path(@essay)
    else
      render 'edit'
    end
  end

  def destroy
    @essay = Essay.find(params[:id])
    @draft = @essay.drafts.find(params[:id])

    redirect_to essay_path(@essay)
  end

  private
    def draft_params
      params.require(:draft).permit(:content, :notes)
    end
end
