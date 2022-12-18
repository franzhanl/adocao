namespace :dev do
  desc "SET USER LOGIN"
  task setup: :environment do
    User.create!(
      email: 'user@user.com',
      password: '123456',
      password_confirmation: '123456'
    )
  end
  desc "!!!DELETE DB!!!"
  task drop: :environment do
    %x(rm -f db/*.sqlite3)
  end

end
