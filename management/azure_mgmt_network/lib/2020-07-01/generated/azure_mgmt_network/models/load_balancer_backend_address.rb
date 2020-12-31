# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_07_01
  module Models
    #
    # Load balancer backend addresses.
    #
    class LoadBalancerBackendAddress

      include MsRestAzure

      # @return [SubResource] Reference to an existing virtual network.
      attr_accessor :virtual_network

      # @return [String] IP Address belonging to the referenced virtual
      # network.
      attr_accessor :ip_address

      # @return [SubResource] Reference to IP address defined in network
      # interfaces.
      attr_accessor :network_interface_ipconfiguration

      # @return [SubResource] Reference to the frontend ip address
      # configuration defined in regional loadbalancer.
      attr_accessor :load_balancer_frontend_ipconfiguration

      # @return [String] Name of the backend address.
      attr_accessor :name


      #
      # Mapper for LoadBalancerBackendAddress class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LoadBalancerBackendAddress',
          type: {
            name: 'Composite',
            class_name: 'LoadBalancerBackendAddress',
            model_properties: {
              virtual_network: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualNetwork',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ipAddress',
                type: {
                  name: 'String'
                }
              },
              network_interface_ipconfiguration: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.networkInterfaceIPConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              load_balancer_frontend_ipconfiguration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.loadBalancerFrontendIPConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
