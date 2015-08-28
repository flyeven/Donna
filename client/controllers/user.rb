module DonnaClient
  module Controllers
    module User
      extend self

      def register(name, email, password)
        payload = {
          "name" => name,
          "email" => email,
          "password" => password
        }

        r = HTTP.post(DonnaClient::State["api_url"] + '/user/register', :json => payload)
        p r.status
        p JSON.parse(r.body.to_s)
      end

      def login(email, password)
        payload = {
          "email" => email,
          "password" => password
        }

        r = HTTP.post(DonnaClient::State["api_url"] + '/user/login', :json => payload)

        return false unless r.status == 200

        DonnaClient::State.user = DonnaClient::Models::User.new JSON.parse(r.body.to_s)
        true
      end
    end
  end
end
