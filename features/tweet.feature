Feature: Post Tweet
    In order to post tweet
    A user
    Should post tweet using new tweet form
    
    Scenario: Posts a tweet successfully
      Given I am on the index page
      And I fill in "Name" box with "ThomasBaird"
      And I fill in "TweetBody" box with "This is a test Post"
      When I press "Tweet It"
      Then Page shows message "Tweet Successfully Posted!"
      
    Scenario: Posts a tweet invalidly
      Given I am on the index page
      And I fill in "Name" box with "ThomasBaird"
      And I fill in "TweetBody" box with ""
      When I press "Tweet It"
      Then Page shows message "Tweet not posted! Make sure your tweet has a body"