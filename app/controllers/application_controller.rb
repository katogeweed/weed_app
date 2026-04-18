class ApplicationController < ActionController::Base
  # deviseのコントローラーが動く前に、独自のメソッドを実行する
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # ユーザー登録（sign_up）の際に、nameカラムの保存を許可する
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end