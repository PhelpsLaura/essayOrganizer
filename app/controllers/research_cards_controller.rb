class ResearchCardsController < ApplicationController

  def show
    @essay = Essay.find(params[:essay_id])
    @source = @essay.sources.find(params[:source_id])
    @research_card = @source.research_cards.find(params[:id])
  end

  def new
    @essay = Essay.find(params[:essay_id])
    @source = @essay.sources.find(params[:source_id])
    @research_card = @source.research_cards.new
  end

  def edit
    @essay = Essay.find(params[:essay_id])
    @source = @essay.sources.find(params[:source_id])
    @research_card = @source.research_cards.find(params[:id])
  end

  def create
    @essay = Essay.find(params[:essay_id])
    @source = @essay.sources.find(params[:source_id])
    @research_card = @source.research_cards.create(research_card_params)

    redirect_to essay_path(@essay)
  end

  def update
    @essay = Essay.find(params[:essay_id])
    @source = @essay.sources.find(params[:source_id])
    @research_card = @source.research_cards.find(params[:id])

    @research_card.update(research_card_params)

    redirect_to essay_source_research_card_path(@essay, @source, @research_card)
  end
  def destroy
    @essay = Essay.find(params[:essay_id])
    @source = @essay.sources.find(params[:source_id])
    @research_card = @source.research_cards.find(params[:id])
    @research_card.destroy

    redirect_to essay_path(@essay)
  end

  private
    def research_card_params
      params.require(:research_card).permit(:title, :content)
    end
end
