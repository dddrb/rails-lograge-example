class LogsController < ApplicationController
  def index
    @message = params[:message] || ""
    @logs = Elasticsearch::Lograge.search(query: {
      match: {message: @message}
    })
  end
end
