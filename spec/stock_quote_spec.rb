require "stock_quote"

describe StockQuote::Stock do
  companies = [["aapl", "Apple Inc."], ["goog", "Google Inc"]]
  companies.each do |symbol, company|
    it "can lookup #{symbol} and find that is #{company}" do
      stock = StockQuote::Stock.quote(symbol)
      stock.company.should == company
    end
  end
end
