
 #namespace :testing do
	#task :my_command => :environment do
	   #pt = Product.last 
	   #cust_notes  = pt.name + "-RS " + pt.price.to_s + "  Added at " + Time.now.to_s
	   #pt.update_attributes(:note => cust_notes)
	   #puts 'done !'
	#end
#end

 namespace :testing do
	task :my_command => :environment do
	   Product.all.each do |pt|
		   #pt = Product.last  
		   cust_notes = pt.name + " -RS " + pt.price.to_s + "  Added at " + Time.now.to_s
		   pt.update_attributes(:note => cust_notes)
		   puts 'done !'
	   end
    end
end

