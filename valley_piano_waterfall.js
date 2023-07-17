// Global variables

let name = "Breaking Barriers";
let website = "www.breakingbarriers.com";
let color = "#00B9FF";

// Helper functions

function showMessage(message) {
  console.log(message);
}

function showName() {
  const message = `Welcome to ${name}!`;

  showMessage(message);
}

// Main functions

function init() {
  showName();
}

function app() {
  showMessage("Let's get started!");
  init();
}

// Event listeners

window.onload = app;

// CSS

document.body.style.backgroundColor = color;

// HTML

let html = `<h1>${name}</h1>`;
html += `<a href="${website}">Visit our website!</a>`;

document.body.innerHTML = html;

// Document title

document.title = name;