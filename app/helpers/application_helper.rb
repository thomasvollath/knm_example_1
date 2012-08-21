module ApplicationHelper
  def errors_for(model, attribute)
    if model.errors[attribute].present?
      content_tag :span, :class => 'label label-important' do
        model.errors[attribute].first
      end
    end
  end

  def page_title(title)
    @website_name = 'ROWE'
    content_for(:page_title) { @website_name + ' | ' + title }
  end
end
