const dotenv = require("dotenv");
dotenv.config();

const express = require("express");

const app = express();

app.get("/", (req, res) => {
  res.send(
    `<h1>${process.env.TITLE},</h2><p>${process.env.DESCRIPTION}</p> <h1>FUNCIONO Ahora 3</h1>`
  );
});

app.get("/guitar", (req, res) => {
  res.send([
    {
      name: "fender",
      model: "stratocaster",
    },
    {
      name: "Gibson",
      model: "Les Paul",
    },
    {
      name: "Gibson",
      model: "SG",
    },
  ]);
});

app.listen(process.env.PORT, () => {
  console.log(`it WORKS!`);
});
