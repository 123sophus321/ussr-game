module ValidateName

  def validate!(name)

    attempt = 0
    if name.length < 2
      raise "name should be at least 2 symbols "
    else
      self.name
    end
  rescue RuntimeError
    attempt += 1
    retry if attempt < 3
    true
  end
  private
  attr_accessor :name
end