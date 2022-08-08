=begin
#OneLogin API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 3.0.0-alpha.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/action'
require 'openapi_client/models/activate_factor_request'
require 'openapi_client/models/add_access_token_claim_request'
require 'openapi_client/models/add_client_app_request'
require 'openapi_client/models/add_role_users200_response_inner'
require 'openapi_client/models/add_scope_request'
require 'openapi_client/models/auth_method'
require 'openapi_client/models/auth_server_configuration'
require 'openapi_client/models/client_app'
require 'openapi_client/models/condition'
require 'openapi_client/models/connector'
require 'openapi_client/models/create_authorization_server_request'
require 'openapi_client/models/create_environment_variable_request'
require 'openapi_client/models/create_roles201_response_inner'
require 'openapi_client/models/device'
require 'openapi_client/models/enroll_factor_request'
require 'openapi_client/models/envvar'
require 'openapi_client/models/error_status'
require 'openapi_client/models/error_status_errors_inner'
require 'openapi_client/models/factor_inner'
require 'openapi_client/models/factor_inner_factor_data'
require 'openapi_client/models/generate_mfa_token200_response'
require 'openapi_client/models/generate_mfa_token422_response'
require 'openapi_client/models/generate_mfa_token422_response_details'
require 'openapi_client/models/generate_mfa_token_request'
require 'openapi_client/models/generate_saml_assertion_request'
require 'openapi_client/models/generate_token200_response'
require 'openapi_client/models/generate_token400_response'
require 'openapi_client/models/generate_token_request'
require 'openapi_client/models/get_authorization_server200_response'
require 'openapi_client/models/get_available_factors200_response_inner'
require 'openapi_client/models/get_client_apps200_response_inner'
require 'openapi_client/models/get_client_apps200_response_inner_scopes_inner'
require 'openapi_client/models/get_rate_limit200_response'
require 'openapi_client/models/get_rate_limit200_response_data'
require 'openapi_client/models/get_risk_score200_response'
require 'openapi_client/models/get_risk_score400_response'
require 'openapi_client/models/get_risk_score_request'
require 'openapi_client/models/get_score_insights200_response'
require 'openapi_client/models/get_score_insights200_response_scores'
require 'openapi_client/models/get_user_apps200_response_inner'
require 'openapi_client/models/hook'
require 'openapi_client/models/hook_conditions_inner'
require 'openapi_client/models/hook_options'
require 'openapi_client/models/hook_status'
require 'openapi_client/models/id'
require 'openapi_client/models/list_access_token_claims200_response_inner'
require 'openapi_client/models/list_actions200_response_inner'
require 'openapi_client/models/list_app_users200_response_inner'
require 'openapi_client/models/list_authorization_servers200_response_inner'
require 'openapi_client/models/list_authorization_servers200_response_inner_configuration'
require 'openapi_client/models/list_condition_operators200_response_inner'
require 'openapi_client/models/list_condition_values200_response_inner'
require 'openapi_client/models/list_conditions200_response_inner'
require 'openapi_client/models/list_mapping_condition_operators200_response_inner'
require 'openapi_client/models/list_mapping_conditions200_response_inner'
require 'openapi_client/models/list_scopes200_response_inner'
require 'openapi_client/models/log'
require 'openapi_client/models/mapping'
require 'openapi_client/models/registration'
require 'openapi_client/models/remove_role_users_request'
require 'openapi_client/models/revoke_token_request'
require 'openapi_client/models/risk_device'
require 'openapi_client/models/risk_rule'
require 'openapi_client/models/risk_user'
require 'openapi_client/models/role'
require 'openapi_client/models/rule'
require 'openapi_client/models/rule_id'
require 'openapi_client/models/schema'
require 'openapi_client/models/schema1'
require 'openapi_client/models/schema1_added_by'
require 'openapi_client/models/schema_provisioning'
require 'openapi_client/models/session'
require 'openapi_client/models/set_role_apps200_response_inner'
require 'openapi_client/models/source'
require 'openapi_client/models/status'
require 'openapi_client/models/status1'
require 'openapi_client/models/status2'
require 'openapi_client/models/status2_status'
require 'openapi_client/models/track_event_request'
require 'openapi_client/models/update_authorization_server400_response'
require 'openapi_client/models/update_client_app_request'
require 'openapi_client/models/update_environment_variable_request'
require 'openapi_client/models/update_role200_response'
require 'openapi_client/models/user'
require 'openapi_client/models/verify_enrollment_request'
require 'openapi_client/models/verify_factor_request'
require 'openapi_client/models/verify_factor_saml200_response'
require 'openapi_client/models/verify_factor_saml_request'
require 'openapi_client/models/verify_factor_voice200_response_inner'

# APIs
require 'openapi_client/api/default_api'

module OpenapiClient
  class << self
    # Customize default settings for the SDK using block.
    #   OpenapiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
