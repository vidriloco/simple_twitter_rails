Feature: User wants to make use of the application
  In order for me as a user to make use of the application
  Twitter has to allow me to access it
  
  Background: As a user I get redirected to the Twitter authentication page cause I'm not logged in yet
    When I go to the welcome page
    Then I should be on the root page
    When I follow "login" within "#session"
    Then I should be on the authentication page
    When I fill in "username_or_email" with "twitxchange" within "#signin_form" 
    When I fill in "session[password]" with "xchange" within "#signin_form" 
    When I press "Sign in" within "#signin_form"
    # here this corresponds to /main#welcome
    Then I should be on the root page
     
  Scenario: As a logged in user I eventually can logout
    Given I am on the welcome page
    When I follow "logout" within "#session"
    # here this corresponds to /main#index
    Then I should be on the root page

