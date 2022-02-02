import places from 'places.js';

export const initAutocomplete = () => {
  const addressInput = document.getElementById('flat_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

// export { initAutocomplete };