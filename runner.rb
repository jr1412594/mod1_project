require_relative 'config/environment'
cli = Cli.new
cli.start


# binding.pry













# INSTRUCTIONS FOR WHAT I HAVE SO FAR:
# 1.run bundle install to lock the gem file
# 2.rake db:seed
#
# Type your name Cli thing, THEN you should hit a pry.
#
# If you want to see all the dogs, run 'ruby runner.rb' 
# then Dog.all
#
# IF say the 3rd dog in the data set... tell 
# the terminal Dog.third. They are in the SQL 
# database so calling dog1 wont work!!!
# You can also ask for their i.d.
#
# If you want to call a dog by name, run: Dog.callbyname(the_dogs_name)
# The dog will bark and come to you
#
