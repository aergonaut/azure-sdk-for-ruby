# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.


module Azure::ARM::Compute
  #
  # AvailabilitySets
  #
  class AvailabilitySets
    include Azure::ARM::Compute::Models
    include MsRestAzure

    #
    # Creates and initializes a new instance of the AvailabilitySets class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return reference to the ComputeManagementClient
    attr_reader :client

    #
    # The operation to delete the availability set.
    # @param resource_group_name [String] The name of the resource group.
    # @param availability_set_name [String] The name of the availability set.
    # @param [Hash{String => String}] The hash of custom headers need to be
    # applied to HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def delete(resource_group_name, availability_set_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'availability_set_name is nil' if availability_set_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      # Construct URL
      path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}"
      path['{resourceGroupName}'] = ERB::Util.url_encode(resource_group_name) if path.include?('{resourceGroupName}')
      path['{availabilitySetName}'] = ERB::Util.url_encode(availability_set_name) if path.include?('{availabilitySetName}')
      path['{subscriptionId}'] = ERB::Util.url_encode(@client.subscription_id) if path.include?('{subscriptionId}')
      url = URI.join(@client.base_url, path)
      properties = {}
      properties['api-version'] = ERB::Util.url_encode(@client.api_version.to_s) unless @client.api_version.nil?
      properties.reject!{ |key, value| value.nil? }
      url.query = properties.map{ |key, value| "#{key}=#{value}" }.compact.join('&')
      fail URI::Error unless url.to_s =~ /\A#{URI::regexp}\z/
      corrected_url = url.to_s.gsub(/([^:])\/\//, '\1/')
      url = URI.parse(corrected_url)

      connection = Faraday.new(:url => url) do |faraday|
        faraday.use MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02
        faraday.use :cookie_jar
        faraday.adapter Faraday.default_adapter
      end
      request_headers = Hash.new

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers["accept-language"] = @client.accept_language unless @client.accept_language.nil?

      unless custom_headers.nil?
        custom_headers.each do |key, value|
          request_headers[key] = value
        end
      end

      # Send Request
      promise = Concurrent::Promise.new do
        connection.delete do |request|
          request.headers = request_headers
          @client.credentials.sign_request(request) unless @client.credentials.nil?
        end
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless (status_code == 200 || status_code == 204)
          fail MsRestAzure::AzureOperationError.new(connection, http_response)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(connection, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # The operation to get the availability set.
    # @param resource_group_name [String] The name of the resource group.
    # @param availability_set_name [String] The name of the availability set.
    # @param [Hash{String => String}] The hash of custom headers need to be
    # applied to HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def get(resource_group_name, availability_set_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'availability_set_name is nil' if availability_set_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      # Construct URL
      path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}"
      path['{resourceGroupName}'] = ERB::Util.url_encode(resource_group_name) if path.include?('{resourceGroupName}')
      path['{availabilitySetName}'] = ERB::Util.url_encode(availability_set_name) if path.include?('{availabilitySetName}')
      path['{subscriptionId}'] = ERB::Util.url_encode(@client.subscription_id) if path.include?('{subscriptionId}')
      url = URI.join(@client.base_url, path)
      properties = {}
      properties['api-version'] = ERB::Util.url_encode(@client.api_version.to_s) unless @client.api_version.nil?
      properties.reject!{ |key, value| value.nil? }
      url.query = properties.map{ |key, value| "#{key}=#{value}" }.compact.join('&')
      fail URI::Error unless url.to_s =~ /\A#{URI::regexp}\z/
      corrected_url = url.to_s.gsub(/([^:])\/\//, '\1/')
      url = URI.parse(corrected_url)

      connection = Faraday.new(:url => url) do |faraday|
        faraday.use MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02
        faraday.use :cookie_jar
        faraday.adapter Faraday.default_adapter
      end
      request_headers = Hash.new

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers["accept-language"] = @client.accept_language unless @client.accept_language.nil?

      unless custom_headers.nil?
        custom_headers.each do |key, value|
          request_headers[key] = value
        end
      end

      # Send Request
      promise = Concurrent::Promise.new do
        connection.get do |request|
          request.headers = request_headers
          @client.credentials.sign_request(request) unless @client.credentials.nil?
        end
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless (status_code == 200)
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(connection, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(connection, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = JSON.load(response_content) unless response_content.to_s.empty?
            unless parsed_response.nil?
              parsed_response = AvailabilitySet.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new("Error occured in deserializing the response", e.message, e.backtrace, response_content)
          end
        end

        result
      end

      promise.execute
    end

    #
    # The operation to list the availability sets.
    # @param resource_group_name [String] The name of the resource group.
    # @param [Hash{String => String}] The hash of custom headers need to be
    # applied to HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def list(resource_group_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      # Construct URL
      path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets"
      path['{resourceGroupName}'] = ERB::Util.url_encode(resource_group_name) if path.include?('{resourceGroupName}')
      path['{subscriptionId}'] = ERB::Util.url_encode(@client.subscription_id) if path.include?('{subscriptionId}')
      url = URI.join(@client.base_url, path)
      properties = {}
      properties['api-version'] = ERB::Util.url_encode(@client.api_version.to_s) unless @client.api_version.nil?
      properties.reject!{ |key, value| value.nil? }
      url.query = properties.map{ |key, value| "#{key}=#{value}" }.compact.join('&')
      fail URI::Error unless url.to_s =~ /\A#{URI::regexp}\z/
      corrected_url = url.to_s.gsub(/([^:])\/\//, '\1/')
      url = URI.parse(corrected_url)

      connection = Faraday.new(:url => url) do |faraday|
        faraday.use MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02
        faraday.use :cookie_jar
        faraday.adapter Faraday.default_adapter
      end
      request_headers = Hash.new

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers["accept-language"] = @client.accept_language unless @client.accept_language.nil?

      unless custom_headers.nil?
        custom_headers.each do |key, value|
          request_headers[key] = value
        end
      end

      # Send Request
      promise = Concurrent::Promise.new do
        connection.get do |request|
          request.headers = request_headers
          @client.credentials.sign_request(request) unless @client.credentials.nil?
        end
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless (status_code == 200)
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(connection, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(connection, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = JSON.load(response_content) unless response_content.to_s.empty?
            unless parsed_response.nil?
              parsed_response = AvailabilitySetListResult.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new("Error occured in deserializing the response", e.message, e.backtrace, response_content)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists virtual-machine-sizes available to be used for an availability set.
    # @param resource_group_name [String] The name of the resource group.
    # @param availability_set_name [String] The name of the availability set.
    # @param [Hash{String => String}] The hash of custom headers need to be
    # applied to HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def list_available_sizes(resource_group_name, availability_set_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'availability_set_name is nil' if availability_set_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      # Construct URL
      path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{availabilitySetName}/vmSizes"
      path['{resourceGroupName}'] = ERB::Util.url_encode(resource_group_name) if path.include?('{resourceGroupName}')
      path['{availabilitySetName}'] = ERB::Util.url_encode(availability_set_name) if path.include?('{availabilitySetName}')
      path['{subscriptionId}'] = ERB::Util.url_encode(@client.subscription_id) if path.include?('{subscriptionId}')
      url = URI.join(@client.base_url, path)
      properties = {}
      properties['api-version'] = ERB::Util.url_encode(@client.api_version.to_s) unless @client.api_version.nil?
      properties.reject!{ |key, value| value.nil? }
      url.query = properties.map{ |key, value| "#{key}=#{value}" }.compact.join('&')
      fail URI::Error unless url.to_s =~ /\A#{URI::regexp}\z/
      corrected_url = url.to_s.gsub(/([^:])\/\//, '\1/')
      url = URI.parse(corrected_url)

      connection = Faraday.new(:url => url) do |faraday|
        faraday.use MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02
        faraday.use :cookie_jar
        faraday.adapter Faraday.default_adapter
      end
      request_headers = Hash.new

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers["accept-language"] = @client.accept_language unless @client.accept_language.nil?

      unless custom_headers.nil?
        custom_headers.each do |key, value|
          request_headers[key] = value
        end
      end

      # Send Request
      promise = Concurrent::Promise.new do
        connection.get do |request|
          request.headers = request_headers
          @client.credentials.sign_request(request) unless @client.credentials.nil?
        end
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless (status_code == 200)
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(connection, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(connection, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = JSON.load(response_content) unless response_content.to_s.empty?
            unless parsed_response.nil?
              parsed_response = VirtualMachineSizeListResult.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new("Error occured in deserializing the response", e.message, e.backtrace, response_content)
          end
        end

        result
      end

      promise.execute
    end

    #
    # The operation to create or update the availability set.
    # @param resource_group_name [String] The name of the resource group.
    # @param name [String] Parameters supplied to the Create Availability Set
    # operation.
    # @param parameters [AvailabilitySet] Parameters supplied to the Create
    # Availability Set operation.
    # @param [Hash{String => String}] The hash of custom headers need to be
    # applied to HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def create_or_update(resource_group_name, name, parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'name is nil' if name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      parameters.validate unless parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      # Construct URL
      path = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/availabilitySets/{name}"
      path['{resourceGroupName}'] = ERB::Util.url_encode(resource_group_name) if path.include?('{resourceGroupName}')
      path['{name}'] = ERB::Util.url_encode(name) if path.include?('{name}')
      path['{subscriptionId}'] = ERB::Util.url_encode(@client.subscription_id) if path.include?('{subscriptionId}')
      url = URI.join(@client.base_url, path)
      properties = {}
      properties['api-version'] = ERB::Util.url_encode(@client.api_version.to_s) unless @client.api_version.nil?
      properties.reject!{ |key, value| value.nil? }
      url.query = properties.map{ |key, value| "#{key}=#{value}" }.compact.join('&')
      fail URI::Error unless url.to_s =~ /\A#{URI::regexp}\z/
      corrected_url = url.to_s.gsub(/([^:])\/\//, '\1/')
      url = URI.parse(corrected_url)

      connection = Faraday.new(:url => url) do |faraday|
        faraday.use MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02
        faraday.use :cookie_jar
        faraday.adapter Faraday.default_adapter
      end
      request_headers = Hash.new

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers["accept-language"] = @client.accept_language unless @client.accept_language.nil?

      unless custom_headers.nil?
        custom_headers.each do |key, value|
          request_headers[key] = value
        end
      end

      # Serialize Request
      request_headers['Content-Type'] = 'application/json'
      unless parameters.nil?
        parameters = AvailabilitySet.serialize_object(parameters)
      end
      request_content = JSON.generate(parameters, quirks_mode: true)

      # Send Request
      promise = Concurrent::Promise.new do
        connection.put do |request|
          request.headers = request_headers
          request.body = request_content
          @client.credentials.sign_request(request) unless @client.credentials.nil?
        end
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless (status_code == 200)
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(connection, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(connection, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = JSON.load(response_content) unless response_content.to_s.empty?
            unless parsed_response.nil?
              parsed_response = AvailabilitySet.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new("Error occured in deserializing the response", e.message, e.backtrace, response_content)
          end
        end

        result
      end

      promise.execute
    end

  end
end
