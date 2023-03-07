Feature:

  Background:
    * url 'https://petstore.swagger.io/v2/pet/'

  Scenario Outline: get all users and then get the first user by id
    * param status = <petStatus>
    Given path 'findByStatus'
    When method get
    Then status 200

  Examples:
  | petStatus  |
  | 'available'|
  | 'pending'  |
  | 'sold'     |

  Scenario: create a pet

  * def pet =

  """
  {
  "id": 0,
  "category": {
    "id": 0,
    "name": "string"
  },
  "name": "Thapelo",
  "photoUrls": [
    "string"
  ],
  "tags": [
    {
      "id": 0,
      "name": "string"
    }
  ],
  "status": "available"
}
  """

    Given path 'findByStatus'
    And request pet
    When method post
    Then status 201


  #    * def first = response[1]
#
#    Given path 'findByStatus', second.id
#    When method get
#    Then status 200
##
#  Scenario: create a user and then get it by id
#    * def user =
#      """
#      {
#        "name": "Test User",
#        "username": "testuser",
#        "email": "test@user.com",
#        "address": {
#          "street": "Has No Name",
#          "suite": "Apt. 123",
#          "city": "Electri",
#          "zipcode": "54321-6789"
#        }
#      }
#      """
#
#    Given path 'findByStatus'
#    And request user
#    When method post
#    Then status 201
#
#    * def name = response.name
#    * print 'created id is: ', id
#
#    Given path findByStatus
#    # When method get
#    # Then status 200
#    # And match response contains user
