describe('Poeple Managment Tests', function() {
  it('loads the index page', function() {
    cy.visit('localhost:5000')
  })
  it('can paginate through list of people returned', function() {
    cy.visit('localhost:5000/')
    cy.contains('Next').click()
    cy.contains('currentPage: 2')
  })
})