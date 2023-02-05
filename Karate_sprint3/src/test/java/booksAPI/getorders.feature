Feature: Get orders

Background: token
	When def token = "1c5c331eb9704950e5c6cd0ce097a5d1c7619168162778e69eda9bf91fbdf723"
	
Scenario: Get all orders
	Given url 'https://simple-books-api.glitch.me/orders'
	And header authorization = 'Bearer ' + token
	When method get
	Then status 200
	And print response

Scenario: Get an order
	Given url 'https://simple-books-api.glitch.me/orders/'
	And header authorization = 'Bearer ' + token
	And path '4lw8hXm90TfkPk8JbUdqi'
	When method get
	Then status 200
	And print response