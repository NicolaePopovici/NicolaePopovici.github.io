require 'builder'

NUMBER_OF_ENTRIES = 100

def product_xml
  xml = Builder::XmlMarkup.new( :indent => 2 )
  xml.instruct! :xml, :encoding => "UTF-8"

  xml.urlset(xmlns: "http://www.sitemaps.org/schemas/sitemap/0.9") do |p|
    NUMBER_OF_ENTRIES.times {
      xml.url do |u|
        u.loc "https://nicolaepopovici.github.io/lorem_ipsum.html"
        u.lastmod "2021-11-16T19:40:02+01:00"
      end
    }
  end
end

File.write("sitemap.xml", product_xml)
