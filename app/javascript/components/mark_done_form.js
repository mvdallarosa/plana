const markDone = () => {
  const doneBtn =  document.querySelector('.done-btn');
  const doneInput =  document.querySelector('.done-input-attribute');
  const doneForm = document.querySelector('.done-attributes');
  if (doneBtn) {
    doneBtn.addEventListener('click', (event) => {
      event.currentTarget.classList.remove("plana-btn-grey")
      event.currentTarget.classList.remove("done-btn")
      event.currentTarget.classList.add("plana-btn-dark")
      event.currentTarget.innerText = "DONE"
      doneInput.value = true
      doneForm.submit()
    })
  }
}


export { markDone };
