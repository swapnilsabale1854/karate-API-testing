Feature: Get API feature

Scenario: get user deatils
    Given url 'https://gorest.co.in/public/v2/users'
    And path '24'
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * print jsonResponse
    * def actName = jsonResponse.name
    * print actName
    * match actName == "Amb. Sameer Bhattathiri"


Scenario: get user deatils - user not found
    Given url 'https://gorest.co.in/public/v2/users/'
    And path '1'
    When method GET
    Then status 404
