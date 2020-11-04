// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});

const content = [
  ["How often do you fly?", "I never fly", "2 short flights or 1 long flight / 2 years", "at least 1 short & 1 long distance / year"],
  ["How often do you eat meat?", "I am vegetarian", "I eat meat 2-3 times/week", "I eat meat almost every day"],
  ["How often do you buy?", "very rarely", "every now and then", "every week"],
  ["What kind of energy system do you have?", "completely energy efficient", "renewable energy for heating only", "oil & natural gas heating"],
  ["how long are your showers usually?", "less than 5 minutes", "20 minutes", "not long but I have baths often"],
  ["how warm is your house in winter?", "I wear a pullover (18-20°C)", "pleasantly warm (20-22°C)", "I can just wear a T-shirt (> 22°C)"]
]

let count = 0
const question = document.querySelector('.question')
const answers =  document.querySelectorAll('.answer');
const inputs =  document.querySelectorAll('.input-attribute');
const form = document.querySelector('.form-attributes');


document.addEventListener('turbolinks:load', () => {
  answers.forEach((answer) => {
  answer.addEventListener('click', (event) => {
    const option = event.currentTarget.dataset.option
    inputs[count].value = option
      if (count === 6 ) {
        count = 0
        return form.submit()
      }
    question.innerText = content[count][0]
    answers.forEach((answer, index) => {
      answer.innerText = content[count][index + 1]
    })
    count += 1
    })
});

});











