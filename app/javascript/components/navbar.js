const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-landing');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-landing-white');
      } else {
        navbar.classList.remove('navbar-landing-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
