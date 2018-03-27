# Copyright 2018 Slaask
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License. You may obtain
# a copy of the License at http://www.apache.org/licenses/LICENSE-2.0

require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Teamleader < OmniAuth::Strategies::OAuth2
      option :name, 'teamleader'

      option :client_options, {
        :site => 'https://app.teamleader.eu',
        :authorize_url => '/oauth2/authorize',
        :token_url => '/oauth2/access_token'
      }

      option :provider_ignores_state, true

      uid { raw_info['id'] }

      info do
        {
          'uid' => raw_info['id'],
          'first_name' => raw_info['first_name'],
          'last_name' => raw_info['last_name'],
          'email' => raw_info['email'],
          'language' => raw_info['language'],
          'time_zone' => raw_info['time_zone']
        }
      end

      extra do
        { 'raw_info' => raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get('https://api.teamleader.eu/users.me', {:parse => :json}).parsed['data']
      end
    end
  end
end

OmniAuth.config.add_camelization 'teamleader', 'Teamleader'
