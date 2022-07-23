Feature: create user using post API

  Background: 
    * url 'https://gorest.co.in'
    * def random_string =
      """
      function makeid(s) {
      var text = "";
      var possibleLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
      
      
      for (var i = 0; i < s; i++)
      text += possibleLetters.charAt(Math.floor(Math.random() * possibleLetters.length));
      return text;
      }

      """
    * def randomString = random_string(10)
    * print randomString
    * def requestPayload =
      """
      {
      		
             "name": "Rodger",
             "gender": "male",
             "status": "active"
      
      }
      """
    * set requestPayload.email = randomString + "@gmail.com";
    * print requestPayload

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
