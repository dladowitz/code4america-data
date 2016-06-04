require 'csv'


namespace :violation do
  desc "TODO"
  task import_csv: :environment do
    delete_old_records
    import_new_records
  end
end

private

def delete_old_records
  puts "Found #{Violation.count} violations in DB"
  puts "Deleting old Violaiton records"
  Violation.delete_all
end

def import_new_records
  puts "Starting Import"
  puts "Looking in 'public/Violations-2012.csv'"

  CSV.foreach("public/Violations-2012.csv") do |row|
    puts row
    convert_row_to_violation row
  end

  puts "#{Violation.count} violations created."
end

def convert_row_to_violation(row)
  unless row[0] == "violation_id"
     v = Violation.create(
                      id: row[0],
                      inspection_id: row[1],
                      category: row[2],
                      violation_date: row[3].to_date,
                      violation_date_closed: row[4].try(:to_date),
                      violation_type: row[5]
                      )
    puts "Violation created: #{v.violation_type}"
  end
end
