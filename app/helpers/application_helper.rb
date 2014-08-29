module ApplicationHelper
	def nav_item(text, options)
		is_current = current_page?(options)
		active_class = is_current ? "active" : "";
		path = url_for options
		"<li class=\"#{active_class}\"><a href=\"#{path}\">#{text}</a></li>".html_safe
	end
end
