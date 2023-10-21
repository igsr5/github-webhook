import express from "express";

const app = express();
const port = process.env.APP_PORT || 3000;

app.get("/ping", (req, res) => {
  res.send("pong");
});

app.listen(port, () => {
  // eslint-disable-next-line no-console
  console.log(`Server running at http://localhost:${port}/`);
});
