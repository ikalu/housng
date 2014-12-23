options = ["New Freshman", "Freshman", "Transfer Student", "Sophomore", "Re-Admitted Student", "Junior", "Graduate Student", "Senior"]

options.map do |option|
  StudentStatus.find_or_create_by(status: option)
end

residential_halls = ["Asbury - Freshmen - Females", "Corson - Freshmen - Females", "Dunton - Sophomore - Females", "Kleist - Honor's College - Females", "High Rise - Freshmen, Sophomore, Junior, Senior - Males", "SRC North - Junior, Senior - Females", "SRC West - Junior, Senior - Females", "SRC East - Junior, Senior - Females", "SRC South - Honors College, Seniors - Male", "Millwood - Males or Females"]

residential_halls.map do |residential_hall|
  Hall.find_or_create_by(name: residential_hall, number_of_rooms: "130")
end

halls = Hall.all
halls.map do |hall|
  hall.number_of_rooms.times do |room_number|
    Room.find_or_create_by(room_number: room_number + 1, hall_id: hall.id)
  end
end
