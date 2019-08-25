class ReportsSales < ActiveRecord::Migration[5.2]
  def change
    create_table :reports_sales do |t|
      t.references :report
      t.references :sale
      t.timestamps
    end
  end
end
