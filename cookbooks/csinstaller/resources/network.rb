actions :setup
attribute :name, :kind_of => String
attribute :type, :kind_of => String
attribute :traffic_type, :kind_of => Array
attribute :admin_api_endpoint, :default => "http://localhost:8096"
attribute :zone_id, :kind_of => String

def initialize(*args)
  super
  @action = :setup
end
