class Lead < ApplicationRecord

  def valid_email?
    self.email =~ /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i 
  end

end
