namespace :db do
  namespace :fixtures do
    desc "Load seeds then paperclip_files "
    task :load => :environment do
      Rake::Task['db:seed'].invoke :RAILS_ENV => Rails.env
      Rake::Task['db:fixtures:load_paperclip_files'].invoke :RAILS_ENV => Rails.env
    end

    desc "Load paperclip files"
    task :load_paperclip_files => :environment do
      [Picture, Page, Translation].each do |klass|
        klass.attachment_definitions.keys.each do |key|
          klass.where("#{key}_file_name IS NOT NULL").each do |instance|
            instance.send "#{key}=", File.new(File.join(Rails.root, "test/fixtures/files/", instance.send("#{key}_file_name")))
            instance.send(key).reprocess!
            instance.save!
          end
        end
      end
    end
  end
end
