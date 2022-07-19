

Feature: Get the details of User 2
	Background : Set url
		
		
Scenario: Get the details of User 2
		Given Path "https://reqres.in/api/user/2"
		When Method GET
		Then Status 200
		