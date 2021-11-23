class CreateDogDashboards < ActiveRecord::Migration[6.1]
  def change
    create_table :dog_dashboards do |t|

      t.timestamps
    end
  end
end
