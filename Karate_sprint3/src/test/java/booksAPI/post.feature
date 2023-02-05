Feature: BookAPI Post

Background: token
		When def token = "1c5c331eb9704950e5c6cd0ce097a5d1c7619168162778e69eda9bf91fbdf723"

Scenario: submit an order
	Given url 'https://simple-books-api.glitch.me/orders'
	And header authorization = 'Bearer ' + token
	And request {"bookId":1,"customerName":"test1"}
	When method post
	Then status 201
	And print response
	
	