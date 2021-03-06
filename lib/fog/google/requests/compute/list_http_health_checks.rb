module Fog
  module Compute
    class Google
      class Mock
        def list_http_health_checks
          Fog::Mock.not_implemented
        end
      end

      class Real
        def list_http_health_checks
          api_method = @compute.http_health_checks.list
          parameters = {
            'project' => @project
          }

          request(api_method, parameters)
        end
      end
    end
  end
end
