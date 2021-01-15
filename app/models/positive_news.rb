class PositiveNews
  URL = 'https://www.positive.news/'

  def initialize
  end

  def scrape_main_article
    unparsed_page = HTTParty.get(URL)
    parsed_page = Nokogiri::HTML(unparsed_page)
    main_article = parsed_page.css('div.main__article')

    Article.create(
      title: main_article.css('a')[1].children.text,
      url: main_article.css('a')[1].attributes['href'].value,
      image_url: main_article.css('img').first.attributes['src'].value,
      type_of_article: 'main'
    )
  end

  def scrape_articles
    unparsed_page = HTTParty.get(URL)
    parsed_page = Nokogiri::HTML(unparsed_page)
    articles = parsed_page.css('div.latest__articles').css('.column')

    articles.each do |article|
      Article.create(
        title: article.css('a')[1].children.text,
        url: article.css('a').first.attributes['href'].value,
        image_url: article.css('img').first.attributes['src'].value,
        type_of_article: 'normal'
      )
    end
    puts 'Done'
  end

  def featured_articles
    unparsed_page = HTTParty.get(URL)
    parsed_page = Nokogiri::HTML(unparsed_page)
    articles = parsed_page.css('div.featured__articles').css('.column')

    articles.each do |article|
      Article.create(
        title: article.css('a')[1].children.text,
        url: article.css('a').first.attributes['href'].value,
        image_url: article.css('img').first.attributes['src'].value,
        type_of_article: 'featured'
      )
    end
    puts 'Done'
  end
end
