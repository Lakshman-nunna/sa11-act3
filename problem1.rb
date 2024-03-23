def extract_urls(text)
  pattern =  /((|ftp|http|https):\/\/(www.)?([A-Za-z0-9]*)(.com|.edu|.org)((\/)?[a-z0-9A-z]*)*(\?[a-zA-z0-9_]*=[a-zA-z0-9+]*)?)/
  text.scan(pattern)
  print(text.scan(pattern).map{|a|a[0]})
end

sample_text = "Visit our site at http://www.example.org for more information. Check out our search page at https://example.com/search?q=ruby+regex. Don’t forget to ftp our resources at ftp://example.com/resources."

extract_urls(sample_text)
