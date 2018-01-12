Feature: onliner.by 'Add to cart' functionality

  Scenario: Users adds item to cart
    Given user goes to "https://www.onliner.by/"
    When user searches "Canon EOS 1300D"
    And user opens "Canon EOS 1300D Body" item
    Then users sees screen size is equal to "3 ''"
    And users sees physical-based matrix size is equal to "APS-C (1.6 crop)"
    And users sees quantity-based matrix size is equal to "18 Мп"
    When users adds item to cart
    And users opens cart
    Then users sees item "Canon EOS 1300D Body" is added to cart