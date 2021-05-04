module ApplicationHelper
  
  def employment_nav_class(step, application)
    return "active" if application.send("#{step}?".to_sym)
    return "complete" if application.past_state(step)
  end

  class String
    def is_int?
      self =~ /^[-+]?[0-9]*$/
    end
  end

  def embedded_svg filename, options={}
    file = File.read(Rails.root.join('app', 'assets', 'images', filename))
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css 'svg'
    if options[:class].present?
      svg['class'] = options[:class]
    end
    doc.to_html.html_safe
  end
end
