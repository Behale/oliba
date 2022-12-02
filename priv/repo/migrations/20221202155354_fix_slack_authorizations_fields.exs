defmodule ChatApi.Repo.Migrations.FixSlackAuthorizationsFields do
  use Ecto.Migration

  def change do
    alter table(:slack_authorizations) do
      modify(:scope, :text)
    end
  end
end
