# frozen_string_literal: true

module ApplicationHelper
  def active_class_for_page(page)
    @active_page == page ? 'active' : ''
  end
  
  def external_link_image_tag
    image_tag 'arrow-up-right-from-square-solid.svg', class: 'link-icon', width: '20', height: '20',
                                                      alt: 'external link'
  end

  def here_image_tag
    image_tag 'arrow-left-long-solid.svg', class: 'here-icon', width: '20', height: '20', alt: 'left arrow'
  end
end
