class SecretsController < ApplicationController
  def create
    @secret = Secret.new(secret_params)
    if @secret.save
      flash[:answer] = 'Successfully added secret'
    else
      flash[:answer] = 'Try your dirty secret again'
    end
    redirect_to current_user
  end

  private
  def secret_params
    params.require(:secret).permit(:content).merge(user: current_user)
  end
end
