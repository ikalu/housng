class PagesController < ApplicationController
  # skip_before_filter :require_login

  def static_page
    return not_found unless Dir.glob(Rails.root.join('app', 'views', 'pages', params[:page]).to_s + '.*').present?

    send(params[:page]) if self.respond_to?(params[:page])
    render template: "pages/#{params[:page]}"
  end

  def home
  end
end