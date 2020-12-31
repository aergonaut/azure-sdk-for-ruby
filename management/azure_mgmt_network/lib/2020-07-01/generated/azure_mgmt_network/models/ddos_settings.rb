# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_07_01
  module Models
    #
    # Contains the DDoS protection settings of the public IP.
    #
    class DdosSettings

      include MsRestAzure

      # @return [SubResource] The DDoS custom policy associated with the public
      # IP.
      attr_accessor :ddos_custom_policy

      # @return [DdosSettingsProtectionCoverage] The DDoS protection policy
      # customizability of the public IP. Only standard coverage will have the
      # ability to be customized. Possible values include: 'Basic', 'Standard'
      attr_accessor :protection_coverage

      # @return [Boolean] Enables DDoS protection on the public IP.
      attr_accessor :protected_ip


      #
      # Mapper for DdosSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DdosSettings',
          type: {
            name: 'Composite',
            class_name: 'DdosSettings',
            model_properties: {
              ddos_custom_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ddosCustomPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              protection_coverage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectionCoverage',
                type: {
                  name: 'String'
                }
              },
              protected_ip: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectedIP',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
