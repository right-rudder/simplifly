#CarrierWave.configure do |config|
#  config.storage    = :aws
#  config.aws_bucket = 'simplifly'
#  config.aws_acl    = 'public-read'
#  config.aws_authenticated_url_expiration = 60 * 60 * 24 * 7
#  config.aws_credentials = {
#    access_key_id:     ENV["s3_access_key_id"],
#    secret_access_key: ENV["s3_secret_access_key"],
#    region:            'us-west-1'
#  }
#end