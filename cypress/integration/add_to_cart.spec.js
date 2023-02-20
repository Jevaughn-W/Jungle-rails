describe('Cart', () => {
  it('Visits the jungle app homepage', () =>{
    cy.visit('http://0.0.0.0:3000');
  });

  it("Select the first product on the show page and clicks the product", () => {
    cy.get(".products article").should("be.visible")
    .first()
    .click();
  });

  it("Should click the add to cart button and open the cart to view the item added", () => {
    
    cy.get("li")
    .contains("My Cart")
    .contains("0").should("exist");

    cy.get(".btn")
    .click();
    
    cy.get("li")
    .contains("My Cart")
    .contains("0").should("not.exist");


  });

});