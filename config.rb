require 'json'
class Config
    FILE_PATH = "config.json"
    def read_config
        JSON.parse(File.read(FILE_PATH))
    end  
end