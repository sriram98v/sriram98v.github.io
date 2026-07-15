// Back-to-top button: shows after scrolling past a threshold, smooth-scrolls up.
(function () {
  var btn = document.getElementById("scroll-top");
  if (!btn) return;
  var threshold = 400;

  function onScroll() {
    if (window.pageYOffset > threshold) btn.classList.add("visible");
    else btn.classList.remove("visible");
  }

  window.addEventListener("scroll", onScroll, { passive: true });
  onScroll();

  btn.addEventListener("click", function () {
    window.scrollTo({ top: 0, behavior: "smooth" });
  });
})();
