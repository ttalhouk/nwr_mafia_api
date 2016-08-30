class LoginsController < ApplicationController
  def create
    admin = Admin.find_by(name:"Admin")
    # If the admin exists AND the password entered is correct.
    if admin && admin.authenticate(params[:password])
      # Save the admin id inside the browser cookie. This is how we keep the admin
      # logged in when they navigate around our website.
      session[:admin_id] = admin.id
      head :ok
    else
      response = {error: "Incorrect Password"}
      render json: response.to_json, status: 401
    end
  end

  def destroy
    session[:admin_id] = nil
    head :ok
  end
end
