Feature: Get Books

Background: url and token
	Given url 'https://simple-books-api.glitch.me'
	
Scenario: verify status
	And path '/status'
	When method Get
	Then status 200
	And print response
	
Scenario: verify list of books
	And path '/books'
	When method Get
	Then status 200
	And print response
	
Scenario: verify get a single book
	And path '/books/1'
	When method Get
	Then status 200
	And print response

	