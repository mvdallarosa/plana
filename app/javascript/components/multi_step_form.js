const content = [
  ["How often do you fly?", "I never fly", "2 short flights or 1 long flight / 2 years", "at least 1 short & 1 long distance / year"],
  ["How often do you eat meat?", "I am vegetarian", "I eat meat 2-3 times/week", "I eat meat almost every day"],
  ["How often do you buy NEW clothes, cellphones, computers, toys, furniture, appliances, etc?", "very rarely", "every now and then", "every week"],
  ["What kind of energy system does your building have?", "completely energy efficient", "renewable energy for heating only", "oil & natural gas heating"],
  ["How long are your showers usually?", "less than 5 minutes", "up to 20 minutes", "not long but I have baths often"],
  ["How warm is your house in winter?", "I wear a pullover (18-20°C)", "pleasantly warm (20-22°C)", "I can just wear a T-shirt (> 22°C)"]
]

const multiForm = () => {
let count = 0
const question = document.querySelector('.question')
const answers =  document.querySelectorAll('.answer');
const inputs =  document.querySelectorAll('.input-attribute');
const form = document.querySelector('.form-attributes');
if (question) {
  answers.forEach((answer) => {
    answer.addEventListener('click', (event) => {
      event.currentTarget.classList.remove("answer")
      event.currentTarget.classList.add("answer-choice")
      const option = event.currentTarget.dataset.option
      inputs[count].value = option
        if (count === 6 ) {
          count = 0
          return form.submit()
        }
      setTimeout(() => {
        question.innerText = content[count][0]
        answers.forEach((answer, index) => {
          answer.innerText = content[count][index + 1]
          answer.classList.remove("answer-choice")
          answer.classList.add("answer")
        })
        count += 1

      }, 200)
    })
  });
}
}

export { multiForm };
