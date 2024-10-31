window.addEventListener('hashchange', function () {
// console.log("URL hash changed to " + location.hash)
addClass(location.hash);
});

document.addEventListener('DOMContentLoaded', function () {
// console.log("DOM loaded")
addClass(location.hash);
})

function addClass(hash) {
    const navLinks = Array.from(document.querySelectorAll(".nav-link"));
    const found = navLinks.find((el) => el.hash == hash);
    const target = found != undefined ? found : navLinks[0];
    navLinks.forEach(link => link.classList.remove("active"));
    target.classList.add("active");
}