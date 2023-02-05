Feature: Patch 

Background: token
	When def token = "1c5c331eb9704950e5c6cd0ce097a5d1c7619168162778e69eda9bf91fbdf723"

Scenario: update order
	Given url 'https://simple-books-api.glitch.me/orders'
	And path '4lw8hXm90TfkPk8JbUdqi'
	And header authorization = 'Bearer ' + token
	And request {"customerName":"updatedcustomer"}
	When method patch
	Then status 204
	And print response
