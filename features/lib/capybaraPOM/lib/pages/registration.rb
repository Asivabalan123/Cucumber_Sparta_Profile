require 'capybara/dsl'

class Registration
  include Capybara::DSL

  attr_accessor :invalid_username, :invalid_lastname, :invalid_age, :invalid_address, :invalid_email, :invalid_phone_number

  def initialize
    @invalid_username = "Please enter your first name."
    @invalid_lastname = "Please enter your last name."
    @invalid_age = "Please enter your age."
    @invalid_address = "Please enter an address."
    @invalid_email = "Please enter an email."
    @invalid_phone_number = "Please enter a phone number."
  end
  #Constants-immutable
  HOMEPAGE_URL = 'https://crispyjourney.herokuapp.com/'
  FIRST_NAME_FIELD_ID = "firstName"
  LAST_NAME_FIELD_ID = "lastName"
  AGE_FIELD_TYPE = 'input[type="number"]'
  DOB_FIELD_ID = 'dob'
  MALE_FIELD= 'label[for="customRadioInline1"]'
  MALE_FIELD_ID= 'input[id="customRadioInline1"]'
  FEMALE_FIELD = 'label[for="customRadioInline2"]'
  FEMALE_FIELD_ID = "input[id='customRadioInline2']"
  DEGREE_FIELD = 'input[placeholder="Enter Degree"]'
  UNI_DROPDOWN_ID = 'inputUni'
  ADDRESS_FIELD = 'input[placeholder="1234 Main St"]'
  CITY_FIELD_ID = 'inputCity'
  COUNTY_FIELD = 'inputCounty'
  POSTCODE_FIELD_ID = 'inputPostcode'
  EMAIL_FIELD_ID = 'inputemailaddress'
  SKILLS_FIELD_ID = 'exampleFormControlTextarea1'
  PHONE_NUMBER_FIELD_ID = 'exampleFormControlInput1'
  LINKEDIN_FIELD = 'input[type="url"]'
  UPLOAD_FILE = 'input[type="file"]'
  SDET_FIELD_ID = "#streamRadioInline1"
  SDET_FIELD = 'label[for="streamRadioInline1"]'
  TERMS_FIELD_ID = '#terms'
  RATE_SLIDER_ID = '#value_for_slider'
  SUBMIT_ID = 'button[type="submit"]'

  def visit_home_page
    visit(HOMEPAGE_URL)
  end

  def fill_in_first_name_field(name)
    fill_in(FIRST_NAME_FIELD_ID, :with => name)
  end

  def check_first_name_field
    find_field(FIRST_NAME_FIELD_ID).value
  end

  def fill_in_last_name_field(name)
    fill_in(LAST_NAME_FIELD_ID, :with => name)
  end

  def check_last_name_field
    find_field(LAST_NAME_FIELD_ID).value
  end

  def fill_in_age_field
    find(AGE_FIELD_TYPE).set 23
  end

  def check_age_field
    find(AGE_FIELD_TYPE).value.to_i
  end

  def fill_in_dob_field
    fill_in(DOB_FIELD_ID, :with => '14/03/1995')
  end

  def check_dob_field
    find_field(DOB_FIELD_ID).value
  end

  def choose_male
    find(MALE_FIELD).click
  end

  def select_male
    find(MALE_FIELD_ID).selected?
  end

  def choose_female
    find(FEMALE_FIELD).click
  end

  def select_female
    find(FEMALE_FIELD_ID).selected?
  end

  def enter_degree_field
    find(DEGREE_FIELD).send_keys('Computing')
  end

  def get_degree_field
    find(DEGREE_FIELD).value
  end

  def enter_uni_field
    select('University of Roehampton', :from => UNI_DROPDOWN_ID)
  end

  def get_uni_field
    find_field(UNI_DROPDOWN_ID).value
  end

  def enter_address
    find(ADDRESS_FIELD).send_keys('34 Balmoral Road')
  end

  def get_address
    find(ADDRESS_FIELD).value
  end

  def enter_city
    fill_in(CITY_FIELD_ID, :with =>'London')
  end

  def get_city
    find_field(CITY_FIELD_ID).value
  end

  def input_county_field
    select('Hertfordshire', :from => COUNTY_FIELD)
  end

  def get_county_field
    find_field(COUNTY_FIELD).value
  end

  def input_postcode
    fill_in(POSTCODE_FIELD_ID, :with =>'WD24 4EP')
  end

  def get_postcode
    find_field(POSTCODE_FIELD_ID).value
  end

  def input_email_address
    fill_in(EMAIL_FIELD_ID, :with =>'abinu_siv@hotmail.com')
  end

  def get_email_address
    find_field(EMAIL_FIELD_ID).value
  end

  def input_skills
    fill_in(SKILLS_FIELD_ID, :with =>'NOTHING')
  end

  def get_skills
    find_field(SKILLS_FIELD_ID).value
  end

  def input_phone_number
    fill_in(PHONE_NUMBER_FIELD_ID, :with =>'07757634911')
  end

  def get_phone_number
    find_field(PHONE_NUMBER_FIELD_ID).value
  end

  def enter_linkedIn_field
    find(LINKEDIN_FIELD).send_keys('https://www.linkedin.com/in/abinu-sivabalan-5bb32413b/')
  end

  def get_linkedIn_field
    find(LINKEDIN_FIELD).value
  end

  def upload_file
    find(UPLOAD_FILE).send_keys('C:\Users\Tech-W106\Abinu.doc')
  end

  def get_file
    find(UPLOAD_FILE).value
  end

  def choose_SDET
    find(SDET_FIELD).click
  end

  def select_SDET
    find(SDET_FIELD_ID).selected?
  end

  def choose_terms
    find(TERMS_FIELD_ID).click
  end

  def select_terms
    find(TERMS_FIELD_ID).selected?
  end

  def get_rating_experience
    find(RATE_SLIDER_ID).text.to_i
  end

  def sign_in
    find(SUBMIT_ID).click
  end

  def get_error_message_username
    find(:xpath, '/html/body/div/form/div[1]/div/div').text
  end

  def get_error_message_lastname
    find(:xpath, '/html/body/div/form/div[2]/div/div').text
  end

  def get_error_message_age
    find(:xpath, '/html/body/div/form/div[3]/div/div').text
  end

  def get_error_message_address
    find(:xpath, '/html/body/div/form/div[9]/div').text
  end

  def get_error_message_email
    find(:xpath, '/html/body/div/form/div[14]/div/div').text
  end

  def get_error_message_phone_number
    find(:xpath,'/html/body/div/form/div[16]/div/div').text
  end
end
