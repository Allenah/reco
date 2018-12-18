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

    // return `<div class="autocomplete-suggestion" data-title="${item.title}" data-image="${item.backdrop_path}">${icon}<span>${item.title}</span></div>`
    // return `<div class="autocomplete-suggestion" data-title="${item.name}" data-image="${item.images[0].url}">${icon}<span>${item.name}</span></div>`
    return `<div class="autocomplete-suggestion" data-title="${item.name}" data-image="${item.photo}">${icon}<span>${item.name}</span></div>`
    // "https://i.scdn.co/image/1870e3c0e5abc4a58cfbfb8aeaf3b6a57b88eb87"
};

const handleSelect = function(_e, _term, item) {
  const titleInput = document.getElementById('item_name');
  titleInput.value = item.dataset.title;
  const posterPreview = document.getElementById("backdrop");
  // posterPreview.insertAdjacentHTML('afterbegin', "<h3 class=''>Photo</h3>");
  // posterPreview.insertAdjacentHTML('beforeend', `<img src="http://image.tmdb.org/t/p/w780${item.dataset.image}">`);
  // movie posterPreview.innerHTML = `<img src="http://image.tmdb.org/t/p/w780${item.dataset.image}">`;
  posterPreview.innerHTML = `<img src="${item.dataset.image}">`;
  const remotePhoto = document.getElementById("item_remote_photo");
  remotePhoto.value = `https://res.cloudinary.com/dtb2b6cpx/image/fetch/${item.dataset.image}`;
  // movie remotePhoto.value = `https://res.cloudinary.com/dtb2b6cpx/image/fetch/http://image.tmdb.org/t/p/w780${item.dataset.image}`;

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
          // data.items.forEach((item) => {
          //   matches.push({type: 'item', name: item });
          // });
          // data.restaurants.forEach((restaurant) => {
          //   matches.push($.extend({ type: 'restaurant', name: restaurant.terms[0]["value"] }, restaurant));
          // });
          data.movies.forEach((movie) => {
            matches.push($.extend({ type: 'movie', name: movie.title, photo: `http://image.tmdb.org/t/p/w780${movie.backdrop_path}` }, movie));
          });
          data.albums.forEach((album) => {
            matches.push($.extend({ type: 'album', name: album.name, photo: album.images[0].url }, album));
          });
          suggest(matches)
        });
      },
      renderItem: renderItem,
      onSelect: handleSelect
    });
  }
};

export { autocompleteSearch };
