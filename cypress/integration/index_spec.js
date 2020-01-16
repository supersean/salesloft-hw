describe('Poeple Managment Tests', function() {
  it('loads the index page', function() {
    cy.visit('localhost:5000')
  })
  describe('showing list of people', function() {
    it('can paginate through list of people returned', function() {
      cy.visit('localhost:5000/')
      cy.contains('Next').click()
      cy.contains('Page: 2')
    })
  })
  
  // these dont seem to work very well
  describe('Frequency counts', function() {
    it('shows a list of letter frequencies', function() {
      cy.visit('localhost:5000')
      cy.get('.LetterFrequncies')
      cy.contains('Get Letter Frequencies').click()
      cy.get('.LetterFrequencies tbody ').should('not.have.length', 0)
    })
  })

  describe('Duplicates', function() {
    it('shows a list of possible duplicates', function() {
      cy.visit('localhost:5000')
      cy.get('.Duplicates')
      cy.contains('Get Duplicates').click()
      cy.get('.Duplicates tbody').should('not.have.length', 0)
    })
  })
})