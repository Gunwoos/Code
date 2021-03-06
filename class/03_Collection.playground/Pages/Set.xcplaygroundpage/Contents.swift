//: [Previous](@previous)
import Foundation
/*:
 ## Set
 - Unordered Collection
 - Unique Value
 - Set Literal = Array Literal
 */

//let fruitsArr = ["Apple", "Orange", "Melon"]
//let numbersArr = [1, 2, 3, 3, 3]
//let emptyArr = [String]()


let fruitsSet: Set<String> = ["Apple", "Orange", "Melon"]
let numbers: Set = [1, 2, 3, 3, 3]
let emptySet = Set<String>()


//var number: Set = [1,2,3]
//number.insert(1)
//number

/*:
 ### Number of Elements
 */
fruitsSet.count

if !fruitsSet.isEmpty {
  print("\(fruitsSet.count) element(s)")
} else {
  print("empty set")
}

/*:
 ### Searching
 */
if fruitsSet.contains("Apple") {
  
}

let productSet: Set = ["iPhone", "iPad", "Mac Pro", "iPad Pro", "Macbook Pro"]
let filteredSet = productSet.filter { (element) -> Bool in
  return element.hasPrefix("i")
}

filteredSet


/*:
 ### Add a New Element
 */

//[1,2,3].append(1)
//[1,2,3].insert(2, at: 0)

var set: Set<String> = []
set.insert("Apple")
set

var result = set.insert("Orange")
result
set

result = set.insert("Or")
result
set


/*:
 ### Remove an Element
 */
set = ["Apple", "Orange", "Melon"]

if let removed = set.remove("Apple") {
  print("\(removed) has been removed!")
}

set

set.removeAll(keepingCapacity: true)


/*:
 ### Compare two sets
 */
var favoriteFruits = Set(["Apple", "Orange", "Melon"])
//var tropicalFruits = Set(["Banana", "Papaya", "Kiwi", "Pineapple"])
var tropicalFruits = Set(["Orange", "Melon", "Apple"])

if favoriteFruits == tropicalFruits {
  print("favoriteFruits == tropicalFruits")
} else {
  print("favoriteFruits != tropicalFruits")
}

if favoriteFruits.elementsEqual(tropicalFruits) {
  print("favoriteFruits == tropicalFruits")
} else {
  print("favoriteFruits != tropicalFruits")
}


/***************************************************
 elementsEqual vs ==
 ***************************************************/

var tropicalFruits1 = Set(["Apple", "Orange", "Melon"])
var tropicalFruits2 = Set(["Orange", "Melon", "Apple"])



/*:
 ### Subset & Supreset
 */
tropicalFruits = Set(["Banana", "Papaya", "Kiwi", "Pineapple"])
let yellowFruits = Set(["Banana"])
//let yellowFruits = Set(["Banana", "Papaya", "Kiwi", "Pineapple"])


if yellowFruits.isSubset(of: tropicalFruits) {
  print("yellowFruits ⊂ tropicalFruits")
} else {
  print("yellowFruits ⊄ tropicalFruits")
}

if yellowFruits.isStrictSubset(of: tropicalFruits) {
  print("yellowFruits ⊂ tropicalFruits")
} else {
  print("yellowFruits ⊄ tropicalFruits")
}

if tropicalFruits.isSuperset(of: yellowFruits) {
  print("tropicalFruits ⊃ yellowFruits")
} else {
  print("tropicalFruits ⊅ yellowFruits")
}

if tropicalFruits.isStrictSuperset(of: yellowFruits) {
  print("tropicalFruits ⊃ yellowFruits")
} else {
  print("tropicalFruits ⊅ yellowFruits")
}


/***************************************************
 isSuperset  vs  isStrictSuperset
 isSubset  vs  isStrictSubset
 ***************************************************/



/*:
 ---
 ## Fundamental Set Operations
 - intersection
 - union
 - subtracting
 - symmetricDifference
 ---
 */

//: ![Set](FundamentalSetOperations.png)



/*:
 ### intersection
 */
favoriteFruits = Set(["Apple", "Orange", "Melon", "Kiwi"])
tropicalFruits = Set(["Banana", "Papaya", "Kiwi", "Pineapple"])

if favoriteFruits.isDisjoint(with: tropicalFruits) {
  print("favoriteFruits ∩ tropicalFruits = ∅")
} else {
  print("favoriteFruits ∩ tropicalFruits")
}

let commonSet = favoriteFruits.intersection(tropicalFruits)
commonSet

tropicalFruits.formIntersection(favoriteFruits)
tropicalFruits


/*:
 ### union
 */
var unionSet = favoriteFruits.union(tropicalFruits)
unionSet


unionSet = Set(favoriteFruits)
unionSet.formUnion(tropicalFruits)
unionSet

/*:
 ### intersection
 */
let uncommonSet = favoriteFruits.subtracting(tropicalFruits)
uncommonSet

favoriteFruits.subtract(tropicalFruits)
favoriteFruits

/*:
 ### symmetricDifference
 */
let exclusiveSet = favoriteFruits.symmetricDifference(tropicalFruits)
exclusiveSet


favoriteFruits.formSymmetricDifference(tropicalFruits)
favoriteFruits



//: [Next](@next)
