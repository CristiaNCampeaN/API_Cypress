Feature: Test RESTFUL API services

  Scenario: Validate listing a user in a specific page
    Given I initiate a "GET" request with the following data
      | key         | value                      |
      | uri         | users?page=2               |
      | resp_data   | page:2,per_page:6,total:12 |
    Then the page status code is "200"

  Scenario: Validate a creation of a single user
    Given I initiate a "POST" request with the following data
      | key         | value                                       |
      | uri         | users/2                                     |
      | req_body    | {"name": "morpheus","job": "zion resident"} |
    Then the page status code is "201"

  Scenario: Validate a put request for a single user
    Given I initiate a "PUT" request with the following data
      | key         | value                                       |
      | uri         | users/2                                     |
      | req_body    | {"name": "morpheus","job": "zion resident"} |
    Then the page status code is "200"

  Scenario: Validate a patch request for a single user
    Given I initiate a "PATCH" request with the following data
      | key         | value                                       |
      | uri         | users/2                                     |
      | req_body    | {"name": "morpheus","job": "zion resident"} |
    Then the page status code is "200"

  Scenario: Validate deleting a single user
    Given I initiate a "DELETE" request with the following data
      | key         | value   |
      | uri         | users/2 |
    Then the page status code is "204"
