class Bestseller
  def self.get_bestseller_list
    response = RestClient.get( 'https://api.nytimes.com/svc/books/v3/lists/combined-print-and-e-book-fiction.json', headers= {api_key: ENV['NYT_API_KEY']})
  end
end
