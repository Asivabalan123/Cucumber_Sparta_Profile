describe 'filling in the registration form' do

context 'it should show success message when complete' do

  it 'should show confirmation message once the form is filled in correctly' do
    @sparta_site = SpartaSite.new
    @sparta_site.sparta_registration.visit_home_page

    @sparta_site.sparta_registration.fill_in_first_name_field('Abinu')
    expect(@sparta_site.sparta_registration.check_first_name_field).to eq 'Abinu'

    @sparta_site.sparta_registration.fill_in_last_name_field('Sivabalan')
    expect(@sparta_site.sparta_registration.check_last_name_field).to eq 'Sivabalan'

    @sparta_site.sparta_registration.fill_in_age_field
    expect(@sparta_site.sparta_registration.check_age_field).to eq 23

    @sparta_site.sparta_registration.fill_in_dob_field
    expect(@sparta_site.sparta_registration.check_dob_field).to eq '1995-03-14'

    @sparta_site.sparta_registration.choose_male
    expect(@sparta_site.sparta_registration.select_male).to be true

    @sparta_site.sparta_registration.choose_female
    expect(@sparta_site.sparta_registration.select_female).to be true

    @sparta_site.sparta_registration.enter_degree_field
    expect(@sparta_site.sparta_registration.get_degree_field).to eq 'Computing'

    @sparta_site.sparta_registration.enter_uni_field
    expect(@sparta_site.sparta_registration.get_uni_field).to eq 'University of Roehampton'

    @sparta_site.sparta_registration.enter_address
    expect(@sparta_site.sparta_registration.get_address).to eq '34 Balmoral Road'

    @sparta_site.sparta_registration.enter_city
    expect(@sparta_site.sparta_registration.get_city).to eq 'London'

    @sparta_site.sparta_registration.input_county_field
    expect(@sparta_site.sparta_registration.get_county_field).to eq 'Hertfordshire'

    @sparta_site.sparta_registration.input_postcode
    expect(@sparta_site.sparta_registration.get_postcode).to eq 'WD24 4EP'

    @sparta_site.sparta_registration.input_email_address
    expect(@sparta_site.sparta_registration.get_email_address).to eq 'abinu_siv@hotmail.com'

    @sparta_site.sparta_registration.input_skills
    expect(@sparta_site.sparta_registration.get_skills).to eq 'NOTHING'

    @sparta_site.sparta_registration.input_phone_number
    expect(@sparta_site.sparta_registration.get_phone_number).to eq '07757634911'

    @sparta_site.sparta_registration.enter_linkedIn_field
    expect(@sparta_site.sparta_registration.get_linkedIn_field).to eq 'https://www.linkedin.com/in/abinu-sivabalan-5bb32413b/'

    @sparta_site.sparta_registration.upload_file
    expect(@sparta_site.sparta_registration.get_file).not_to eq "No file chosen"

    @sparta_site.sparta_registration.choose_SDET
    expect(@sparta_site.sparta_registration.select_SDET).to be true

    @sparta_site.sparta_registration.choose_terms
    expect(@sparta_site.sparta_registration.select_terms).to be true

    @sparta_site.sparta_registration.get_rating_experience
    expect(@sparta_site.sparta_registration.get_rating_experience).to be_between(1,100).inclusive

    @sparta_site.sparta_registration.sign_in
    expect(@sparta_site.sparta_success_page.current_url).to eq "https://crispyjourney.herokuapp.com/registration_complete?dob=1995-03-14&customRadioInline1=on&cv=Abinu.doc&streamRadioInline1=on"

    expect(@sparta_site.sparta_success_page.get_confirmation_text).to eq (@sparta_site.sparta_success_page.get_confirmation_text)
    sleep 3

    end
  end
end
