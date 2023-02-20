
describe("Visits detailed product page", () => {
  it("should visit the Jungle App homepage", () => {
    cy.visit('http://0.0.0.0:3000');
  })

  it("should select the first product displayed on the homepage", () => {
    cy.get(".products article")
    .should("be.visible")
    .first().click();
  })
})