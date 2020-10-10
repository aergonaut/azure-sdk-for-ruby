# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_06_01
  module Models
    #
    # Output of virtual machine capture operation.
    #
    class VirtualMachineCaptureResult < SubResource

      include MsRestAzure

      # @return [String] the schema of the captured virtual machine
      attr_accessor :schema

      # @return [String] the version of the content
      attr_accessor :content_version

      # @return parameters of the captured virtual machine
      attr_accessor :parameters

      # @return a list of resource items of the captured virtual machine
      attr_accessor :resources


      #
      # Mapper for VirtualMachineCaptureResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineCaptureResult',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineCaptureResult',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              schema: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: '$schema',
                type: {
                  name: 'String'
                }
              },
              content_version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'contentVersion',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'parameters',
                type: {
                  name: 'Object'
                }
              },
              resources: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'resources',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
