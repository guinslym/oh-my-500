json.array!(@websites) do |website|
  json.extract! website, :id, :url, :description, :title, :image	
  json.url website_url(website, format: :json)
  json.thumb_url website.image.url(:thumb)
end
