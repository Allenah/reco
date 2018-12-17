module ApplicationHelper
  def footer_link_active?(icon)
    case icon
    when 'home'
      home_page?
    when 'friends'
      friends_page?
    when 'add'
      add_page?
    when 'profile'
      profile_page?
    end
  end

  def home_page?
    controller_name == 'pages' || current_page?(controller: 'lists', action: 'index')
  end

  def friends_page?
    controller_name == 'friendships'
  end

  def add_page?
    current_page?(controller: 'lists', action: 'new') || current_page?(controller: 'items', action: 'new')
  end

  def profile_page?
    current_page?(controller: 'pages', action: 'profile')
  end
end
