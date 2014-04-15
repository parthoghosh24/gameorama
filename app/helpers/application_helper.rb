module ApplicationHelper
 def fullTitle(pageTitle)
    baseTitle = "Gameorama- The ultimate gaming platform"
    if pageTitle.empty?
       baseTitle
    else
      "#{baseTitle} | #{pageTitle}"
    end
  end
end
