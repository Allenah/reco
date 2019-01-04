class AutocompleteSearchService
  require 'rspotify'

  def initialize(term)
    @term = term
  end

  def call
    { movies: movies, albums: albums }
    # { movies: movies, albums: albums, restaurants: restaurants }
  end

  private

  def restaurants
    client = GooglePlaces::Client.new(ENV['GOOGLE_API_KEY'])
    results = client.predictions_by_input(
        @term,
        lat: 0.0,
        lng: 0.0,
        radius: 20000000,
        types: 'establishment',
        language: I18n.locale,
    )
    results.take(3)
  end

  def movies
    client = Tmdb::Api.key(ENV['TMDB_API_KEY'])
    search = Tmdb::Search.new.query(@term)
    results = search.fetch
    puts results.inspect
    results.take(3)
  end

  def albums
    RSpotify.authenticate(ENV['SPOTIFY_API_ID'], ENV['SPOTIFY_API_SECRET'])
    albums = RSpotify::Album.search(@term)
    albums.take(3)
  end

  def users
    response = self.class.get("/search/users", query: { q: @term })
    response["items"].map { |u| u["login"] }.take(5)
  end

  def items
    Item.find_by_name(@term).map(&:name).take(5)
  end
end
