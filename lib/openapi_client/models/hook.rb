=begin
#OneLogin API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 3.0.0-alpha.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'date'
require 'time'

module OpenapiClient
  class Hook
    # The Hook unique ID in OneLogin.
    attr_accessor :id

    # A string describing the type of hook. e.g. `pre-authentication`
    attr_accessor :type

    # Boolean to enable or disable the hook. Disabled hooks will not run.
    attr_accessor :disabled

    # The number of seconds to allow the hook function to run before before timing out. Maximum timeout varies based on the type of hook.
    attr_accessor :timeout

    # Environment Variable objects that will be available via process.env.ENV_VAR_NAME in the hook code.
    attr_accessor :env_vars

    # The Smart Hooks supported Node.js version to execute this hook with.
    attr_accessor :runtime

    # Number of retries if execution fails.
    attr_accessor :retries

    # An object containing NPM packages that are bundled with the hook function.
    attr_accessor :packages

    # A base64 encoded string containing the javascript function code.
    attr_accessor :function

    # The semantic version of the content that will be injected into this hook.
    attr_accessor :context_version

    # String describing the state of the hook function. When a hook is ready and disabled is false it will be executed.
    attr_accessor :status

    attr_accessor :options

    # An array of objects that let you limit the execution of a hook to users in specific roles.
    attr_accessor :conditions

    # ISO8601 format date that they hook function was created.
    attr_accessor :created_at

    # ISO8601 format date that they hook function was last updated.
    attr_accessor :updated_at

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'type' => :'type',
        :'disabled' => :'disabled',
        :'timeout' => :'timeout',
        :'env_vars' => :'env_vars',
        :'runtime' => :'runtime',
        :'retries' => :'retries',
        :'packages' => :'packages',
        :'function' => :'function',
        :'context_version' => :'context_version',
        :'status' => :'status',
        :'options' => :'options',
        :'conditions' => :'conditions',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'type' => :'String',
        :'disabled' => :'Boolean',
        :'timeout' => :'Integer',
        :'env_vars' => :'Array<String>',
        :'runtime' => :'String',
        :'retries' => :'Integer',
        :'packages' => :'Object',
        :'function' => :'String',
        :'context_version' => :'String',
        :'status' => :'String',
        :'options' => :'HookOptions',
        :'conditions' => :'Array<HookConditionsInner>',
        :'created_at' => :'String',
        :'updated_at' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Hook` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Hook`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'disabled')
        self.disabled = attributes[:'disabled']
      else
        self.disabled = true
      end

      if attributes.key?(:'timeout')
        self.timeout = attributes[:'timeout']
      else
        self.timeout = 1
      end

      if attributes.key?(:'env_vars')
        if (value = attributes[:'env_vars']).is_a?(Array)
          self.env_vars = value
        end
      end

      if attributes.key?(:'runtime')
        self.runtime = attributes[:'runtime']
      end

      if attributes.key?(:'retries')
        self.retries = attributes[:'retries']
      else
        self.retries = 0
      end

      if attributes.key?(:'packages')
        self.packages = attributes[:'packages']
      end

      if attributes.key?(:'function')
        self.function = attributes[:'function']
      end

      if attributes.key?(:'context_version')
        self.context_version = attributes[:'context_version']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'options')
        self.options = attributes[:'options']
      end

      if attributes.key?(:'conditions')
        if (value = attributes[:'conditions']).is_a?(Array)
          self.conditions = value
        end
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @disabled.nil?
        invalid_properties.push('invalid value for "disabled", disabled cannot be nil.')
      end

      if @timeout.nil?
        invalid_properties.push('invalid value for "timeout", timeout cannot be nil.')
      end

      if @env_vars.nil?
        invalid_properties.push('invalid value for "env_vars", env_vars cannot be nil.')
      end

      if @runtime.nil?
        invalid_properties.push('invalid value for "runtime", runtime cannot be nil.')
      end

      if @retries.nil?
        invalid_properties.push('invalid value for "retries", retries cannot be nil.')
      end

      if @retries > 4
        invalid_properties.push('invalid value for "retries", must be smaller than or equal to 4.')
      end

      if @packages.nil?
        invalid_properties.push('invalid value for "packages", packages cannot be nil.')
      end

      if @function.nil?
        invalid_properties.push('invalid value for "function", function cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      return false if @disabled.nil?
      return false if @timeout.nil?
      return false if @env_vars.nil?
      return false if @runtime.nil?
      return false if @retries.nil?
      return false if @retries > 4
      return false if @packages.nil?
      return false if @function.nil?
      status_validator = EnumAttributeValidator.new('String', ["ready", "create-queued", "create-running", "create-failed", "update-queued", "update-running", "update-failed"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] retries Value to be assigned
    def retries=(retries)
      if retries.nil?
        fail ArgumentError, 'retries cannot be nil'
      end

      if retries > 4
        fail ArgumentError, 'invalid value for "retries", must be smaller than or equal to 4.'
      end

      @retries = retries
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["ready", "create-queued", "create-running", "create-failed", "update-queued", "update-running", "update-failed"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          type == o.type &&
          disabled == o.disabled &&
          timeout == o.timeout &&
          env_vars == o.env_vars &&
          runtime == o.runtime &&
          retries == o.retries &&
          packages == o.packages &&
          function == o.function &&
          context_version == o.context_version &&
          status == o.status &&
          options == o.options &&
          conditions == o.conditions &&
          created_at == o.created_at &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, type, disabled, timeout, env_vars, runtime, retries, packages, function, context_version, status, options, conditions, created_at, updated_at].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
