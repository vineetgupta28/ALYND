class CreateCommitments < ActiveRecord::Migration
  def change
    create_table :commitments do |t|
      t.string :CommitmentCode
      t.datetime :CommitmentDate
      t.string :Title
      t.string :DueFrom
      t.string :DueTo
      t.string :Status
      t.datetime :CompletedDate
      t.datetime :DueDate
      t.timestamps
    end
  end
end
