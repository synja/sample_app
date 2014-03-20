module ApplicationHelper
  
  #
  # documentation needed here
  #
  def full_title(page_title)
    base_title = "Title Prefix"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end # the if
  end  # the def
end # the module
