class Admin::ImagesController < Admin::ApplicationController
  active_scaffold :images do |config|
    config.columns.exclude :type, :display, :position, :language
    config.list.columns.add :thumb, :url
  end
end
