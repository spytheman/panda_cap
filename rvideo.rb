namespace :panda do

  desc "Install RVideo"
  task :install_rvideo do
     ["rm -rf rvideo",
       "git clone git://github.com/jaikoo/rvideo.git",
       "cd rvideo && sudo rake install_gem && sudo cp lib/rvideo/tools/*.rb  /usr/lib/ruby/gems/1.8/gems/rvideo-0.9.4/lib/rvideo/tools/"].each {|cmd| run cmd}
  end

end