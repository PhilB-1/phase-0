#find the length of the array
#Figure out how many groups you want to make
# do a while loops to iterate over the array
# do an if statement that if the number it is in the array is only divisible by a certain number to push it into a certain array.

def acct_groups(array)
  group_1 = []
  group_2 = []
  group_3 = []
  group_4 = []
  group_5 = []
  group_6 = []
  group_7 = []
  group_8 = []
  group_9 = []
  group_10 = []
  prime_group = []

  i = 0
  while i < array.length
    if (i % 3 == 0) && !(i % 4 == 0) && !(i % 6 == 0) && !(i % 7 == 0) && !(i % 11 == 0) && !(i % 13 == 0)
      group_1 << array[i]
    elsif  (i % 4 == 0) && !(i % 5 == 0) && !(i % 6 == 0) && !(i % 7 == 0) && !(i % 11 == 0) && !(i % 13 == 0)
      group_2 << array[i]
    elsif (i % 5 == 0) && !(i % 6 == 0) && !(i % 7 == 0) && !(i % 11 == 0) && !(i % 13 == 0)
      group_3 << array[i]
    elsif (i % 6 == 0) && !(i % 7 == 0) && !(i % 11 == 0) && !(i % 13 == 0)
      group_4 << array[i]
    elsif (i % 7 == 0) && !(i % 11 == 0) && !(i % 13 == 0)
      group_5 << array[i]
    elsif i % 11 == 0
      group_6 << array[i]
    elsif i % 13 == 0
      group_7 << array[i]
    else
      prime_group << array[i]
    end
    i += 1
  end
  x = 0
  while x < prime_group.length
    if (x % 2 == 0) && !(x % 3 == 0)
      group_8 << prime_group[x]
    elsif x % 3 == 0
      group_9 << prime_group[x]
    else
      group_10 << prime_group[x]
    end
    x += 1
  end



  puts group_1
  puts group_1.length
  puts group_2
  puts group_2.length
  puts group_3
  puts group_3.length
  puts group_4
  puts group_4.length
  puts group_5
  puts group_5.length
  puts group_6
  puts group_6.length
  puts group_7
  puts group_7.length
  #puts prime_group
  #puts prime_group.length
  puts group_8
  puts group_8.length
  puts group_9
  puts group_9.length
  puts group_10
  puts group_10.length
  puts array.length
end

acct_groups(["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","wolv","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"])
=begin
def account_groups(array, size)
  skip = array.length / size

  i = 0
  while i < skip
    x = i
    while x <= array.length
      #create an array and push in array[x]
      x += skip
    end
    i += 1
  end
end
=end