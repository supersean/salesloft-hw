describe('Poeple Managment Tests', function() {
  it('loads the index page', function() {
    cy.visit('localhost:5000')
  })
  describe('showing list of people', function() {
    it('can paginate through list of people returned', function() {
      cy.visit('localhost:5000/')
      cy.contains('Next').click()
      cy.contains('currentPage: 2')
    })
  })
  

  describe('Frequency counts', function() {
    it('shows a list of letter frequencies', function() {
      cy.visit('localhost:5000')
      cy.get('.LetterFrequncies')
      cy.contains('Get Letter Frequencies').click()
    })
  })
})