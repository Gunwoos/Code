//: # Nested Codable
import Foundation

struct Astronauts: Decodable {
  let message: String
  let number: Int
  let people: [Person]
  
  struct Person: Decodable {
    let name: String
    let craft: String
  }
}

let jsonString = """
{
  "message": "success",
  "number": 3,
  "people": [
    {
      "craft": "ISS",
      "name": "Anton Shkaplerov"
    },
    {
      "craft": "ISS",
      "name": "Scott Tingle"
    },
    {
      "craft": "ISS",
      "name": "Norishige Kanai"
    }
  ]
}
"""

let jsonData = jsonString.data(using: .utf8)!

do {
    let astronauts = try JSONDecoder().decode(Astronauts.self, from: jsonData)
    print(astronauts.message)
    print(astronauts.number)
    astronauts.people.forEach { print($0)}
    astronauts.people[0].name
    
    let person = try JSONDecoder().decode(Astronauts.Person.self, from: jsonData)
    print(person.craft)
    print(person.name)
    
    
} catch {
  print(error.localizedDescription)
}



//: [Table of Contents](Contents) | [Previous](@previous) | [Next](@next)
