namespace :panda do

  desc "Update through apt-get"
   task :apt_get_update do
     sudo "apt-get update"
   end

   desc "Install ZLIB - required for Libgd"
   task :install_zlib do
     ["wget http://www.zlib.net/zlib-1.2.3.tar.gz",
      "tar -xvzf zlib-1.2.3.tar.gz",
      "cd zlib-1.2.3 && ./configure --prefix=/usr/local/zlib && sudo make && sudo make install"].each {|cmd| run cmd}
   end

   desc "Install all required files"
   task :install_all_required_files do
     ["wget http://fr.archive.ubuntu.com/ubuntu/pool/multiverse/g/gpac/libgpac-dev_0.4.4-0.3ubuntu1_amd64.deb",
      "sudo dpkg -i libgpac-dev_0.4.4-0.3ubuntu1_amd64.deb",
      "wget http://mirrors.kernel.org/ubuntu/pool/multiverse/f/faac/libfaac0_1.26-0.1ubuntu2_amd64.deb",
      "sudo dpkg -i libfaac0_1.26-0.1ubuntu2_amd64.deb",
      "wget http://fr.archive.ubuntu.com/ubuntu/pool/multiverse/f/faac/libfaac-dev_1.26-0.1ubuntu1_amd64.deb",
      "sudo dpkg -i libfaac-dev_1.26-0.1ubuntu1_amd64.deb",
      "wget http://fr.archive.ubuntu.com/ubuntu/pool/multiverse/f/faac/libfaac0_1.26-0.1ubuntu1_amd64.deb",
      "sudo dpkg -i libfaac0_1.26-0.1ubuntu1_amd64.deb",
      "sudo apt-get install flvtool2"
      ].each {|cmd| run cmd}
   end

   # Uncomment this section when using a 32-bit instance
   # TODO - Check uname output and switch appropriately
#    desc "Install all required files"
#    task :install_all_required_files do
#      ["wget http://fr.archive.ubuntu.com/ubuntu/pool/multiverse/g/gpac/libgpac-dev_0.4.4-0.3ubuntu1_i386.deb",
#       "sudo dpkg -i libgpac-dev_0.4.4-0.3ubuntu1_i386.deb",
#       "wget http://fr.archive.ubuntu.com/ubuntu/pool/multiverse/f/faac/libfaac0_1.26-0.1ubuntu1_i386.deb",
#       "sudo dpkg -i libfaac0_1.26-0.1ubuntu1_i386.deb",
#       "sudo apt-get install flvtool2"
#       ].each {|cmd| run cmd}
#    end

end