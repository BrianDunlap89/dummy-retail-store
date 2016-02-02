class MonthPage
  include PageObject

  def shoes_exist?
    self.get_shoes.count >= 1
  end

  def prices_exist?
    self.verify_element("shoe_price", :text)
  end

  def prices_valid?
    prices = $browser.elements(:class, "shoe_price")
    prices.all? do |price|
      price.text.gsub(/[^\d\.]/, "").to_f != 0.0
    end
  end

  def blurbs_exist?
    self.verify_element("shoe_description", :text)
  end

  def images_exist?
    self.get_images.all? do |image|
      image.loaded? && image.src != ""
    end
  end

  def images_valid?
    self.get_images.all? do |image|
      extension = image.src.chars.last(3).join
      /[jpg\z][png\z][gif\z]/ === extension
    end
  end

  protected

  def get_shoes
    results = $browser.elements(:class, "shoe_result")
  end

  def get_images
    containers = $browser.elements(:class, "shoe_image")
    images = []
    containers.each do |container|
      images.push(container.img)
    end
    images
  end

  def verify_element(klass, attribute)
    self.get_shoes.all? do |shoe|
      element = shoe.element(:class, klass)
      element.send(attribute).is_a?(String) && element != ""
    end
  end
end