const navLinks = document.querySelectorAll(".nav-link");

document.addEventListener("DOMContentLoaded", () => {
  navArr = Array.from(navLinks);
  const found = navArr.find((el) => el.hash == location.hash);
  target = found != undefined ? found : navLinks[0];
  addClass(target);
});

function addClass(target) {
  navLinks.forEach(link => link.classList.remove("active"));
  target.classList.add("active");
}