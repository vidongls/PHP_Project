window.addEventListener('load', (event) => {
  // Fixed nav

  const nav = document.querySelector('nav'),
    mainLogo = document.querySelector('.mainLogo'),
    menuLinks = document.querySelectorAll('.menuLink');

  window.onscroll = function () {
    if (window.pageYOffset >= 60) {
      nav.classList.add('fixed');
      mainLogo.classList.add('fixLogo');
      menuLinks.forEach(function (e) {
        e.classList.add('fixedLink');
      });
    } else {
      nav.classList.remove('fixed');
      mainLogo.classList.remove('fixLogo');
      menuLinks.forEach(function (e) {
        e.classList.remove('fixedLink');
      });
    }
  };

  ///////// Animate Modules //////////
  const dailyItem = document.querySelectorAll('.card');
  let delay = 1;

  const anime = (element, animation) => {
    if (element.offsetParent != null) {
      if (!element.classList.contains(animation)) {
        element.classList.add(animation);

        element.style.animationDelay = `${delay}` * 0.2 + 's';
        delay++;
      }
    }
  };

  const isInViewport = (element) => {
    var bounding = element.getBoundingClientRect();
    return (
      bounding.bottom >= 0 &&
      bounding.right >= 0 &&
      bounding.top <= document.documentElement.clientHeight &&
      bounding.left <= document.documentElement.clientWidth
    );
  };

  const isItemVisible = (element, animation) => {
    if (isInViewport(element)) {
      if (window.innerWidth >= 800) {
        anime(element, animation);
      }
    }
  };

  // for viewport
  const animeItem = (item, animation) => {
    item.forEach((item) => {
      isItemVisible(item, animation);
    });
    delay = 1;
  };

  // for scroll
  window.addEventListener('scroll', () => {
    if (window.innerWidth >= 800) {
      animeItem(dailyItem, 'anime');
    }
  });
  // to load the animations

  animeItem(dailyItem, 'anime');

  /* Back to top */
  let toTop = document.getElementById('scrollme');
  toTop.addEventListener('click', function () {
    scrollToTop(600);
  });

  function scrollToTop(scrollDuration) {
    var scrollStep = -window.scrollY / (scrollDuration / 15),
      scrollInterval = setInterval(function () {
        if (window.scrollY != 0) {
          window.scrollBy(0, scrollStep);
        } else clearInterval(scrollInterval);
      }, 15);
  }

  // open Modal

  const btnVideo = document.querySelector('.btn'),
    modalVideo = document.querySelector('.modal'),
    iconCloseVideo = document.querySelector('.modal__icon'),
    body = document.querySelector('body');

  btnVideo.addEventListener('click', openVideo);

  iconCloseVideo.addEventListener('click', closeVideo);

  function openVideo() {
    setTimeout(() => {
      modalVideo.classList.add('open');
    }, 300);

    body.style.overflow = 'hidden';
    modalVideo.style.overflow = 'hidden';
  }

  function closeVideo() {
    modalVideo.classList.remove('open');

    body.style.overflow = 'visible';
    modalVideo.style.overflow = 'visible';
  }

  document.querySelector('.modal').style.height = window.innerHeight + 'px';
});

