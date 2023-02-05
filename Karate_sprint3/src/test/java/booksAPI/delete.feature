Feature: Delete

Background: token
	When def token = "1c5c331eb9704950e5c6cd0ce097a5d1c7619168162778e69eda9bf91fbdf723"
	
Scenario: delete order
	Given url "https://simple-books-api.glitch.me/orders"
	And path 'xrX8GAML9bIpn_OWZvl5_'
	And header authorization = 'Bearer ' + token
	When method delete
	Then status 204
	And print response