let mode = localStorage.getItem("mode") || "bright";
document.querySelectorAll("link")[0].setAttribute("href", `${mode}Styles.css`);


document.getElementById("mode").addEventListener("click", () => {
    mode = mode === "bright" ? "dark" : "bright";
    localStorage.setItem("mode", mode);
    document.querySelectorAll("link")[0].setAttribute("href", `${mode}Styles.css`);
});