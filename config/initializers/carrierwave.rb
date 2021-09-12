CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: Rails.application.credentials[:aws][:access_key_id],
      aws_secret_access_key: Rails.application.credentials[:aws][:secret_access_key],
      region: 'ap-northeast-1',
      path_style: true
    }
    config.fog_directory = 'arrown-backet'
    config.asset_host = "https://s3.ap-northeast-1.amazonaws.com/arrown-backet"
    
  end
   
  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/