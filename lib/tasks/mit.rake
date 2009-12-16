namespace :mit do

  desc "Adds MIT related feeds"
  task :feeds => :environment do
    [
      ['http://ocw.mit.edu/OcwWeb/rss/all/mit-allcourses.xml', 'MIT OCW']
    ].each { |f| Feed.create(:uri => f[0], :display_uri => f[0], :title => f[1], :short_title => f[1]) unless Feed.find_by_uri(f[0]) }
  end
  
end