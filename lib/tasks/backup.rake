#namespace :backup do
#  desc 'backup db and files'
#  task :run => :environment do
#    require 'net/ftp'
#    require 'net/http'
#    require 'uri'
#    require 'yaml'
#
#    backup_servers = [
#      {:host => 'dedibackup.dedibox.fr', :login => 'sd-15454', :password => 'pkfnInckl654azE'},
#      {:host => 'sd-12716.dedibox.fr', :login => 'backups', :password => 'n10durex22', :chdir => "VP/databases"}
#    ]
#
#    backup_file = File.join(RAILS_ROOT, "tmp","#{DateTime.now.strftime("%Y_%m_%d_%H_%M")}_noelle_prod.sql")
#    db_settings = YAML::load_file(File.join(RAILS_ROOT, "config/database.yml"))[RAILS_ENV]
#
#    log_task "Dumping DB" do
#      system("mysqldump --user=#{db_settings['username']} --password=#{db_settings['password']} --database #{db_settings['database']} --add-drop-database --routines > #{backup_file}")
#      system("tar -cj #{backup_file} > #{backup_file}.tar.bz2")
#    end
#
#
#    log_task "Transferring compressed DB dump" do
#      backup_servers.each do |server|
#        begin
#          Net::FTP.open(server[:host]) do |ftp|
#            ftp.login(server[:login], server[:password])
#            ftp.chdir(server[:chdir]) if server[:chdir]
#            ftp.put("#{backup_file}.tar.bz2")
#          end
#        rescue Exception => e
#          puts("\n** Error while uploading backup to #{server[:host]}\n** Error was : #{e.message}\n")
#        end
#      end
#    end
#    log_task "Removing temp files" do
#      system("rm -f #{backup_file}")
#      system("rm -f #{backup_file}.tar.bz2")
#    end
#  end
#
#
#  desc "Runs stored images backup"
#  task :stored_images => :environment do
#
#    server = "sd-12716.dedibox.fr"
#    remote_user = "backups"
#    remote_path = "/home/backups/VP/stored_images"
#    local_path = "/var/rails/vin-prive/production/current/public/stored_images/*"
#    exclude_pattern = ".svn"
#    remote_server_key = "/var/rails/keys/rsync-key"
#
#    log_task "Running stored images backup" do
#      system("rsync -arz --exclude=#{exclude_pattern} --delete --copy-links -e \"ssh -i #{remote_server_key}\" #{local_path} #{remote_user}@#{server}:#{remote_path}")
#    end
#  end
#
#  end
#end