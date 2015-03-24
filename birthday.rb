require 'csv'

print "What's your name? "
name = gets

csv = CSV.foreach('birthday_data.csv') do |row|
  if row[1] == name.split(" ")[0].strip && row[0] == name.split(" ")[1].strip
    puts "Your full name is: "  + row[1] + " " + row[0] + ". Your birthday is " + row[2] + ". Your email is " + row[3] + "."
  end
end
