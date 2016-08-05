module ContactInfo
  attr_accessor :first_name, :last_name, :city, :state, :zip_code

  def full_name
    return @first_name + " " + @last_name
  end

  def city_state_zip
    address = @city
    address += ", #{@state}" if @state
    address += "  #{@zip_code}" if @zip_code
    return address
  end
end