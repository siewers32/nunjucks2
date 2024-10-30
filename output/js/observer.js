// script.js
document.addEventListener("DOMContentLoaded", () => {
    const sections = document.querySelectorAll("section");
    const navLinks = document.querySelectorAll(".nav-link");

    const observerOptions = {
        root: null,          // Observe binnen het viewport
        threshold: 0.5       // 50% van het element moet in beeld zijn
    };

    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            const targetId = entry.target.getAttribute("id");
            const link = document.querySelector(`.nav-link[href="#${targetId}"]`);

            if (entry.isIntersecting) {
                link.classList.add("active");
            } else {
                link.classList.remove("active");
            }
        });
    }, observerOptions);

    sections.forEach(section => observer.observe(section));
});
