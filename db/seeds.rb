Treatment.destroy_all
Appointment.destroy_all
Pet.destroy_all
Vet.destroy_all
Owner.destroy_all

damian = Owner.create(
    first_name: "Damian",
    last_name: "Vega",
    email: "devega@gmail.com",
    phone: "954227287",
    address: "Dos. Nte. 1021, Lo Barnechea",
)

benjamin = Owner.create(
    first_name: "Benjamín",
    last_name: "Quintana",
    email: "benjaminquintanasilva24@gmail.com",
    phone: "978793796",
    address: "1701 Hipodromo Chile"
)

manuel = Owner.create(
    first_name: "Manuel",
    last_name: "Parada",
    email: "manuelparada@gmail.com",
    phone: "987227271",
    address: "Calle Samuel Izquierdo 2193, Quinta Normal",
)

niki = damian.pets.create!(
    name: "Niki",
    species: "Perro",
    breed: "Terranova",
    date_of_birth: Date.new(2012, 5, 20),
    weight: 30.0,
)

lili = benjamin.pets.create!(
    name: "Liliana Estefania Ernesto Matilde",
    species: "Gato",
    breed: "Marte",
    date_of_birth: Date.new(2024, 10, 12),
    weight: 5.0,
)

judy = manuel.pets.create!(
    name: "Judy Hopps",
    species: "Conejo",
    breed: "Angora",
    date_of_birth: Date.new(2020, 3, 15),
    weight: 2.5,
)

lulu = benjamin.pets.create!(
    name: "Lulu",
    species: "Gato",
    breed: "Siberiano",
    date_of_birth: Date.new(2019, 1, 24),
    weight: 4.5,
)

capuchina = manuel.pets.create!(
    name: "Capuchina",
    species: "Gato",
    breed: "Carey",
    date_of_birth: Date.new(2024, 2, 20),
    weight: 3.0,
)

dra_atria = Vet.create!(
    first_name: "Vannia",
    last_name: "Atria",
    email: "vanniaatria@gmail.com",
    phone: "987654321",
    specialization: "Cirugía",
)

dr_rivera = Vet.create!(
    first_name: "Mauricio",
    last_name: "Rivera",
    email: "mauricioh126@gmail.com",
    phone: "956032856",
    specialization: "Medicina General",
)

app1 = Appointment.create!(
    pet: niki,
    vet: dra_atria,
    date: DateTime.new(2024, 7, 15, 10, 0),
    reason: "Chequeo general",
    status: 2,
)

app2 = Appointment.create!(
    pet: lili,
    vet: dr_rivera,
    date: DateTime.new(2024, 7, 16, 14, 30),
    reason: "Vacunación",
    status: 1,
)

app3 = Appointment.create!(
    pet: judy,
    vet: dra_atria,
    date: DateTime.new(2024, 7, 17, 9, 0),
    reason: "Problemas digestivos",
    status: 0,
)

app4 = Appointment.create!(
    pet: lulu,
    vet: dr_rivera,
    date: DateTime.new(2024, 7, 18, 11, 0),
    reason: "Chequeo dental",
    status: 2,
)

app5 = Appointment.create!(
    pet: capuchina,
    vet: dra_atria,
    date: DateTime.new(2024, 7, 19, 15, 0),
    reason: "Chequeo general",
    status: 1,
)

app1.treatments.create!(
    name: "Desparasitación",
    medication: "Drontal",
    dosage: "1 comprimido cada 3 meses",
    notes: "Repetir en 3 meses",
    administered_at: DateTime.new(2024, 7, 15, 10, 30),
)

app2.treatments.create!(
    name: "Vacuna antirrábica",
    medication: "Rabvac 3",
    dosage: "1 dosis anual",
    notes: "Repetir anualmente",
    administered_at: DateTime.new(2024, 7, 16, 15, 0),
)   

app3.treatments.create!(
    name: "Tratamiento para problemas digestivos",
    medication: "Fortiflora",
    dosage: "1 sobre al día durante 7 días",
    notes: "Revisar evolución en una semana",
    administered_at: DateTime.new(2024, 7, 17, 9, 30),
)   

app4.treatments.create!(
    name: "Limpieza dental",
    medication: "Ultrasonido",
    dosage: "Procedimiento único",
    notes: "Revisar cada 6 meses",
    administered_at: DateTime.new(2024, 7, 18, 11, 30),
)

app5.treatments.create!(
    name: "Chequeo general",
    medication: "N/A",
    dosage: "N/A",
    notes: "Todo en orden, repetir chequeo anual",
    administered_at: DateTime.new(2024, 7, 19, 15, 30),
)

puts "Seed completado exitosamente!"
puts "Dueños: #{Owner.count}"
puts "Mascotas: #{Pet.count}"
puts "Veterinarios: #{Vet.count}"
puts "Citas: #{Appointment.count}"
puts "Tratamientos: #{Treatment.count}"
