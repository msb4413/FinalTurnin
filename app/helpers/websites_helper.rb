module WebsitesHelper
  def this_website(website)
    $WS = website
  end
  def last_website
    $WS
  end
end
