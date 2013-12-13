%w(alpha beta gamma).each do |name|
  user = User.new(
    :email => "#{name}@hoge.com",
    :password => "#{name}....",
    :password_confirmation => "#{name}...."
  )
  user.save
  
end