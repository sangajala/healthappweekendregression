Feature:Add Patient details

  Background: i navigate to health portal app application and go to Add Patient

    Given user is logged in to the portal

  Scenario:    Verify user can navigate from home page to Add Patient

    When he navigate "Add patient" page
    Then he should see "Add Patient details" header is shown

  Scenario:    Verify Add Patient functionality by providing data into all the fields
    When he navigate "Add patient" page
    When he created patient with "<First Name>", "<Last Name>", "<Age>" Contact Number Emergency Contact Number Email Gender DOB Register House Number
    Then the patient should created successfully
      | First Name | Last Name | Age | Contact Number | Emergency Contact Number | Email             | Gender | DOB        | Register Number | House Number | Street      | City   | State        | Post Code |
      | sriram     | adam      | 65  | 07517951955    | 079143447789             | adameva@gmail.com | Male   | 01/01/1957 | 789789          | 36           | Adam Avenue | London | Westminister | W1D 1HQ   |


  Scenario:    Verify user can Manage Patients details by View,Update and Delete
    When admin view the patient with name "Sriram"
    Then    i should be able to view already added Patient details
    When admin edit the patient with name "Sriram"
    Then    i should be able to Update patients details
    When admin delete the patient with name "Sriram"
    Then    i should be able to delete patient details

  Scenario:    Verify user can not Add Patient without entering all the fields
    When he navigate "Add patient" page
    When he created patient with "<First Name>", "<Last Name>", "<Age>" Contact Number Emergency Contact Number Email Gender DOB Register House Number
    Then the patient should not created successfully
      | Error                | First Name | Last Name | Age | Contact Number | Emergency Contact Number | Email             | Gender | DOB        | Register Number | House Number | Street      | City   | State        | Post Code |
      | Please enter pateint | sriram     | adam      |     | 07517951955    | 079143447789             | adameva@gmail.com | Male   | 01/01/1957 | 789789          | 36           | Adam Avenue | London | Westminister | W1D 1HQ   |


  Scenario:    Verify user can Logout
    When    i click on Logout button
    Then    i shoulld be able to logout successfully





