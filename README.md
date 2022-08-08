# openapi_client

OpenapiClient - the Ruby gem for the OneLogin API

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 3.0.0-alpha.1
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build openapi_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./openapi_client-1.0.0.gem
```

(for development, run `gem install --dev ./openapi_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'openapi_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'openapi_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'openapi_client'

api_instance = OpenapiClient::DefaultApi.new
authorization = 'authorization_example' # String | 
user_id = 56 # Integer | Set to the id of the user.
activate_factor_request = OpenapiClient::ActivateFactorRequest.new # ActivateFactorRequest | 

begin
  api_instance.activate_factor(authorization, user_id, activate_factor_request)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->activate_factor: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://onelogininc.onelogin.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OpenapiClient::DefaultApi* | [**activate_factor**](docs/DefaultApi.md#activate_factor) | **POST** /api/2/mfa/users/{user_id}/verifications | 
*OpenapiClient::DefaultApi* | [**add_access_token_claim**](docs/DefaultApi.md#add_access_token_claim) | **POST** /api/2/api_authorizations/{id}/claims | 
*OpenapiClient::DefaultApi* | [**add_client_app**](docs/DefaultApi.md#add_client_app) | **POST** /api/2/api_authorizations/{id}/clients | 
*OpenapiClient::DefaultApi* | [**add_role_admins**](docs/DefaultApi.md#add_role_admins) | **POST** /api/2/roles/{role_id}/admins | 
*OpenapiClient::DefaultApi* | [**add_role_users**](docs/DefaultApi.md#add_role_users) | **POST** /api/2/roles/{role_id}/users | 
*OpenapiClient::DefaultApi* | [**add_scope**](docs/DefaultApi.md#add_scope) | **POST** /api/2/api_authorizations/{id}/scopes | 
*OpenapiClient::DefaultApi* | [**bulk_mapping_sort**](docs/DefaultApi.md#bulk_mapping_sort) | **PUT** /api/2/apps/mappings/sort | 
*OpenapiClient::DefaultApi* | [**bulk_sort**](docs/DefaultApi.md#bulk_sort) | **PUT** /api/2/apps/{app_id}/rules/sort | 
*OpenapiClient::DefaultApi* | [**create_app**](docs/DefaultApi.md#create_app) | **POST** /api/2/apps | 
*OpenapiClient::DefaultApi* | [**create_authorization_server**](docs/DefaultApi.md#create_authorization_server) | **POST** /api/2/api_authorizations | 
*OpenapiClient::DefaultApi* | [**create_environment_variable**](docs/DefaultApi.md#create_environment_variable) | **POST** /api/2/hooks/envs | 
*OpenapiClient::DefaultApi* | [**create_hook**](docs/DefaultApi.md#create_hook) | **POST** /api/2/hooks | 
*OpenapiClient::DefaultApi* | [**create_mapping**](docs/DefaultApi.md#create_mapping) | **POST** /api/2/mappings | 
*OpenapiClient::DefaultApi* | [**create_risk_rule**](docs/DefaultApi.md#create_risk_rule) | **POST** /api/2/risk/rules | 
*OpenapiClient::DefaultApi* | [**create_roles**](docs/DefaultApi.md#create_roles) | **POST** /api/2/roles | 
*OpenapiClient::DefaultApi* | [**create_rule**](docs/DefaultApi.md#create_rule) | **POST** /api/2/apps/{app_id}/rules | 
*OpenapiClient::DefaultApi* | [**create_user**](docs/DefaultApi.md#create_user) | **POST** /api/2/users | 
*OpenapiClient::DefaultApi* | [**delete_access_token_claim**](docs/DefaultApi.md#delete_access_token_claim) | **DELETE** /api/2/api_authorizations/{id}/claims/{claim_id} | 
*OpenapiClient::DefaultApi* | [**delete_app**](docs/DefaultApi.md#delete_app) | **DELETE** /api/2/apps/{app_id} | 
*OpenapiClient::DefaultApi* | [**delete_app_parameter**](docs/DefaultApi.md#delete_app_parameter) | **DELETE** /api/2/apps/{app_id}/parameters/{parameter_id} | 
*OpenapiClient::DefaultApi* | [**delete_authorization_server**](docs/DefaultApi.md#delete_authorization_server) | **DELETE** /api/2/api_authorizations/{id} | 
*OpenapiClient::DefaultApi* | [**delete_environment_variable**](docs/DefaultApi.md#delete_environment_variable) | **DELETE** /api/2/hooks/envs/{envvar_id} | 
*OpenapiClient::DefaultApi* | [**delete_factor**](docs/DefaultApi.md#delete_factor) | **DELETE** /api/2/mfa/users/{user_id}/devices/{device_id} | 
*OpenapiClient::DefaultApi* | [**delete_hook**](docs/DefaultApi.md#delete_hook) | **DELETE** /api/2/hooks/{hook_id} | 
*OpenapiClient::DefaultApi* | [**delete_mapping**](docs/DefaultApi.md#delete_mapping) | **DELETE** /api/2/mappings/{mapping_id} | 
*OpenapiClient::DefaultApi* | [**delete_risk_rule**](docs/DefaultApi.md#delete_risk_rule) | **DELETE** /api/2/risk/rules/{risk_rule_id} | 
*OpenapiClient::DefaultApi* | [**delete_role**](docs/DefaultApi.md#delete_role) | **DELETE** /api/2/roles/{role_id} | 
*OpenapiClient::DefaultApi* | [**delete_rule**](docs/DefaultApi.md#delete_rule) | **DELETE** /api/2/apps/{app_id}/rules/{rule_id} | 
*OpenapiClient::DefaultApi* | [**delete_scope**](docs/DefaultApi.md#delete_scope) | **DELETE** /api/2/api_authorizations/{id}/scopes/{scope_id} | 
*OpenapiClient::DefaultApi* | [**delete_user**](docs/DefaultApi.md#delete_user) | **DELETE** /api/2/users/{user_id} | 
*OpenapiClient::DefaultApi* | [**dry_run_mapping**](docs/DefaultApi.md#dry_run_mapping) | **POST** /api/2/mappings/{mapping_id}/dryrun | 
*OpenapiClient::DefaultApi* | [**enroll_factor**](docs/DefaultApi.md#enroll_factor) | **POST** /api/2/mfa/users/{user_id}/registrations | 
*OpenapiClient::DefaultApi* | [**generate_mfa_token**](docs/DefaultApi.md#generate_mfa_token) | **POST** /api/2/mfs/users/{user_id}/mfa_token | 
*OpenapiClient::DefaultApi* | [**generate_saml_assertion**](docs/DefaultApi.md#generate_saml_assertion) | **POST** /api/2/saml_assertion | 
*OpenapiClient::DefaultApi* | [**generate_token**](docs/DefaultApi.md#generate_token) | **POST** /auth/oauth2/v2/token | 
*OpenapiClient::DefaultApi* | [**get_app**](docs/DefaultApi.md#get_app) | **GET** /api/2/apps/{app_id} | 
*OpenapiClient::DefaultApi* | [**get_authorization_server**](docs/DefaultApi.md#get_authorization_server) | **GET** /api/2/api_authorizations/{id} | 
*OpenapiClient::DefaultApi* | [**get_available_factors**](docs/DefaultApi.md#get_available_factors) | **GET** /api/2/mfa/users/{user_id}/factors | 
*OpenapiClient::DefaultApi* | [**get_client_apps**](docs/DefaultApi.md#get_client_apps) | **GET** /api/2/api_authorizations/{id}/clients | 
*OpenapiClient::DefaultApi* | [**get_enrolled_factors**](docs/DefaultApi.md#get_enrolled_factors) | **GET** /api/2/mfa/users/{user_id}/devices | 
*OpenapiClient::DefaultApi* | [**get_environment_variable**](docs/DefaultApi.md#get_environment_variable) | **GET** /api/2/hooks/envs/{envvar_id} | 
*OpenapiClient::DefaultApi* | [**get_hook**](docs/DefaultApi.md#get_hook) | **GET** /api/2/hooks/{hook_id} | 
*OpenapiClient::DefaultApi* | [**get_logs**](docs/DefaultApi.md#get_logs) | **GET** /api/2/hooks/{hook_id}/logs | 
*OpenapiClient::DefaultApi* | [**get_mapping**](docs/DefaultApi.md#get_mapping) | **GET** /api/2/mappings/{mapping_id} | 
*OpenapiClient::DefaultApi* | [**get_rate_limit**](docs/DefaultApi.md#get_rate_limit) | **GET** /auth/rate_limit | 
*OpenapiClient::DefaultApi* | [**get_risk_rule**](docs/DefaultApi.md#get_risk_rule) | **GET** /api/2/risk/rules/{risk_rule_id} | 
*OpenapiClient::DefaultApi* | [**get_risk_score**](docs/DefaultApi.md#get_risk_score) | **POST** /api/2/risk/verify | 
*OpenapiClient::DefaultApi* | [**get_role**](docs/DefaultApi.md#get_role) | **GET** /api/2/roles/{role_id} | 
*OpenapiClient::DefaultApi* | [**get_role_admins**](docs/DefaultApi.md#get_role_admins) | **GET** /api/2/roles/{role_id}/admins | 
*OpenapiClient::DefaultApi* | [**get_role_apps**](docs/DefaultApi.md#get_role_apps) | **GET** /api/2/roles/{role_id}/apps | 
*OpenapiClient::DefaultApi* | [**get_role_users**](docs/DefaultApi.md#get_role_users) | **GET** /api/2/roles/{role_id}/users | 
*OpenapiClient::DefaultApi* | [**get_rule**](docs/DefaultApi.md#get_rule) | **GET** /api/2/apps/{app_id}/rules/{rule_id} | 
*OpenapiClient::DefaultApi* | [**get_score_insights**](docs/DefaultApi.md#get_score_insights) | **GET** /api/2/risk/scores | 
*OpenapiClient::DefaultApi* | [**get_user**](docs/DefaultApi.md#get_user) | **GET** /api/2/users/{user_id} | 
*OpenapiClient::DefaultApi* | [**get_user_apps**](docs/DefaultApi.md#get_user_apps) | **GET** /api/2/users/{user_id}/apps | 
*OpenapiClient::DefaultApi* | [**list_access_token_claims**](docs/DefaultApi.md#list_access_token_claims) | **GET** /api/2/api_authorizations/{id}/claims | 
*OpenapiClient::DefaultApi* | [**list_action_values**](docs/DefaultApi.md#list_action_values) | **GET** /api/2/apps/{app_id}/rules/actions/{actuion_value}/values | 
*OpenapiClient::DefaultApi* | [**list_actions**](docs/DefaultApi.md#list_actions) | **GET** /api/2/apps/{app_id}/rules/actions | 
*OpenapiClient::DefaultApi* | [**list_app_users**](docs/DefaultApi.md#list_app_users) | **GET** /api/2/apps/{app_id}/users | 
*OpenapiClient::DefaultApi* | [**list_apps**](docs/DefaultApi.md#list_apps) | **GET** /api/2/apps | 
*OpenapiClient::DefaultApi* | [**list_authorization_servers**](docs/DefaultApi.md#list_authorization_servers) | **GET** /api/2/api_authorizations | 
*OpenapiClient::DefaultApi* | [**list_condition_operators**](docs/DefaultApi.md#list_condition_operators) | **GET** /api/2/apps/{app_id}/rules/conditions/{condition_value}/operators | 
*OpenapiClient::DefaultApi* | [**list_condition_values**](docs/DefaultApi.md#list_condition_values) | **GET** /api/2/apps/{app_id}/rules/conditions/{condition_value}/values | 
*OpenapiClient::DefaultApi* | [**list_conditions**](docs/DefaultApi.md#list_conditions) | **GET** /api/2/apps/{app_id}/rules/conditions | 
*OpenapiClient::DefaultApi* | [**list_connectors**](docs/DefaultApi.md#list_connectors) | **GET** /api/2/connectors | 
*OpenapiClient::DefaultApi* | [**list_environment_variables**](docs/DefaultApi.md#list_environment_variables) | **GET** /api/2/hooks/envs | 
*OpenapiClient::DefaultApi* | [**list_hooks**](docs/DefaultApi.md#list_hooks) | **GET** /api/2/hooks | 
*OpenapiClient::DefaultApi* | [**list_mapping_action_values**](docs/DefaultApi.md#list_mapping_action_values) | **GET** /api/2/apps/mappings/actions/{actuion_value}/values | 
*OpenapiClient::DefaultApi* | [**list_mapping_actions**](docs/DefaultApi.md#list_mapping_actions) | **GET** /api/2/apps/mappings/actions | 
*OpenapiClient::DefaultApi* | [**list_mapping_condition_operators**](docs/DefaultApi.md#list_mapping_condition_operators) | **GET** /api/2/apps/mappings/conditions/{condition_value}/operators | 
*OpenapiClient::DefaultApi* | [**list_mapping_condition_values**](docs/DefaultApi.md#list_mapping_condition_values) | **GET** /api/2/apps/mappings/conditions/{condition_value}/values | 
*OpenapiClient::DefaultApi* | [**list_mapping_conditions**](docs/DefaultApi.md#list_mapping_conditions) | **GET** /api/2/apps/mappings/conditions | 
*OpenapiClient::DefaultApi* | [**list_mappings**](docs/DefaultApi.md#list_mappings) | **GET** /api/2/mappings | 
*OpenapiClient::DefaultApi* | [**list_risk_rules**](docs/DefaultApi.md#list_risk_rules) | **GET** /api/2/risk/rules | 
*OpenapiClient::DefaultApi* | [**list_roles**](docs/DefaultApi.md#list_roles) | **GET** /api/2/roles | 
*OpenapiClient::DefaultApi* | [**list_rules**](docs/DefaultApi.md#list_rules) | **GET** /api/2/apps/{app_id}/rules | 
*OpenapiClient::DefaultApi* | [**list_scopes**](docs/DefaultApi.md#list_scopes) | **GET** /api/2/api_authorizations/{id}/scopes | 
*OpenapiClient::DefaultApi* | [**list_users**](docs/DefaultApi.md#list_users) | **GET** /api/2/users | 
*OpenapiClient::DefaultApi* | [**remove_client_app**](docs/DefaultApi.md#remove_client_app) | **DELETE** /api/2/api_authorizations/{id}/clients/{client_app_id} | 
*OpenapiClient::DefaultApi* | [**remove_role_admins**](docs/DefaultApi.md#remove_role_admins) | **DELETE** /api/2/roles/{role_id}/admins | 
*OpenapiClient::DefaultApi* | [**remove_role_users**](docs/DefaultApi.md#remove_role_users) | **DELETE** /api/2/roles/{role_id}/users | 
*OpenapiClient::DefaultApi* | [**revoke_token**](docs/DefaultApi.md#revoke_token) | **POST** /auth/oauth2/revoke | 
*OpenapiClient::DefaultApi* | [**set_role_apps**](docs/DefaultApi.md#set_role_apps) | **PUT** /api/2/roles/{role_id}/apps | 
*OpenapiClient::DefaultApi* | [**track_event**](docs/DefaultApi.md#track_event) | **POST** /api/2/risk/events | 
*OpenapiClient::DefaultApi* | [**update_access_token_claim**](docs/DefaultApi.md#update_access_token_claim) | **PUT** /api/2/api_authorizations/{id}/claims/{claim_id} | 
*OpenapiClient::DefaultApi* | [**update_app**](docs/DefaultApi.md#update_app) | **PUT** /api/2/apps/{app_id} | 
*OpenapiClient::DefaultApi* | [**update_authorization_server**](docs/DefaultApi.md#update_authorization_server) | **PUT** /api/2/api_authorizations/{id} | 
*OpenapiClient::DefaultApi* | [**update_client_app**](docs/DefaultApi.md#update_client_app) | **PUT** /api/2/api_authorizations/{id}/clients/{client_app_id} | 
*OpenapiClient::DefaultApi* | [**update_environment_variable**](docs/DefaultApi.md#update_environment_variable) | **PUT** /api/2/hooks/envs/{envvar_id} | 
*OpenapiClient::DefaultApi* | [**update_hook**](docs/DefaultApi.md#update_hook) | **PUT** /api/2/hooks/{hook_id} | 
*OpenapiClient::DefaultApi* | [**update_mapping**](docs/DefaultApi.md#update_mapping) | **PUT** /api/2/mappings/{mapping_id} | 
*OpenapiClient::DefaultApi* | [**update_risk_rule**](docs/DefaultApi.md#update_risk_rule) | **PUT** /api/2/risk/rules/{risk_rule_id} | 
*OpenapiClient::DefaultApi* | [**update_role**](docs/DefaultApi.md#update_role) | **PUT** /api/2/roles/{role_id} | 
*OpenapiClient::DefaultApi* | [**update_rule**](docs/DefaultApi.md#update_rule) | **PUT** /api/2/apps/{app_id}/rules/{rule_id} | 
*OpenapiClient::DefaultApi* | [**update_scope**](docs/DefaultApi.md#update_scope) | **PUT** /api/2/api_authorizations/{id}/scopes/{scope_id} | 
*OpenapiClient::DefaultApi* | [**update_user**](docs/DefaultApi.md#update_user) | **PUT** /api/2/users/{user_id} | 
*OpenapiClient::DefaultApi* | [**verify_enrollment**](docs/DefaultApi.md#verify_enrollment) | **PUT** /api/2/mfa/users/{user_id}/registrations/{registration_id} | 
*OpenapiClient::DefaultApi* | [**verify_enrollment_voice_protect**](docs/DefaultApi.md#verify_enrollment_voice_protect) | **GET** /api/2/mfa/users/{user_id}/registrations/{registration_id} | 
*OpenapiClient::DefaultApi* | [**verify_factor**](docs/DefaultApi.md#verify_factor) | **PUT** /api/2/mfa/users/{user_id}/verifications/{verification_id} | 
*OpenapiClient::DefaultApi* | [**verify_factor_saml**](docs/DefaultApi.md#verify_factor_saml) | **POST** /api/2/saml_assertion/verify_factor | 
*OpenapiClient::DefaultApi* | [**verify_factor_voice**](docs/DefaultApi.md#verify_factor_voice) | **GET** /api/2/mfa/users/{user_id}/verifications/{verification_id} | 


## Documentation for Models

 - [OpenapiClient::Action](docs/Action.md)
 - [OpenapiClient::ActivateFactorRequest](docs/ActivateFactorRequest.md)
 - [OpenapiClient::AddAccessTokenClaimRequest](docs/AddAccessTokenClaimRequest.md)
 - [OpenapiClient::AddClientAppRequest](docs/AddClientAppRequest.md)
 - [OpenapiClient::AddRoleUsers200ResponseInner](docs/AddRoleUsers200ResponseInner.md)
 - [OpenapiClient::AddScopeRequest](docs/AddScopeRequest.md)
 - [OpenapiClient::AuthMethod](docs/AuthMethod.md)
 - [OpenapiClient::AuthServerConfiguration](docs/AuthServerConfiguration.md)
 - [OpenapiClient::ClientApp](docs/ClientApp.md)
 - [OpenapiClient::Condition](docs/Condition.md)
 - [OpenapiClient::Connector](docs/Connector.md)
 - [OpenapiClient::CreateAuthorizationServerRequest](docs/CreateAuthorizationServerRequest.md)
 - [OpenapiClient::CreateEnvironmentVariableRequest](docs/CreateEnvironmentVariableRequest.md)
 - [OpenapiClient::CreateRoles201ResponseInner](docs/CreateRoles201ResponseInner.md)
 - [OpenapiClient::Device](docs/Device.md)
 - [OpenapiClient::EnrollFactorRequest](docs/EnrollFactorRequest.md)
 - [OpenapiClient::Envvar](docs/Envvar.md)
 - [OpenapiClient::ErrorStatus](docs/ErrorStatus.md)
 - [OpenapiClient::ErrorStatusErrorsInner](docs/ErrorStatusErrorsInner.md)
 - [OpenapiClient::FactorInner](docs/FactorInner.md)
 - [OpenapiClient::FactorInnerFactorData](docs/FactorInnerFactorData.md)
 - [OpenapiClient::GenerateMfaToken200Response](docs/GenerateMfaToken200Response.md)
 - [OpenapiClient::GenerateMfaToken422Response](docs/GenerateMfaToken422Response.md)
 - [OpenapiClient::GenerateMfaToken422ResponseDetails](docs/GenerateMfaToken422ResponseDetails.md)
 - [OpenapiClient::GenerateMfaTokenRequest](docs/GenerateMfaTokenRequest.md)
 - [OpenapiClient::GenerateSamlAssertionRequest](docs/GenerateSamlAssertionRequest.md)
 - [OpenapiClient::GenerateToken200Response](docs/GenerateToken200Response.md)
 - [OpenapiClient::GenerateToken400Response](docs/GenerateToken400Response.md)
 - [OpenapiClient::GenerateTokenRequest](docs/GenerateTokenRequest.md)
 - [OpenapiClient::GetAuthorizationServer200Response](docs/GetAuthorizationServer200Response.md)
 - [OpenapiClient::GetAvailableFactors200ResponseInner](docs/GetAvailableFactors200ResponseInner.md)
 - [OpenapiClient::GetClientApps200ResponseInner](docs/GetClientApps200ResponseInner.md)
 - [OpenapiClient::GetClientApps200ResponseInnerScopesInner](docs/GetClientApps200ResponseInnerScopesInner.md)
 - [OpenapiClient::GetRateLimit200Response](docs/GetRateLimit200Response.md)
 - [OpenapiClient::GetRateLimit200ResponseData](docs/GetRateLimit200ResponseData.md)
 - [OpenapiClient::GetRiskScore200Response](docs/GetRiskScore200Response.md)
 - [OpenapiClient::GetRiskScore400Response](docs/GetRiskScore400Response.md)
 - [OpenapiClient::GetRiskScoreRequest](docs/GetRiskScoreRequest.md)
 - [OpenapiClient::GetScoreInsights200Response](docs/GetScoreInsights200Response.md)
 - [OpenapiClient::GetScoreInsights200ResponseScores](docs/GetScoreInsights200ResponseScores.md)
 - [OpenapiClient::GetUserApps200ResponseInner](docs/GetUserApps200ResponseInner.md)
 - [OpenapiClient::Hook](docs/Hook.md)
 - [OpenapiClient::HookConditionsInner](docs/HookConditionsInner.md)
 - [OpenapiClient::HookOptions](docs/HookOptions.md)
 - [OpenapiClient::HookStatus](docs/HookStatus.md)
 - [OpenapiClient::Id](docs/Id.md)
 - [OpenapiClient::ListAccessTokenClaims200ResponseInner](docs/ListAccessTokenClaims200ResponseInner.md)
 - [OpenapiClient::ListActions200ResponseInner](docs/ListActions200ResponseInner.md)
 - [OpenapiClient::ListAppUsers200ResponseInner](docs/ListAppUsers200ResponseInner.md)
 - [OpenapiClient::ListAuthorizationServers200ResponseInner](docs/ListAuthorizationServers200ResponseInner.md)
 - [OpenapiClient::ListAuthorizationServers200ResponseInnerConfiguration](docs/ListAuthorizationServers200ResponseInnerConfiguration.md)
 - [OpenapiClient::ListConditionOperators200ResponseInner](docs/ListConditionOperators200ResponseInner.md)
 - [OpenapiClient::ListConditionValues200ResponseInner](docs/ListConditionValues200ResponseInner.md)
 - [OpenapiClient::ListConditions200ResponseInner](docs/ListConditions200ResponseInner.md)
 - [OpenapiClient::ListMappingConditionOperators200ResponseInner](docs/ListMappingConditionOperators200ResponseInner.md)
 - [OpenapiClient::ListMappingConditions200ResponseInner](docs/ListMappingConditions200ResponseInner.md)
 - [OpenapiClient::ListScopes200ResponseInner](docs/ListScopes200ResponseInner.md)
 - [OpenapiClient::Log](docs/Log.md)
 - [OpenapiClient::Mapping](docs/Mapping.md)
 - [OpenapiClient::Registration](docs/Registration.md)
 - [OpenapiClient::RemoveRoleUsersRequest](docs/RemoveRoleUsersRequest.md)
 - [OpenapiClient::RevokeTokenRequest](docs/RevokeTokenRequest.md)
 - [OpenapiClient::RiskDevice](docs/RiskDevice.md)
 - [OpenapiClient::RiskRule](docs/RiskRule.md)
 - [OpenapiClient::RiskUser](docs/RiskUser.md)
 - [OpenapiClient::Role](docs/Role.md)
 - [OpenapiClient::Rule](docs/Rule.md)
 - [OpenapiClient::RuleId](docs/RuleId.md)
 - [OpenapiClient::Schema](docs/Schema.md)
 - [OpenapiClient::Schema1](docs/Schema1.md)
 - [OpenapiClient::Schema1AddedBy](docs/Schema1AddedBy.md)
 - [OpenapiClient::SchemaProvisioning](docs/SchemaProvisioning.md)
 - [OpenapiClient::Session](docs/Session.md)
 - [OpenapiClient::SetRoleApps200ResponseInner](docs/SetRoleApps200ResponseInner.md)
 - [OpenapiClient::Source](docs/Source.md)
 - [OpenapiClient::Status](docs/Status.md)
 - [OpenapiClient::Status1](docs/Status1.md)
 - [OpenapiClient::Status2](docs/Status2.md)
 - [OpenapiClient::Status2Status](docs/Status2Status.md)
 - [OpenapiClient::TrackEventRequest](docs/TrackEventRequest.md)
 - [OpenapiClient::UpdateAuthorizationServer400Response](docs/UpdateAuthorizationServer400Response.md)
 - [OpenapiClient::UpdateClientAppRequest](docs/UpdateClientAppRequest.md)
 - [OpenapiClient::UpdateEnvironmentVariableRequest](docs/UpdateEnvironmentVariableRequest.md)
 - [OpenapiClient::UpdateRole200Response](docs/UpdateRole200Response.md)
 - [OpenapiClient::User](docs/User.md)
 - [OpenapiClient::VerifyEnrollmentRequest](docs/VerifyEnrollmentRequest.md)
 - [OpenapiClient::VerifyFactorRequest](docs/VerifyFactorRequest.md)
 - [OpenapiClient::VerifyFactorSaml200Response](docs/VerifyFactorSaml200Response.md)
 - [OpenapiClient::VerifyFactorSamlRequest](docs/VerifyFactorSamlRequest.md)
 - [OpenapiClient::VerifyFactorVoice200ResponseInner](docs/VerifyFactorVoice200ResponseInner.md)


## Documentation for Authorization

 All endpoints do not require authorization.

