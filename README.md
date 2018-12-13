# Cucumber

A cucumber is a tool based on Behaviour Driven Development (BDD) framework which is used to write acceptance tests for the web application. It allows automation of functional validation in easily readable and understandable format (like plain English) to Business Analysts, Developers, Testers, etc.

A page object model was used for the automation framework, which tested to see if the right error message occurred for invalid inputs for the Sparta registration form and if valid inputs are accepted, for the Sparta in house application: https://crispyjourney.herokuapp.com/.

Cucumber gem was installed: gem install cucumber.

This project starts with the ENV file which includes the models dependencies, configuration and the module included in the world, meaning it can be accessed globally though out this project, then the features are accessed where the scenarios for the Sparta application are written, this is followed by the step definition where the tests are run.
