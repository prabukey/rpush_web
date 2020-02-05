require_dependency 'rpush_web/application_controller'

class RpushWeb::FeedbacksController < ApplicationController
  skip_before_filter :verify_authenticity_token
  layout 'rpush_web'

  def index
    @collection = RpushWeb::Feedback.all.page(params[:page]).per(20)
  end

end
