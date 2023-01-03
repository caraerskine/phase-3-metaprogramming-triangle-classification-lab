class Triangle
  # write code here

  attr_accessor :s1, :s2, :s3, :kind

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
      #instance variable set equal to an argument
  end 

  def kind 
    if  (s1 * s2 * s3) == 0 || (s1 + s2) <= s3 || (s2 + s3) <= s1 || (s3 + s1) <= s2
      begin
        raise TriangleError
        puts error.message
      end
    
    elsif s1 == s2 && s1 == s3
      :equilateral
       
    elsif s1 == s2 || s1 == s3 || s2 == s3
      :isosceles  

    else
      :scalene  
  end
 end 

  class TriangleError < StandardError
    # triangle error code
    def message 
      puts "not a triangle"
    end
  end 
end 

 