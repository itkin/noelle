class Admin::TranslationsController < Admin::ApplicationController
  active_scaffold :translation do |config|
    config.columns.exclude :type
    config.columns[:display].inplace_edit = true     
  end
end
