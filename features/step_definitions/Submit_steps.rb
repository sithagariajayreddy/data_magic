Given(/^I am on bergdorfgoodman web$/) do
  submission = Bergdorf.new(@browser)
  submission.open
end


And(/^I select continue button$/) do
  submission = Bergdorf.new(@browser)
  submission.select_continue
end

And(/^I click on view disclosure$/) do
  submission = Bergdorf.new(@browser)
  submission.select_view_disclosure
end

Then(/^I should see Rate and Fee Information$/) do
  xls_parser = ParseXls.new
  sheet_content = xls_parser.get_sheet("Rate and Fee Information").join(" ")
  submission = Bergdorf.new(@browser)
  page_content = submission.rate_and_fee_information
  expect(sheet_content).to include(page_content)
end

Then(/^I should see the correct Electronic Disclosure Consent$/) do
  xls_parser = ParseXls.new
  sheet_content = xls_parser.get_sheet("Electronic").join(" ")
  submission = Bergdorf.new(@browser)
  electronic_page = submission.get_electronic_disclosure
  puts "Actual: #{electronic_page}"
  puts "Expected: #{sheet_content}"
  expect(sheet_content).to include(electronic_page)
end

And(/^I agree to term and conditions$/) do
  submission = Bergdorf.new(@browser)
  submission.i_agree
end

When(/^I provide application information$/) do
  submission = CardSubmission.new(@browser)
  submission.submit_application(data = {})
end