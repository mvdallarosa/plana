

const pickChallenge = () => {

  function sleep(milliseconds) {
  const date = Date.now();
  let currentDate = null;
  do {
    currentDate = Date.now();
  } while (currentDate - date < milliseconds);
}

  const challenges =  document.querySelectorAll('.challenge-card');
    const commInput =  document.querySelector('.comm-input-attribute');
    const commForm = document.querySelector('.commitment-attributes');
    if (challenges) {
      challenges.forEach((challenge) => {
        challenge.addEventListener('click', (event) => {

            event.currentTarget.classList.remove("challenge-card");
            // event.currentTarget.classList.remove("challenge-icon-grey");
            event.currentTarget.classList.add("challenge-card-green");
            // event.currentTarget.classList.add("challenge-icon-white");


          const option = event.currentTarget.dataset.option
          commInput.value = option
          commForm.submit()
        })
      });
  }
}


export { pickChallenge };
