Given("I access the sparta registration page") do
  sparta_registration.visit_home_page
end

Given("I entered the first name") do
  sparta_registration.fill_in_first_name_field('Abinu')
end

Given("I entered the last name") do
  sparta_registration.fill_in_last_name_field('Sivabalan')
end

Given("I entered the age") do
  sparta_registration.fill_in_age_field
end

Given("I entered the Date of Birth") do
  sparta_registration.fill_in_dob_field
end

Given("I select gender Female") do
  sparta_registration.choose_female
end

Given("I entered Degree") do
  sparta_registration.enter_degree_field
end

Given("I chosen University") do
  sparta_registration.enter_uni_field
end

Given("I entered the city") do
  sparta_registration.enter_city
end

Given("I chosen county") do
  sparta_registration.input_county_field
end

Given("I entered postcode") do
  sparta_registration.input_postcode
end

Given("I entered email address") do
  sparta_registration.input_email_address
end

Given("I entered skills") do
  sparta_registration.input_skills
end

Given("I entered phone number") do
  sparta_registration.input_phone_number
end

Given("I entered the Linkedin URL") do
  sparta_registration.enter_linkedIn_field
end

Given("I can upload a file") do
  sparta_registration.upload_file
end

Given("I select stream field SDET") do
  sparta_registration.choose_SDET
end

Given("I select agree to terms and conditions") do
  sparta_registration.choose_terms
end

Given("I can slide the experince") do
  sparta_registration.get_rating_experience
end

When("I can select the sign in button") do
  sparta_registration.sign_in
end

Then("I receive a confirmation") do
  expect(sparta_success_page.get_confirmation_text).to eq sparta_success_page.get_confirmation_text
end
