class TemperatureConverter

private
  def initialize temperature
    @temperature = temperature.to_f
  end

public
  def celsius
      @temperature
  end

  def fahrenheit
      @temperature * 1.8 + 32
  end

  def kelvin
      @temperature + 273.15
  end

  def to_text
    %Q(
    Temperature:
      #{celsius}  °C
      #{fahrenheit}  °F
      #{kelvin}  K)
  end

  def to_json
      %Q(
      {Celsius: #{celsius}, fahrenheit: #{fahrenheit}, kelvin: #{kelvin}})
  end

  def to_html
      %Q(
      <div>
        <div>#{celsius} °C</div>
        <div>#{fahrenheit} °F</div>
        <div>#{kelvin}.to_s K</div>
      </div>)
  end

end
