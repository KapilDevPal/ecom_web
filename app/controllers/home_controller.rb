require_relative  '/home/developer/docker/ecommers_app/lib/modules/mathmod.rb'
class HomeController < ApplicationController



include Mathmod
def index
 @module_data = blog_data
end

 

end

















































# class Homer   
# extend Mathmod
# def  index1
#   puts "in_class"
#   end
# end
 
# p Homer.index1 
  
# p Homer.ancestors