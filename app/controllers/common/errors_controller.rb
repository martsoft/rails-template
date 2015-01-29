class Common::ErrorsController < ApplicationController

  layout 'base'

  def show
    status    = request.path[1..-1]
    exception = env['action_dispatch.exception']
    message   = exception.nil? ? 'Server error' : exception.message

    Airbrake.notify(exception, airbrake_request_data) if !exception.nil? && status.to_i != 404

    logger.error ['[ERROR_CONTROLLER: Status=', status, ']:', message].join('')

    respond_to do |format|
      format.html { render action: status, status: status }
      format.json { render json: { result: 'error', code: status }, status: status }
      format.all  { render nothing: true }
    end
  end
end