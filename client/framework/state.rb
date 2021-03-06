# rubocop:disable Style/Documentation
module DonnaClient
  module State
    extend self

    def [](key)
      @conf[key]
    end

    def user=(user)
      @user = user
    end

    def user
      @user
    end

    def conf=(configuration)
      @conf = configuration
    end
  end
end
