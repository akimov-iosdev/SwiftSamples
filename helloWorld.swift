//  Write some awesome Swift code, or import libraries like "Foundation",
//  "Dispatch", or "Glibc"
// ./swift /mnt/e/Projects/swift/helloWorld.swift

import Glibc

print("Hello world!")

struct Chessmen{
	var name: String
	var wins: UInt
	mutating func AddWins(newWins: UInt)
	{
		self.wins += newWins
	}
}

var oleg = Chessmen(name: "Олег", wins: 12)
print(oleg.name)
print(oleg.wins)
oleg.AddWins(newWins:3)

print(oleg.wins)