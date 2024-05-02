class XApi
    def self.client
        x_credentials = {}

        return X::Client.new(**x_credentials)
    end
end