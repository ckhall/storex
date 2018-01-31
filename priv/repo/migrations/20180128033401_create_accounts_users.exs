defmodule Storex.Repo.Migrations.CreateAccountsUsers do
  use Ecto.Migration

  def change do
    create table(:accounts_users) do
      add :email, :string
      add :full_name, :string
      add :password_hash, :string
      add :is_admin, :boolean, default: false

      timestamps()
    end

    create index(:accounts_users, :email, unique: true)

  end
end
