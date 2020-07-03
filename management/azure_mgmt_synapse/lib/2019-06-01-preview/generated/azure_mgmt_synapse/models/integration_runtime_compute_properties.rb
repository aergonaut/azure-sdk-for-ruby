# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  module Models
    #
    # The compute resource properties for managed integration runtime.
    #
    class IntegrationRuntimeComputeProperties

      include MsRestAzure

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [String] The location for managed integration runtime. The
      # supported regions could be found on
      # https://docs.microsoft.com/en-us/azure/data-factory/data-factory-data-movement-activities
      attr_accessor :location

      # @return [String] The node size requirement to managed integration
      # runtime.
      attr_accessor :node_size

      # @return [Integer] The required number of nodes for managed integration
      # runtime.
      attr_accessor :number_of_nodes

      # @return [Integer] Maximum parallel executions count per node for
      # managed integration runtime.
      attr_accessor :max_parallel_executions_per_node

      # @return [IntegrationRuntimeDataFlowProperties] Data flow properties for
      # managed integration runtime.
      attr_accessor :data_flow_properties

      # @return [IntegrationRuntimeVNetProperties] VNet properties for managed
      # integration runtime.
      attr_accessor :v_net_properties


      #
      # Mapper for IntegrationRuntimeComputeProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IntegrationRuntimeComputeProperties',
          type: {
            name: 'Composite',
            class_name: 'IntegrationRuntimeComputeProperties',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
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
              node_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nodeSize',
                type: {
                  name: 'String'
                }
              },
              number_of_nodes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'numberOfNodes',
                constraints: {
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              max_parallel_executions_per_node: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxParallelExecutionsPerNode',
                constraints: {
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              data_flow_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dataFlowProperties',
                type: {
                  name: 'Composite',
                  class_name: 'IntegrationRuntimeDataFlowProperties'
                }
              },
              v_net_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vNetProperties',
                type: {
                  name: 'Composite',
                  class_name: 'IntegrationRuntimeVNetProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
