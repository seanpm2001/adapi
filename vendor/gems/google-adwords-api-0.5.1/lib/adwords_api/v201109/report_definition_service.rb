#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.6.0 on 2011-12-02 16:42:57.

require 'ads_common/savon_service'
require 'adwords_api/v201109/report_definition_service_registry'
require 'adwords_api/extensions'

module AdwordsApi; module V201109; module ReportDefinitionService
  class ReportDefinitionService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201109'
      super(api, endpoint, namespace, :v201109)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def get_report_fields(*args, &block)
      return execute_action('get_report_fields', args, &block)
    end

    def download_report(*args)
      return AdwordsApi::Extensions.download_report(self, args)
    end

    def download_report_as_file(*args)
      return AdwordsApi::Extensions.download_report_as_file(self, args)
    end

    private

    def get_service_registry()
      return ReportDefinitionServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201109::ReportDefinitionService
    end
  end
end; end; end
