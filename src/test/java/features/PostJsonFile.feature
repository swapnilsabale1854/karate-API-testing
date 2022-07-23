Feature: create new user using post API

  Background: 
    * url 'https://gorest.co.in'
    * def requestPayload = read('file:src/test/resources/payload/user.json')

  Scenario: create a user with the given data
    Given path '/public/v2/users'
    And request requestPayload
    And header Authorization = 'Bearer ' + tokenID
    When method post
    Then status 201
    * print response
    And match $.id == '#present'
    And match $.name == '#present'
    And match $.name == 'Rodger'
