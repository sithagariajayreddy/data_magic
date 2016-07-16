class CardSubmission
    include PageObject
    include DataMagic


    text_field(:first_name, :id => 'firstName')
    text_field(:last_name, :id => 'lastName')
    text_field(:email, :id => 'emailAddress')
    text_field(:address_auto, :id => 'autocomplete')
    text_field(:address1, :id => 'addressLine1')
    text_field(:address2, :id => 'addressLine2')
    text_field(:city, :id => 'addressCity')
    select_list(:state, :id => 'addressState')
    text_field(:zip, :id => 'addressPostalCode')
    text_field(:phone, :id => 'homePhoneNumber')
    text_field(:dob, :id => 'dateOfBirth')
    text_field(:ssn, :id => 'taxId')
    select_list(:rent_or_home, :id => 'housingStatus')
    text_field(:monthly_paymnet, :id => 'monthlyHousingPaymentAmount')
    select_list(:emply_status, :id => 'employmentStatus')
    text_field(:income, :name => 'income')
    select_list(:frequency, :id => 'paidEvery')
    button(:continue, :text => 'Continue')
    text_field(:annual_income, :id => 'annualIncome')


    # def initialize(browser)
    #   @browser = browser
    # end

    def submit_application(data = {}) # HERE WE ARE USING DATA BECAUSE IN FEATURE IF WE WANT TO ADD THE DATA.
      #brand_url = YAML.load(File.open("data_form.yml"))
      DataMagic.yml_directory = 'features/lib/config/data'
      DataMagic.load ("data_form.yml")
      populate_page_with data_for(:Auto_Data, data)
    end
  end