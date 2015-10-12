# Implement your procedural solution here!

def finding_the_new_fibonacci(fb_array)
  fb_array[-1] + fb_array[-2]
end

def even_fibonacci_sum(limit, fb_array=[1,2])
    if fb_array.length == 2
      fb_array << finding_the_new_fibonacci(fb_array)
      even_fibonacci_sum(limit, fb_array)
    elsif fb_array.length > 2 && finding_the_new_fibonacci(fb_array) <= limit
      fb_array << finding_the_new_fibonacci(fb_array)
      even_fibonacci_sum(limit, fb_array)
    else
      fb_array.select! {|n| n%2 == 0}.inject(:+)
    end
end
