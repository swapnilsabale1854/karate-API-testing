Feature: print hello world feature

  Scenario: hello world scenario
    * print 'hello world'
    * print 'hello swapnil sable'

  Scenario: declare and print variable
    * def balance = 200
    * def fee = 20
    * def tax = 10
    * print 'total amount =>' +(balance+fee+tax)

  Scenario: calculate and print variable
    * def balance = 200
    * def fee = 20
    * def tax = 10
    * print 'total amount =>' +(balance*fee*tax)

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
