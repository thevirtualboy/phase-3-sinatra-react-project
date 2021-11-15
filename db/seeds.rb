Doctor.destroy_all
Patient.destroy_all

puts " Doctor Data.."

dr_jwatson = Doctor.create(first_name: "John", last_name: "Watson", specialty: "Surgery") 
dr_djones = Doctor.create(first_name: "Danielle", last_name: "Jones", specialty: "OBGYN")
dr_mvarshavski= Doctor.create(first_name: "Mikhail", last_name: "Varshavski", specialty: "family medicine")
dr_tstein = Doctor.create(first_name: "Timothy", last_name: "Stein", specialty: "Oncology")


puts " Patient Data"
sherlock_holmes = Patient.create(first_name: "Sherlock", last_name: "Holmes", patient_history: "Stab wound", doctor_id: dr_jwatson.id)
sam_gilmore = Patient.create(first_name: "Samira", last_name: "Gilmore", patient_history: "Influenza", doctor_id: dr_mvarshavski.id)
maggie_turner = Patient.create(first_name: "Margaret", last_name: "Turner", patient_history: "Lymphoma", doctor_id: dr_tstein.id)
percy_derolo = Patient.create(first_name: "Percival", last_name: "de Rolo", patient_history: "Psychosis", doctor_id: dr_mvarshavski.id)
ellie_oglenn = Patient.create(first_name: "Ellie", last_name: "O'Glenn", patient_history: "PCOS", doctor_id: dr_djones.id) 

puts "✅ Done seeding!"
