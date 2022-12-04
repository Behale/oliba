defmodule ChatApi.Repo.Migrations.AddRefreshTokenToSlackAuthorizations do
  use Ecto.Migration

  def change do
    alter table(:slack_authorizations) do
      add(:refresh_token, :text)
      add(:expires_at, :utc_datetime)
    end
  end
end
