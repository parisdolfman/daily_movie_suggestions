Notes

Movies have:
- Title
- Year (Is included in title and does not need to be a separate variable)
- Rating
- URL


Movie Objects have:
- Attr_accessor for attributes
- All method to collect all movies into an array
  - the array will be iterated over to expose the attributes
  - the information within the array should be scraped with Nokogiri from the source page

- First Movie Title: @title = doc.search("table.table a.unstyled.articleLink")[0].text
- Second Movie Title: @title = doc.search("table.table a.unstyled.articleLink")[1].text
- Third Movie Title: @title = doc.search("table.table a.unstyled.articleLink")[2].text

- First Movie Rating: @rating = doc.search("table.table span.tMeterScore")[0].text.split(//).last(3).join
- Second Movie Rating: @rating = doc.search("table.table span.tMeterScore")[1].text.split(//).last(3).join
- Third Movie Rating: @rating = doc.search("table.table span.tMeterScore")[2].text.split(//).last(3).join
