// import 'js-autocomplete/auto-complete.css';
// import autocomplete from 'js-autocomplete';

// const renderItem = function (item) {
//     let icon;
//     if (item.type === 'user') {
//       icon = '<i class="fab fa-github"></i>';
//     } else if (item.type === 'item') {
//       icon = '<i class="fas fa-code"></i>';
//     }
//     return `<div class="autocomplete-suggestion">${icon}<span>${item.name}</span></div>`
// };

// const autocompleteSearch = function() {
//   const items = JSON.parse(document.getElementById('search-data').dataset.items)
//   const searchInput = document.getElementById('q');
//   debugger

//   if (items && searchInput) {
//     new autocomplete({
//       selector: searchInput,
//       minChars: 1,
//       source: function(term, suggest){
//         $.getJSON('/autocomplete',
//           { q: term },
//           function(data) {
//             return data;
//         }).then((data) => {
//           const matches = []
//           data.items.forEach((item) => {
//             matches.push({type: 'item', name: item });
//           });
//           data.users.forEach((user) => {
//             matches.push({type: 'user', name: user });
//           });
//           suggest(matches)
//         });
//       },
//       renderItem: renderItem,
//     });
//   }
// };
// console.log('hi from the autocomplete page');

// export { autocompleteSearch };
