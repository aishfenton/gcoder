module GCoder
  module Config

    # If :tt_port is 0 then :tt_host should point to a Unix socket.
    @default_settings = {
      :gmaps_api_key => nil,
      :gmaps_api_timeout => 2,
      :tt_host => nil,
      :tt_port => 0,
      :append_query => nil,
      :no_raise_on_connection_fail => false }

    def self.merge(overrides)
      @default_settings.merge(overrides)
    end

    def self.update(hsh)
      @default_settings.update(hsh)
    end

    def self.[](key)
      @default_settings[key]
    end

  end
end