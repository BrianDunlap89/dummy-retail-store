class HomePage
  include PageObject
  URL = "http://shoestore-manheim.rhcloud.com"

  def open
    $browser.goto(URL)
  end

  def click_month(month)
    $browser.element(:link_text, month).click
  end

  def subscribe_field_exists?
    $browser.element(:id, "remind_email_input").present?
  end

  def input_email(email)
    $browser.text_field(:id, "remind_email_input").set email
  end

  def submit_email
    $browser.element(:xpath, '//input[@type="submit"]').click
  end

  def flash_response
    $browser.element(:class, "flash")
  end
end
