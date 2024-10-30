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
            console.log(targetId)
            const link = document.querySelector(`.nav-link[href="#${targetId}"]`);

            if (entry.isIntersecting) {
                link.classList.add("active");
            } else {
                console.log(entry);
                console.log(link);
                (link.classList.contains("active"))?link.classList.remove("active"):false;
            }
        });
    }, observerOptions);

    sections.forEach(section => observer.observe(section));
});
