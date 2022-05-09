class PagesController < ApplicationController
  def home
    @title = "journalite — The power of journaling"
    @description = "Create a journal to relieve anxiety, stress or depression, or make it a gratitude journal to document the positivity in your life."
  end
  def journal
    @title = "Create a journal with journalite"
    @description = "Use journalite to create journal entries to relieve depression, anxiety and stress or a gratitude journal to express the positivity in your life."
    @entries = Entry.order("created_at DESC").limit(6)
  end
  def thoughts
    @title = "Create thought records with journalite"
    @description = "Start recording your thoughts to alleviate negative thinking and encourage positive, helpful thoughts, emotions and feelings."
    @records = Record.order("created_at DESC").limit(3)
  end
  def faqs
    @title = "Frequently asked questions — How to use journalite"
    @description = "Learn how to use journalite with answers to frequently asked questions, including answers to common questions related to psychotherapy and CBT."
  end
end