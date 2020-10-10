# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_06_01
  module Models
    #
    # Describes a Virtual Machine Extension Image.
    #
    class VirtualMachineExtensionImage < Resource

      include MsRestAzure

      # @return [String] The operating system this extension supports.
      attr_accessor :operating_system

      # @return [String] The type of role (IaaS or PaaS) this extension
      # supports.
      attr_accessor :compute_role

      # @return [String] The schema defined by publisher, where extension
      # consumers should provide settings in a matching schema.
      attr_accessor :handler_schema

      # @return [Boolean] Whether the extension can be used on xRP VMScaleSets.
      # By default existing extensions are usable on scalesets, but there might
      # be cases where a publisher wants to explicitly indicate the extension
      # is only enabled for CRP VMs but not VMSS.
      attr_accessor :vm_scale_set_enabled

      # @return [Boolean] Whether the handler can support multiple extensions.
      attr_accessor :supports_multiple_extensions


      #
      # Mapper for VirtualMachineExtensionImage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineExtensionImage',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineExtensionImage',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
                required: true,
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
              operating_system: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.operatingSystem',
                type: {
                  name: 'String'
                }
              },
              compute_role: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.computeRole',
                type: {
                  name: 'String'
                }
              },
              handler_schema: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.handlerSchema',
                type: {
                  name: 'String'
                }
              },
              vm_scale_set_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vmScaleSetEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              supports_multiple_extensions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.supportsMultipleExtensions',
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
