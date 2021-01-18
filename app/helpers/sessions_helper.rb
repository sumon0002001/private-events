module SessionsHelper
  attr_writer :so_button, :si_button, :su_button
  attr_reader :so_button, :si_button, :su_button
  def topbar
    if !current_user
      @su_button = link_to 'Sign Up', new_user_path, class: 'btn btn-info text-dark font-weight-bold '
      @si_button = link_to 'Log in', login_path, class: 'btn btn-info text-dark font-weight-bold'
      @welcome = 'Invite People'
    else
      @so_button = link_to 'Log out', logout_path, class: 'btn btn-info text-dark font-weight-bold'
      @welcome = "Welcome #{current_user.name}!"
    end
  end
end
