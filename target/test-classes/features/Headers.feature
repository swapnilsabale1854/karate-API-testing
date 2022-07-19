##Different ways to add headers to api
Feature: Get API headers feature

  Scenario: pass the user request with header_part 1
    * configure headers = {Content-Type: 'text/xml;charset=ISO-8859-1',Connection: 'keep-Alive'}
    When url baseurl + '/public/v2/users'
    And path '30'
    When method GET
    Then status 200
    * print response

  Scenario: pass the user request with header_part 2
    * def request_headers = {Content-Type: 'text/xml;charset=ISO-8859-1',Connection: 'keep-Alive'}
    Given headers request_headers
    When url baseurl + '/public/v2/users'
    And path '30'
    When method GET
    Then status 200
    * print response

  Scenario: pass the user request with header_part 3
    Given header Content-Type = 'text/xml;charset=ISO-8859-1'
    And header Connection = 'keep-Alive'
    And header Expect = '100-continue'
    And header Accept-Encoding = 'gzip,deflate'
    
    When url baseurl + '/public/v2/users'
    And path '30'
    When method GET
    Then status 200
    * print response
