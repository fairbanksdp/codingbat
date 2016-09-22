def have_three?(arr)
  n=0
  arr.each do|a|
    if a==3
      n+=1
    end
  end
  if n==3
    return true
  end
  false
end

print have_three?([3, 3, 3, 4, 7,])
print have_three?([3, 3, 4, 7,])
print "\n"

def only14(ary)
  ary.each do|n|
    if !(n==1||n==4)
      return false
    end
  end
  true
end
print only14([1,4,1,4])
print only14([1,3,1,4])
print only14([1,1])
print "\n"

def no14(arr)
  no1=true
  no4=true
  arr.each do|n|
    if n==1
      no1=false
    elsif n==4
      no4=false
    end
  end
  no1||no4
end
print no14([1,2,3])
print no14([1,2,3,4])
print no14([4,2,3])
print "\n"


def count_evens(arr)
  c = 0
  arr.each do|n|
    if n % 2 == 0
      c+=1
    end
  end
  c
end

print count_evens([2,1,2,3,4])
print count_evens([2,2,0])
print count_evens([1,5,3])
print "\n"

def sum13(arr)
  sum = 0
  count = 0
  arr.each do|n|
    if n != 13 && arr[count-1] != 13
      sum+= n
    end
    count+=1
  end
  sum
end

print sum13([2,1,2,1]) #=>6
print sum13([1,1]) #=>2
print sum13([1,4,3,13,5,1]) #=>9
print "\n"

def lucky13?(arr)
  has_ones_or_three = true
  arr.each do|n|
    if n == 1 || n == 3
      has_ones_or_three = false
    end
  end
  has_ones_or_three
end
      
print lucky13?([0,2,4]) #=>true
print lucky13?([1,2,3]) #=>false
print lucky13?([1,2,4]) #=>false
print "\n"

def fizz_array(n)
  arr = Array.new(n)
  while n > 0
    n+=-1
    arr.insert(n,n)
  end
  arr.compact
end

print fizz_array(2) #=>[0,1]
print fizz_array(1) #=>[0]
print fizz_array(10) #=>[0,1,2,3,4,5,6,7,8,9]
print "\n"

def match_up(nums1,nums2)
  n = nums1.length
  c = 0
  while n > 0 
    n+=-1
    if !(nums1[n] == nums2[n]||nums1[n] > nums2[n] + 2||nums1[n] < nums2[n] - 2)
      c+=1
    end
  end
  c
end

print match_up([1,2,3],[2,3,10]) #=>2
print match_up([1,2,3],[2,3,5]) #=>3
print match_up([1,2,3],[2,3,3]) #=>2
print "\n"


