# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_05_01
  module Models
    #
    # A flow log resource.
    #
    class FlowLog < Resource

      include MsRestAzure

      # @return [String] ID of network security group to which flow log will be
      # applied.
      attr_accessor :target_resource_id

      # @return [String] Guid of network security group to which flow log will
      # be applied.
      attr_accessor :target_resource_guid

      # @return [String] ID of the storage account which is used to store the
      # flow log.
      attr_accessor :storage_id

      # @return [Boolean] Flag to enable/disable flow logging.
      attr_accessor :enabled

      # @return [RetentionPolicyParameters] Parameters that define the
      # retention policy for flow log.
      attr_accessor :retention_policy

      # @return [FlowLogFormatParameters] Parameters that define the flow log
      # format.
      attr_accessor :format

      # @return [TrafficAnalyticsProperties] Parameters that define the
      # configuration of traffic analytics.
      attr_accessor :flow_analytics_configuration

      # @return [ProvisioningState] The provisioning state of the flow log.
      # Possible values include: 'Succeeded', 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for FlowLog class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FlowLog',
          type: {
            name: 'Composite',
            class_name: 'FlowLog',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              target_resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.targetResourceId',
                type: {
                  name: 'String'
                }
              },
              target_resource_guid: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.targetResourceGuid',
                type: {
                  name: 'String'
                }
              },
              storage_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.storageId',
                type: {
                  name: 'String'
                }
              },
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enabled',
                type: {
                  name: 'Boolean'
                }
              },
              retention_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.retentionPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'RetentionPolicyParameters'
                }
              },
              format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.format',
                type: {
                  name: 'Composite',
                  class_name: 'FlowLogFormatParameters'
                }
              },
              flow_analytics_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.flowAnalyticsConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'TrafficAnalyticsProperties'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
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
