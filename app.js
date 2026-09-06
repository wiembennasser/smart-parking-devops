const express = require("express");

const app = express();

const PORT = 3000;

app.get("/", (req, res) => {
  res.send(`
    <h1>🅿️ Smart Parking</h1>
    <h2>Welcome to Smart Parking DevOps Project 🚀</h2>
    <p>Available places: 4 / 4</p>
  `);
});

app.listen(PORT, "0.0.0.0", () => {
  console.log(`Application running on port ${PORT}`);
});