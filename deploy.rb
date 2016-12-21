
require "whenever/capistrano"

after "deploy:symlink", "deploy:update_crontab"
namespace :deploy do
  desc "Update the crontab file"
  task :update_crontab, :roles => :db do
    run "cd #{release_path} && whenever --update-crontab #{application}"
  end
end
namespace :products do
  desc "Rake task to get events data"
  task :fetch => :environment do
    products = Product.nba_search
    events.each do |item|
      item.each do |hash|
        @product = Product.new({
        # Code to instantiate an event
        })
        @product.save
      end
    end
    puts "#{Time.now} - Success!"
  end
end



