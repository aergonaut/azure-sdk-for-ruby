# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_10_01
  module Models
    #
    # ExtendedLocation complex type.
    #
    class ExtendedLocation

      include MsRestAzure

      # @return [String] The name of the extended location.
      attr_accessor :name

      # @return [String] The type of the extended location. Default value:
      # 'EdgeZone' .
      attr_accessor :type


      #
      # Mapper for ExtendedLocation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExtendedLocation',
          type: {
            name: 'Composite',
            class_name: 'ExtendedLocation',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'EdgeZone',
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
