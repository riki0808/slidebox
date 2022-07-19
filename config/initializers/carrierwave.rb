CarrierWave.configure do |config|

  # CarrierWave::SanitizedFile.sanitize_regexp = /[^[:print:]]/
  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/

end
