# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2020_06_01
  module Models
    #
    # Model object.
    #
    #
    class ManagedClusterPropertiesIdentityProfileValue < UserAssignedIdentity

      include MsRestAzure


      #
      # Mapper for ManagedClusterPropertiesIdentityProfileValue class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedClusterProperties_identityProfileValue',
          type: {
            name: 'Composite',
            class_name: 'ManagedClusterPropertiesIdentityProfileValue',
            model_properties: {
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              client_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'clientId',
                type: {
                  name: 'String'
                }
              },
              object_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'objectId',
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
