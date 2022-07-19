Feature: Get API token feature

  Scenario: pass the user request with header_part 1
    * print tokenID
    Given header Authorization = 'Bearer ' + tokenID
    When url baseurl + '/public/v2/users'
    And path '30'
    When method GET
    Then status 200
