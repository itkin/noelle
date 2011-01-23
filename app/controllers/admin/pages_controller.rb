class Admin::PagesController < Admin::ApplicationController
  active_scaffold :page do |config|
    
    config.actions.exclude :create
    config.show.columns = config.update.columns = [:image, :picture, :document, :content]
    config.columns[:image].label = "Image du cadre"
    config.columns[:picture].label = "Image du texte"
    config.columns[:document].label = "Document joint"
    config.columns[:content].label = "Contenu"
  end
end
