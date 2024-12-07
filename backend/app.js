const express = require("express");

const app = express();

// Middleware for JSON parsing
app.use(express.json());

module.exports = app;
