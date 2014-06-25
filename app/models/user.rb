class User < ActiveRecord::Base

  has_secure_password

  # 1. You have a string column named password_digest
  # 2. You get methods named :password and :password=
  # 3. You agree to use bcrypt as the algorithm
  # 4. You get an authenticat() method to test passwords

  # Challenge:

  # Build a sign-in form to let users try to sign in.
  # If they sign in, redirect them to the home page.
  # Otherwise redisplay the sign-in form with an appropriate
  # error message.


end
