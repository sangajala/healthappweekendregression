Feature:Add Patient details
  Background: i navigate to health portal app application and go to Add Patient
    Given	i am on the health portal app home page
    Then	i will be navigated to home page of health portal app
    When	i click on login link
    Then	i will be navigated to login page
    When 	i enter Email as "newtesting@health.com"
    And	    i enter Password as "Testing@123"
    And 	i click on login button
    Then	i should see message as "login successful"

  Scenario:	Verify user can navigate from home page to Add Patient

    Then	i should see Add Patient on Primary navbar

  Scenario:	Verify Add Patient functionality by providing data into all the fields
    Then	i should see Add Patient on Primary navbar
    When	i click on Add Patient on Primary navbar
    Then	i will be navigated to Add Patient page
    When    i enter First Name Last Name Age Contact Number Emergency Contact Number Email Gender DOB Register House Number
    And	    i enter Street City State Post Code
    And 	i click on Submit button
    |First Name|Last Name|Age|Contact Number|Emergency Contact Number|Email|Gender|DOB|Register Number|House Number|Street|City|State|Post Code|
    |eva |adam |65 |07517951955|079143447789 |adameva@gmail.com|Male|01/01/1957|789789|36|Adam Avenue|London|Westminister|W1D 1HQ|

  Scenario:	Verify can submit button enable state from disable state
    Then	i should see Add Patient on Primary navbar
    When	i click on Add Patient on Primary navbar
    Then	i will be navigated to Add Patient page
    When    i enter First Name Last Name Age Contact Number Emergency Contact Number Email Gender DOB Register House Number
    And	    i enter Street City State Post Code
    And 	i enter Email as "newtesting@health.com"
    And	    i enter Password as "Testing@123"
    Then	i should see Submit button from disable to enable state

  Scenario:	Verify pop up window with valid message after Add Patient details
    Then	i should see Add Patient on Primary navbar
    When	i click on Add Patient on Primary navbar
    Then	i will be navigated to Add Patient page
    When    i enter First Name Last Name Age Contact Number Emergency Contact Number Email Gender DOB Register House Number
    And	    i enter Street City State Post Code
    And 	i click on Submit button
    Then	i should see message as "Details added successfully"

  Scenario:	Verify user can Manage Patients details by View,Update and Delete
    Then	i should see Add Patient on Primary navbar
    When	i click on Dashboard on Primary navbar
    Then	i should be able to see Patient details been added
    When	i click on View link on Manage Patients
    Then	i should be able to view already added Patient details
    When	i click on Update link on Manage Patients
    Then	i should be able to Update already added patients details
    When	i click on Delete link on Manage Patients
    Then	i should be able to delete patient details

  Scenario:	Verify user can not Add Patient without entering all the fields
    Then	i should see Add Patient on Primary navbar
    When	i click on Dashboard on Primary navbar
    And     i enter First Name Last Name Age
    And 	i click on Submit button
    Then	i should not be able to click on submit button

  Scenario:	Verify user can Logout
    When	i click on Logout button
    Then	i shoulld be able to logout successfully

  Scenario:	Verify can user update/edit Patients details on Manage Patients
    When	i click on Dashboard on Primary navbar
    Then	i should be able to see Patient details
    When	i click on update link on Manage Patients
    Then	i will be navigated to patient details
    And 	i should be able to see Patient details
    When	i click on submit button
    Then	i should see updated patient details on Manage Patients

  Scenario:	Verify user can delete the patients on Manage Patients
    When	i click on Dashboard on Primary navbar
    Then	i should be able to see Patient details
    When	i click on delete link on Manage Patients
    Then	i should be able to delete patient details successfully



