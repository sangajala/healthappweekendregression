Feature:	Login to health portal app
  Background:i navigate to health portal app application and go to login page

    Given	i am on the health portal app home page
    Then	i will be navigated to home page of health portal app
    When	i click on login link on the health portal app
    Then	i will be navigated to login page of health portal app
  Scenario	Verify user can login with valid credentials

    When	i enter email as "newtesting@health.com"
    And   	i enter password as "Testing@123"
    And	    i click on login button
    Then    i should be logged in successfully
    And 	i should see login message as "login successful"

  Scenario	Verify user can login with invalid credentials
    When	i enter email as "user10@health.com"
    And	    i enter password as "password123"
    And  	i click on login button
    Then    i should not be logged in successfully
    And 	i should see login message as "No User Exists With That Email"

  Scenario	Verify forgot password functionality and reset password
    When	i enter email as "newtesting@health.com"
    And	    i enter password as "password123"
    And	    i click on login link on the health portal app
    Then    i should not be logged in successfully
    And 	i should see login message as "Wrong Password"
    When	i click on login link on the health portal app
    Then	i should see another window to reset password
    When	i enter valid email as "newtesting@health.com"
    And 	i click on reset button
    Then	i should see valid message as "Reset password link is sent"

  Scenario	Verify login functionality without providing email and password

    When	i click on login button on the health portal app
    Then	i should see valid message as "No User Exists with that Email"

  Scenario	Verify login functionality with providing  invalid email and valid password
    When	i enter email as "newtesting1@health.com"
    And	    i enter password as "Testing@123"
    And	    i click on login link on the health portal app
    Then	i should see valid message as "No User Exists with that Email"