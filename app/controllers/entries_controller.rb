class EntriesController < ApplicationController
  def index
    @entries = Entry.all.order('published desc')
  end
end
