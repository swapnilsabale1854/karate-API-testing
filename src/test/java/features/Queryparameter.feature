Feature: Get API feature

  Scenario: get user detais]ls with query parameter
    * def query = {status:'active', gender: 'male' ,id: 25}
    Given url baseurl + '/public/v2/users'
    And params query
    When method GET
    Then status 200
    * print response

    Scenario: get user detais]ls with query parameter
    * def query = {status:'active', gender: 'male'}
    Given url baseurl + '/public/v2/users'
    And params query
    When method GET
    Then status 200
    * def jsonresponse = response
    * print jsonresponse
    * def usercount = jsonresponse.length
    * print usercount