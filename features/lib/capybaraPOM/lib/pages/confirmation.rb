require 'Capybara/dsl'

class Confirmation

  include Capybara::DSL

  attr_reader :completed_url, :confirmation

  def initialize
    @confirmation = "You have successfully registered an account with Sparta Global!"
  end

  SUCCESS_TEXT_FIELD = '.container'

  def current_url
    page.current_url
  end

  def get_confirmation_text
    find(SUCCESS_TEXT_FIELD).text
  end

end
