import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Feeling thirsty?", "Check out our recipes"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };

