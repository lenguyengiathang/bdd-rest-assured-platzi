Feature: Get/Update/Create products

    Scenario: Get all products
        Given the base url is "baseUrl"
        And the endpoint is "endpoint"
        When the method is "method"
        Then the response code should be "responseCode"
        And the response should contain all products

    Scenario: Get a single product
        Given the base url is "baseUrl"
        And the endpoint is "endpoint"
        When the method is "method"
        Then the response code should be "responseCode"
        And the response should contain the id "id", title "title", and price "price" of the product
        And the category id and name of the product should be "categoryId" and "categoryName"

    Scenario Outline: Create a product
        Given the base url is "baseUrl"
        And the endpoint is "endpoint"
        And the payload with <title>, <price>, <description>, <categoryId>, and <images>
        When the method is "method"
        Then the response code should be "responseCode"
        And a new product should be created with title "title" and price "price"
        And the category id and name of the product should be "categoryId" and "categoryName"

            | title | price | description              | categoryId | images |
            | 10    | 550   | This is the 10th product | Others     |        |

