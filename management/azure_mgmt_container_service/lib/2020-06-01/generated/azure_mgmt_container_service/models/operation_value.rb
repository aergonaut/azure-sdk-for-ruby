# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2020_06_01
  module Models
    #
    # Describes the properties of a Compute Operation value.
    #
    class OperationValue

      include MsRestAzure

      # @return [String] The origin of the compute operation.
      attr_accessor :origin

      # @return [String] The name of the compute operation.
      attr_accessor :name

      # @return [String] The display name of the compute operation.
      attr_accessor :operation

      # @return [String] The display name of the resource the operation applies
      # to.
      attr_accessor :resource

      # @return [String] The description of the operation.
      attr_accessor :description

      # @return [String] The resource provider for the operation.
      attr_accessor :provider


      #
      # Mapper for OperationValue class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationValue',
          type: {
            name: 'Composite',
            class_name: 'OperationValue',
            model_properties: {
              origin: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'origin',
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
              operation: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'display.operation',
                type: {
                  name: 'String'
                }
              },
              resource: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'display.resource',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'display.description',
                type: {
                  name: 'String'
                }
              },
              provider: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'display.provider',
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
