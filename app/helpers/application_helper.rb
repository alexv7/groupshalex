module ApplicationHelper

  def is_active?(link_path)
   current_page?(link_path) ? "active" : ""
  end

  def is_portfolio_active?
      array = ["/welcome/portfolio1col", "/welcome/portfolio2col", "/welcome/portfolio3col", "/welcome/portfolio4col", "/welcome/portfolioitem"]
      array.each do |path|
      if current_page?(path)
        return "dropdown active"
      else
        "dropdown"
      end
    end
  end

  def is_blog_active?
      array = ['/welcome/bloghome1', '/welcome/bloghome2', '/welcome/blogpost']
      array.each do |path|
      if current_page?(path)
        return "dropdown active"
      else
        "dropdown"
      end
    end
  end

  def is_otherpages_active?
      array = ['/welcome/fullwidth', '/welcome/sidebar', '/welcome/faq', '/welcome/p404', '/welcome/pricing']
      array.each do |path|
      if current_page?(path)
        return "dropdown active"
      else
        "dropdown"
      end
    end
  end

end
