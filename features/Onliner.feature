Feature: onliner.by 'Add to cart' functionality

  Scenario: A user adds item to cart
    Given user goes to "https://www.onliner.by/"
    When user searches "Canon EOS 1300D"
    And user opens "Canon EOS 1300D Body" item
    Then user sees screen size is equal to "3 ''"
    And user sees physical-based matrix size is equal to "APS-C (1.6 crop)"
    And user sees quantity-based matrix size is equal to "18 Мп"
    When user adds item to cart
    And user opens cart
    Then user sees item "Canon EOS 1300D Body" is added to cart