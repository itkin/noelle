# -*- encoding : utf-8 -*-
module Admin::ApplicationHelper

  def menu_link_to(label, url, separator = false, condition =nil)
    link_to(label, url, :class => (condition ? ( condition.call ? 'selected' : nil) : ( request.path == url ? 'selected' : nil ))) +
    ' ' + (separator ? content_tag(:span, "-", :class => 'separator') : '')         
  end
end
