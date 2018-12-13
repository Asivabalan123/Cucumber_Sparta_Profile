Feature: Sparta Profile Confirmation

Scenario: Successfully register with a complete message when finished
Given I access the sparta registration page
And I entered the first name
And I entered the last name
And I entered the age
And I entered the Date of Birth
And I select gender Female
And I entered Degree
And I chosen University
And I entered the city
And I chosen county
And I entered postcode
And I entered email address
And I entered skills
And I entered phone number
And I entered the Linkedin URL
And I can upload a file
And I select stream field SDET
And I select agree to terms and conditions
And I can slide the experince
When I can select the sign in button
Then I receive a confirmation
