class EntriesController < ApplicationController
  def index
    @entries = Entry.all
    @entry = Entry.new
    @sum = Entry.sum('amount')
  end

  def create
    @entry = Entry.new(params[:entry])
    if @entry.save
      redirect_to entries_path, notice: "Entry successfully created!"
    else
      render 'new'
    end
  end
end
