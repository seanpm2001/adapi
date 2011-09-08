
require 'adapi'

# create ad group
require 'add_bare_ad_group'

ad = Adapi::Ad::TextAd.new(
  :ad_group_id => $ad_group[:id],
  :headline => "Code like Neo",
  :description1 => 'Need mad coding skills?',
  :description2 => 'Check out my new blog!',
  :url => 'http://www.demcodez.com',
  :display_url => 'http://www.demcodez.com'
)

ad.create

p ad.data