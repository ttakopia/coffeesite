require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Rails.env.production?
  config.fog_provider = 'fog/aws' # 追加
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['SECRET_ACCESS_KEY'],
    region: 'ap-southeast-1', #シンガポール
    endpoint: 'https://s3.amazonaws.com'
  }

  config.fog_directory  = 'bucket-name-coffeeseeker'
  config.fog_public = false 
  config.storage = :fog
else
   config.storage :file
end
end