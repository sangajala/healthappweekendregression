Feature:	Register as new patient

  Background:i navigate to health portal app application and go to register page
    Given	i am on the home page of health portal app
    Then	i will be navigated to home page
    When 	i click register link on the health portal app
    Then	i will be navigated register page
  Scenario:	Verify register functionality by entering data into all fields

    When	i enter First Name Last Name Email Password
            |First Name|Last Name|Email|Password|
            |new|testing|newtesting@health.com|Testing@123|
    And	    i click on register button
    Then	i should see register confirmation message "Hi newtesting,registration is successful, please login"


  Scenario:	Verify user can login through register link using Already registered on Login link

    When	i click on Already Registered? Login link
    Then	i should see another window to login
    When    i enter valid Email and Password
    Then	i should see register confirmation message "Hi newtesting,registration is successful, please login"

  Scenario:	Verify register functionality by not entering data into all fields

    When i click register button
    Then i should see error message as "First name is required"
    And	 i should see error message as "Last name is required"
    And  i should see error message as "Email is required"
    And	 i should see error message as "Password is required"
    And  i should not be registered successfully

  Scenario:	Verify user can not register as email already exist

    When 	i enter First Name Last Name Email Password
    And 	i click on register button
    Then	i should see register confirmation message "Email exists already"

