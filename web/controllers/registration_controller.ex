defmodule Cms.RegistrationController do
	use Cms.Web, :controller
	alias Cms.User

	def new(conn, __params) do
		changeset = User.changeset(%User{})
		render conn, changeset: changeset
	end

	def create(conn, %{"user" => user_params}) do
		changeset = User.changeset(%User{}, user_params)

		case Cms.Registration.create(changeset, Cms.Repo) do
		   {:ok, changeset}->
				conn
				|> put_session(:current_user, changeset.id)
				|> put_flash(:info, "Your account was created")
				|> redirect(to: "/")
		   {:error, changeset} ->
		    	conn
		    	|> put_flash(:info, "Unable to create account")
		    	|> render("new.html", changeset: changeset)
		end
	end
end