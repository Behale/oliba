defmodule ChatApi.Repo.Migrations.FixSlackAuthorizations do
  use Ecto.Migration

  def change do
    alter table(:slack_authorizations) do
      modify(:access_token, :text, null: false)
      modify(:configuration_url, :text)
      modify(:webhook_url, :text)
    end
  end
end
