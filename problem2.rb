def parse_invoices(invoice_data)
  pattern = /(\d{4}-\d{2}-\d{2}) - ([a-z0-9A-Z]+) - ([a-zA-z\s]+) - \$([0-9]+)/
invoice_data.scan(pattern).each do |a, b, c, d|
    puts "Date: #{a} , Invoice Number: #{b} , Client Name: #{c} , Amount: $#{d}"
  end
end


invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

parse_invoices(invoice_entries)
