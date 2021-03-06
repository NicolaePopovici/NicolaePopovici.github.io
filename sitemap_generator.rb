require 'builder'

NUMBER_OF_ENTRIES = 3

def product_xml
  xml = Builder::XmlMarkup.new( :indent => 2 )
  xml.instruct! :xml, :encoding => "UTF-8"

  xml.urlset(xmlns: "http://www.sitemaps.org/schemas/sitemap/0.9") do |p|
    NUMBER_OF_ENTRIES.times {
      xml.url do |u|
        u.loc "https://nicolaepopovici.github.io/lorem_ipsum.html"
      end
    }
  end
end

File.write("sitemap_with_500.xml", product_xml)
