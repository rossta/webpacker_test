Rails.application.configure do
  config.after_initialize do
    puts "Webpacker after_initialize in app initializer"
    Webpacker.logger = Logger.new("/dev/null")
  end
end
