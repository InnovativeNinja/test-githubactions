import Base64 from 'js-base64';

// This file was generated by Mendix Studio Pro.
/**
 * @param {string} inputString
 * @returns {Promise.<string>}
 */
async function Base64Encode(inputString) {
    // BEGIN USER CODE
    return Base64.encode(inputString);
    // END USER CODE
}

export { Base64Encode };