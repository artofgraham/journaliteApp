class PagesController < ApplicationController
  def home
  end
  def journal
    @entries = Entry.order("created_at DESC").limit(6)
  end
  def thoughts
    @records = Record.order("created_at DESC").limit(6)
  end
end