module RestClient
  VERSION = '1.7.3' unless defined?(self::VERSION)

  def self.version
    VERSION
  end
end
