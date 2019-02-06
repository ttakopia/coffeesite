CarrierWave.configure do |config|
  if Rails.env.development? || Rails.env.test?
  config.storage = :file 
  else
  config.storage :fog
  config.fog_provider = 'fog/aws' # 追加
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['SECRET_ACCESS_KEY'],
    region: 'ap-southeast-1' #シンガポール
  }

  config.fog_directory  = 'bucket-name-coffeeseeker'
  config.asset_host = 'https://s3.amazonaws.com/bucket-name-coffeeseeker'
  end
end