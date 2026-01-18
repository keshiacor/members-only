// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";

document.addEventListener("turbo:load", () => {
  const flashes = document.querySelectorAll(".notice, .alert");

  flashes.forEach((flash) => {
    setTimeout(() => {
      flash.classList.add("flash-hide");

      // Remove from DOM after fade-out finishes
      flash.addEventListener(
        "transitionend",
        () => {
          flash.remove();
        },
        { once: true }
      );
    }, 3000); // 3 seconds before starting fade-out
  });
});
