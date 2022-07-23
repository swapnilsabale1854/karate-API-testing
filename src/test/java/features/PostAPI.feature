Feature: create user using post API

  Background: 
    * url 'https://gorest.co.in'
    * def requestPayload =
      """
      {
      		
             "name": "Rodger",
             "email": "rodger302@gmail.com",
             "gender": "male",
             "status": "active"
      }
      """

  Scenario: craete a user with the given data
    Given path '/public/v2/users'
    And request requestPayload
    And header Authorization = 'Bearer ' + tokenID
    When method post
    Then status 201
    * print response
    And match $.id == '#present'
    And match $.name == '#present'
    And match $.name == 'Rodger'
