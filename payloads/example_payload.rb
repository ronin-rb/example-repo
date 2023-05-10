#!/usr/bin/env -S ronin-payloads build -f

require 'ronin/payloads/payload'

module Ronin
  module Payloads
    #
    # An example payload.
    #
    class ExamplePayload < Payload

      register 'example_payload'

      author 'Postmodern', email: 'postmodern.mod3@gmail.com'
      summary "Example payload"
      description <<~DESC
        This is an example payload.
      DESC
      references [
        "https://github.com/ronin-rb/example-repo",
        "https://github.com/ronin-rb/ronin-payloads#examples"
      ]

      def build
        @payload = "EXAMPLE-PAYLOAD-HERE"
      end

    end
  end
end
