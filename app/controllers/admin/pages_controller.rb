class Admin::PagesController < Admin::ApplicationController
  active_scaffold :page do |config|
    
    config.actions.exclude :create
    config.show.columns = config.update.columns = [:image, :picture, :document, devise.rb:document_2, :content]
    config.columns[:image].label = "Image du cadre"
    config.columns[:picture].label = "Image du texte"
    config.columns[:document].label = "Document joint"
    config.columns[:document_2].label = "Document 2 joint"
    config.columns[:content].label = "Contenu"
  end
end
