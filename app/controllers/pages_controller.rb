require "sentium"
class PagesController < ApplicationController
  def home
    @title = "journalite — The power of journaling"
    @description = "Create a journal to relieve anxiety, stress or depression, or make it a gratitude journal to document the positivity in your life."
    # @sentium = Sentium.askFeeling
  end
  def journal
    @title = "Create a journal with journalite"
    @entries = Entry.order("created_at DESC").limit(6)
  end
  def thoughts
    @title = "Create thought records with journalite"
    @records = Record.order("created_at DESC").limit(3)
  end
  def faqs
    @title = "Frequently asked questions — How to use journalite"
  end
end