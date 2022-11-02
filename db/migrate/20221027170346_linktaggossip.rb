class Linktaggossip < ActiveRecord::Migration[7.0]
  def change
    add_reference :gossips, :tag, foreign_key: true
    add_reference :tags, :gossip, foreign_key: true
  end
end
