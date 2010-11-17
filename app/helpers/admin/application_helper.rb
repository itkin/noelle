module Admin::ApplicationHelper

  def menu_link_to(label, url, separator = false)
    link_to(label, url, :class => (request.path == url ? 'selected' : nil )) +
    ' ' + (separator ? content_tag(:span, "-", :class => 'separator') : '')         
  end
end
