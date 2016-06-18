class CreateTeamsUsers < ActiveRecord::Migration
  def change
    create_table :teams_users do |t|
      t.references :team, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
    end
  end
end
