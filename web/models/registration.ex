defmodule Cms.Registration do
	import Ecto.Changeset, only: [put_change: 3]

	def create(changeset ,repo) do
		changeset
		|> put_change(:crypted_password, hashed_password(changeset.params["password"]))
	end

	defp hashed_password(password) do
		Comeonin.Bcryp.hashpwsalt(password)
	end
end