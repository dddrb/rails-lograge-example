require 'elasticsearch/persistence/model'

module Elasticsearch
  class Lograge
    include Elasticsearch::Persistence::Model

    index_name 'lograge*'
    document_type 'fluentd'

    attribute :method,      String
    attribute :path,        String
    attribute :format,      String
    attribute :controller,  String
    attribute :action,      String
    attribute :status,      Integer
    attribute :duration,    Float
    attribute :view,        Float
    attribute :db,          Float
    attribute :username,    String
    attribute :message,     String
    attribute :timestamp,   Date
  end
end
