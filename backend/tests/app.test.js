const request = require("supertest");
const app = require("../app");

describe("Initial Test", () => {
    it("should respond with 404 for unknown routes", async () => {
        const response = await request(app).get("/unknown");
        expect(response.status).toBe(404);
    });
});