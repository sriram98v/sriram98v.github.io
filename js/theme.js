// Theme toggle: flips data-theme, persists to localStorage, swaps icon,
// and re-inits the hero particles so their color follows the theme.
(function () {
  var root = document.documentElement;
  var btn = document.getElementById("theme-toggle");
  if (!btn) return;
  var icon = btn.querySelector("i");

  function syncIcon() {
    var dark = root.getAttribute("data-theme") === "dark";
    if (!icon) return;
    icon.classList.toggle("fa-moon", !dark);
    icon.classList.toggle("fa-sun", dark);
  }

  function reinitParticles() {
    if (typeof window.initParticles !== "function") return;
    if (window.pJSDom && window.pJSDom.length) {
      try { window.pJSDom[0].pJS.fn.vendors.destroypJS(); } catch (e) {}
      window.pJSDom = [];
    }
    window.initParticles();
  }

  syncIcon();

  btn.addEventListener("click", function () {
    var dark = root.getAttribute("data-theme") === "dark";
    if (dark) {
      root.removeAttribute("data-theme");
      localStorage.setItem("theme", "light");
    } else {
      root.setAttribute("data-theme", "dark");
      localStorage.setItem("theme", "dark");
    }
    syncIcon();
    reinitParticles();
  });
})();
