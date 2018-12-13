Given("I access the sparta registration page") do
  sparta_registration.visit_home_page
end

And("I entered the first name") do
  sparta_registration.fill_in_first_name_field('Abinu')
  expect(sparta_registration.check_first_name_field).to eq 'Abinu'
end

And("I entered the last name") do
  sparta_registration.fill_in_last_name_field('Sivabalan')
  expect(sparta_registration.check_last_name_field).to eq 'Sivabalan'
end

And("I entered the age") do
  sparta_registration.fill_in_age_field
  expect(sparta_registration.check_age_field).to eq 23
end

And("I entered the Date of Birth") do
  sparta_registration.fill_in_dob_field
  expect(sparta_registration.check_dob_field).to eq '1995-03-14'
end

And("I select gender Female") do
  sparta_registration.choose_female
  expect(sparta_registration.select_female).to be true
end

And("I entered Degree") do
  sparta_registration.enter_degree_field
  expect(sparta_registration.get_degree_field).to eq 'Computing'
end

And("I chosen University") do
  sparta_registration.enter_uni_field
  expect(sparta_registration.get_uni_field).to eq 'University of Roehampton'
end

And("I enter address") do
  sparta_registration.enter_address
  expect(sparta_registration.get_address).to eq '34 Balmoral Road'
end

And("I entered the city") do
  sparta_registration.enter_city
  expect(sparta_registration.get_city).to eq 'London'
end

And("I chosen county") do
  sparta_registration.input_county_field
  expect(sparta_registration.get_county_field).to eq 'Hertfordshire'
end

And("I entered postcode") do
  sparta_registration.input_postcode
  expect(sparta_registration.get_postcode).to eq 'WD24 4EP'
end

And("I entered email address") do
  sparta_registration.input_email_address
  expect(sparta_registration.get_email_address).to eq 'abinu_siv@hotmail.com'
end

And("I entered skills") do
  sparta_registration.input_skills
  expect(sparta_registration.get_skills).to eq 'NOTHING'
end

And("I entered phone number") do
  sparta_registration.input_phone_number
  expect(sparta_registration.get_phone_number).to eq '07757634911'
end

And("I entered the Linkedin URL") do
  sparta_registration.enter_linkedIn_field
  expect(sparta_registration.get_linkedIn_field).to eq 'https://www.linkedin.com/in/abinu-sivabalan-5bb32413b/'
end

And("I can upload a file") do
  sparta_registration.upload_file
  expect(sparta_registration.get_file).not_to eq "No file chosen"
end

And("I select stream field SDET") do
  sparta_registration.choose_SDET
  expect(sparta_registration.select_SDET).to be true
end

And("I select agree to terms and conditions") do
  sparta_registration.choose_terms
  expect(sparta_registration.select_terms).to be true
end

And("I can slide the experince") do
  sparta_registration.get_rating_experience
  expect(sparta_registration.get_rating_experience).to be_between(1,100).inclusive
end

When("I can select the sign in button") do
  sparta_registration.sign_in
end

Then("I receive a confirmation") do
  expect(sparta_success_page.get_confirmation_text).to eq  (sparta_success_page.get_confirmation_text)
end

Given("I fill in all the fields correctly") do

  sparta_registration.fill_in_first_name_field('Abinu')
  expect(sparta_registration.check_first_name_field).to eq 'Abinu'

  sparta_registration.fill_in_last_name_field('Sivabalan')
  expect(sparta_registration.check_last_name_field).to eq 'Sivabalan'

  sparta_registration.fill_in_age_field
  expect(sparta_registration.check_age_field).to eq 23

  sparta_registration.fill_in_dob_field
  expect(sparta_registration.check_dob_field).to eq '1995-03-14'

  sparta_registration.choose_female
  expect(sparta_registration.select_female).to be true

  sparta_registration.enter_degree_field
  expect(sparta_registration.get_degree_field).to eq 'Computing'

  sparta_registration.enter_uni_field
  expect(sparta_registration.get_uni_field).to eq 'University of Roehampton'

  sparta_registration.enter_address
  expect(sparta_registration.get_address).to eq '34 Balmoral Road'

  sparta_registration.enter_city
  expect(sparta_registration.get_city).to eq 'London'

  sparta_registration.input_county_field
  expect(sparta_registration.get_county_field).to eq 'Hertfordshire'

  sparta_registration.input_postcode
  expect(sparta_registration.get_postcode).to eq 'WD24 4EP'

  sparta_registration.input_email_address
  expect(sparta_registration.get_email_address).to eq 'abinu_siv@hotmail.com'

  sparta_registration.input_skills
  expect(sparta_registration.get_skills).to eq 'NOTHING'

  sparta_registration.input_phone_number
  expect(sparta_registration.get_phone_number).to eq '07757634911'

  sparta_registration.enter_linkedIn_field
  expect(sparta_registration.get_linkedIn_field).to eq 'https://www.linkedin.com/in/abinu-sivabalan-5bb32413b/'

  sparta_registration.upload_file
  expect(sparta_registration.get_file).not_to eq "No file chosen"

  sparta_registration.choose_SDET
  expect(sparta_registration.select_SDET).to be true

  sparta_registration.choose_terms
  expect(sparta_registration.select_terms).to be true

  sparta_registration.get_rating_experience
  expect(sparta_registration.get_rating_experience).to be_between(1,100).inclusive
  
end

Then("I recieve an error message") do
  expect(sparta_registration.get_error_message_username).to eq(sparta_registration.invalid_username)
  expect(sparta_registration.get_error_message_lastname).to eq(sparta_registration.invalid_lastname)
  expect(sparta_registration.get_error_message_age).to eq(sparta_registration.invalid_age)
  expect(sparta_registration.get_error_message_address).to eq(sparta_registration.invalid_address)
  expect(sparta_registration.get_error_message_email).to eq(sparta_registration.invalid_email)
  expect(sparta_registration.get_error_message_phone_number).to eq(sparta_registration.invalid_phone_number)
end
