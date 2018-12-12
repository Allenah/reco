import $ from 'jquery';
import 'select2';

function select() {
  const element = document.getElementById('list_tag_ids');
  if (element) {
    $(element).select2();
  }
};

export {select};
