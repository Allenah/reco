import autocomplete from 'js-autocomplete';

const renderItem = function (item) {
    let icon;
    if (item.type === 'user') {
      icon = '<i class="fab fa-github"></i>';
    } else if (item.type === 'movie') {
      icon = '<i class="fas fa-video"></i>';
    }
    return `<div class="autocomplete-suggestion" data-title="${item.name}">${icon}<span>${item.name}</span></div>`
};

const handleSelect = function(_e, _term, item) {
  const titleInput = document.getElementById('item_name');
  titleInput.value = item.dataset.title;
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
          // data.users.forEach((user) => {
          //   matches.push({type: 'user', name: user });
          // });
          data.movies.forEach((movie) => {
            matches.push({type: 'movie', name: movie });
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
