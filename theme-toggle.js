(function () {
  var storageKey = "pascal-theme-mode";
  var root = document.documentElement;

  function readTheme() {
    try {
      var saved = localStorage.getItem(storageKey);
      if (saved === "dark" || saved === "light") {
        return saved;
      }
    } catch (error) {
      return "dark";
    }
    return "dark";
  }

  function writeTheme(theme) {
    root.setAttribute("data-theme", theme);
    try {
      localStorage.setItem(storageKey, theme);
    } catch (error) {
      // The page still works when localStorage is blocked.
    }
  }

  function updateButton(button) {
    var theme = root.getAttribute("data-theme") || readTheme();
    button.textContent = theme === "dark" ? "Mode clair" : "Mode sombre";
    button.setAttribute("aria-label", theme === "dark" ? "Activer le mode clair" : "Activer le mode sombre");
    button.setAttribute("title", theme === "dark" ? "Activer le mode clair" : "Activer le mode sombre");
  }

  function installButton() {
    if (document.querySelector(".theme-toggle-button")) {
      return;
    }

    var button = document.createElement("button");
    button.type = "button";
    button.className = "theme-toggle-button";
    updateButton(button);
    button.addEventListener("click", function () {
      var nextTheme = root.getAttribute("data-theme") === "dark" ? "light" : "dark";
      writeTheme(nextTheme);
      updateButton(button);
    });

    document.body.appendChild(button);
  }

  writeTheme(readTheme());

  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", installButton);
  } else {
    installButton();
  }
}());
