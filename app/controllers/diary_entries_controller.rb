class DiaryEntriesController < ApplicationController
  def new
    @diary_entry = DiaryEntry.new
  end

  def create
    @diary_entry = DiaryEntry.new(diary_entry_params)
    if @diary_entry.save
      redirect_to @diary_entry
    else
      render 'new'
    end
  end

  def show
    @diary_entry = DiaryEntry.find(params[:id])
  end

  def index
    @diary_entries = DiaryEntry.all
  end

  private

  def diary_entry_params
    params.require(:diary_entry).permit(:title, :content, :entry_date)
  end
end
