Feature: create user using post API

  Background: 
    * url 'https://gorest.co.in'
    * def requestPayload =
      """
      {
      		
             "name": "Rodger",
             "email": "rodger3@gmail.com",
             "gender": "male",
             "status": "active"
      }
      """

  Scenario: craete a user with the given data
    Given path '/public/v2/102'
    And request requestPayload
    And header Authorization = 'Bearer ' + tokenID
    When method post
    Then status 404
    * print response
    And match $.id == '#present'
    And match $.name == '#present'
    And match $.name == 'Rodger'
