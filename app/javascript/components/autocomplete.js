import autocomplete from 'js-autocomplete';

const renderItem = function (item) {
    let icon;
    if (item.type === 'restaurant') {
      icon = '<i class="fas fa-utensils"></i>';

    } else if (item.type === 'movie') {
      icon = '<i class="fas fa-video"></i>';
    }
    else if (item.type === 'album') {
      icon = '<i class="fas fa-music"></i>';
    }

    return `<div class="autocomplete-suggestion" data-title="${item.name}" data-image="${item.photo}">${icon}<span>${item.name}</span></div>`
};

const handleSelect = function(_e, _term, item) {
  const titleInput = document.getElementById('item_name');
  titleInput.value = item.dataset.title;
  const posterPreview = document.getElementById("backdrop");
  posterPreview.innerHTML = `<img src="${item.dataset.image}">`;
  const remotePhoto = document.getElementById("item_remote_photo");
  remotePhoto.value = `https://res.cloudinary.com/dtb2b6cpx/image/fetch/${item.dataset.image}`;
}

const autocompleteSearch = function() {
  const searchInput = document.getElementById('item_name');

  if (searchInput) {
    new autocomplete({
      selector: searchInput,
      minChars: 1,
      source: function(term, suggest){
        $.getJSON('/items/autocomplete',
          { q: term },
          function(data) {
            return data;
        }).then((data) => {
          const matches = []
          data.movies.forEach((movie) => {
            matches.push($.extend({ type: 'movie', name: movie.title, photo: `http://image.tmdb.org/t/p/w780${movie.backdrop_path}` }, movie));
          });
          data.albums.forEach((album) => {
            matches.push($.extend({ type: 'album', name: album.name, photo: album.images[0].url }, album));
          });
          // data.restaurants.forEach((restaurant) => {
          //   matches.push($.extend({ type: 'restaurant', name: restaurant.terms[0]["value"] }, restaurant));
          // });
          suggest(matches)
        });
      },
      renderItem: renderItem,
      onSelect: handleSelect
    });
  }
};

export { autocompleteSearch };
