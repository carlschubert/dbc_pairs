Cohort.create(name: "Phoenix")

15.times do
  Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, cohort_id: 1)
end
