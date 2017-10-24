class Bergdorf
  include PageObject
  include Configuration


  def initialize(browser)
    @browser = browser
  end

  # def get_base_url(section ='', brand='')
  #   section = 'web' if section ==''
  #   brand = 'bergdorfgoodman' if brand ==''
  #   home_page = BrandUrl.new
  #   base_url = home_page.get_url(section, brand)
  #   base_url
  # end
  #
  # # @param [Object] section which section url req from yml
  # # @param [Object] brand which brand url req from yml
  # def open(section ='', brand='')
  #   base_url = self.get_base_url(section, brand)
  #   @browser.goto(base_url)
  # end

  def open
    @browser.goto("xxxx")
  end

  def select_continue
    wait_for_some_time 2
    self.continue_submit_button.click
    wait_for_some_time 2
  end

  def select_view_disclosure
    wait_for_some_time 2
    self.click_on_view_disclosure
  end

  def rate_and_fee_information
    wait_for_some_time 2
    self.important_information
  end

  def get_show_frequency
    self.show_frequency.click
    wait_for_some_time 2
  end

 def  get_electronic_disclosure
   wait_for_some_time 3
   self.electronic_disclosure.text
 end

  def i_agree
    wait_for_some_time 2
    self.agree_check_box.click
  end






###########################################################Locators###########################################################


  def continue_submit_button
    wait_for_some_time
    @browser.element(id: "apply-continue")
  end

  def click_on_view_disclosure
    @browser.element(css: "section.terms rate-fee-short container div.button-group button.left")
  end

  def important_information
   # @browser.element(css: "div#modal.outer-container drawer.large-12.columns div.row.ng-scope.open h3.p")
    @browser.div(:xpath => "//*[@id='inside-rate-fee-short']/div/ng-transclude/article/section/div/div/div[2]").button(:xpath => "//*[@id='inside-rate-fee-short']/div/ng-transclude/article/section/div/div/div[2]/button").focus
    @browser.div(:xpath => "//*[@id='inside-rate-fee-short']/div/ng-transclude/article/section/div/div/div[2]").button(:xpath => "//*[@id='inside-rate-fee-short']/div/ng-transclude/article/section/div/div/div[2]/button").click
    @browser.element(xpath: "//*[@id='modal-inner-container']").element(:xpath => "//*[@id='inside-rate-fee']/div/ng-transclude/article/section/div/div/div[1]/div/div[3]/p[7]").text
  end

  def show_frequency
    @browser.element(css: "div.ng-scope div.large-4.medium-5.small-8.incomeToggle a.ng-binding")
  end

  def agree_check_box
    @browser.element(css: 'checkbox#agree-check')
    #@browser.button(css: 'button#verify-submit.progressive.right').click
  end

  def electronic_disclosure
    @browser.element(css: "drawer.ng-isolate-scope[content-key = 'electronic-info']")
  end

end
