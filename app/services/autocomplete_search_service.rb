class AutocompleteSearchService
  include HTTParty
  base_uri "https://api.github.com/"

  def initialize(term)
    @term = term
  end

  def call
    # { restaurants: restaurants, movies: movies }
      { movies: movies }
    # { users: users, items: items }
    # { restaurants: restaurants }
  end

  private

  def restaurants
    # initiate client
    # call Google Places API
    client = GooglePlaces::Client.new(ENV['GOOGLE_API_KEY'])
    results = client.predictions_by_input(
        @term,
        lat: 0.0,
        lng: 0.0,
        radius: 20000000,
        types: 'establishment',
        language: I18n.locale,
        componentRestrictions: {country: 'pt'}
    )
    results.map { |m| m.terms[0]["value"] }.take(5)
    # results.first.terms[0]["value"]
  end

  def movies
    # initiate client
    # call TMDB API
    client = Tmdb::Api.key(ENV['TMDB_API_KEY'])
    search = Tmdb::Search.new.query(@term)
    results = search.fetch
    puts results.inspect
    results.take(5)

    # @movie = Tmdb::Movie.images(22855)
  end

  def users
    response = self.class.get("/search/users", query: { q: @term })
    response["items"].map { |u| u["login"] }.take(5)
  end

  def items
    Item.find_by_name(@term).map(&:name).take(5)
  end
end
