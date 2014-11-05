# precondition:  n >= 1
# postcondition: Return the number of ways to park 3 vehicles,
#   designated 1, 2 and 3 in n parking spaces, without leaving
#   any spaces empty. 1 takes one parking space, 2 takes two spaces,
#   3 takes three spaces. Each vehicle type cannot be distinguished
#   from others of the same type, ie for n=2, 11 counts only once.
#   Arrangements are different if their sequences of vehicle types,
#   listed left to right, are different.
#   For n=1:  1 is the only valid arrangement, and returns 1
#   For n=2:  11, 2                     are arrangements and returns 2
#   For n=3:  111, 12, 21, 3            are arrangements and returns 4
#   For n=4:  1111,112,121,211,22,13,31 are arrangements and returns 7

#Let's designate a single empty space as E.
#For n=1:  1,E                and returns 2
#For n=2:  11,2,EE,1E,E1      and returns 5
#For n=3:  111,12,21,3,EEE,EE1,E1E,1EE,11E,1E1,E11,2E,E2     and returns 13
#For n=4:  there are 7 arrangements with no E, and 26 with an E, returns 33

def park(n)
  case n
    when 1
      return 1 
    when 2
      return 2
    when 3
      return 4
    else
      return park(n-3) + park(n-2) + park(n-1)
  end
end

def park_with_empty(n)
  case n
    when 1
      return 2 
    when 2
      return 5
    when 3 
      return 13 
    else
      return park_with_empty(n-3) + park_with_empty(n-2) + park_with_empty(n-1) + park_with_empty(n-1) 
  end
end
