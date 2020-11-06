

const pickChallenge = () => {
  const challenges =  document.querySelectorAll('.challenge-card');
    const commInput =  document.querySelector('.comm-input-attribute');
    const commForm = document.querySelector('.commitment-attributes');
    if (challenges) {
      challenges.forEach((challenge) => {
        challenge.addEventListener('click', (event) => {
          // setTimeout(() => {
          //   event.currentTarget.classList.remove("challenge-card")
          //   event.currentTarget.classList.add("challenge-card-green")
          // }, 200)
          const option = event.currentTarget.dataset.option
          commInput.value = option
          commForm.submit()
        })
      });
  }
}


export { pickChallenge };
