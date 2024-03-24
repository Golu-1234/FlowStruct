## 1. Overview

This project implements a smart contract for Structs on the Diem blockchain. The contract includes a struct called CarModel, which represents information about car models such as make, model, year, and owner. Users can add new car models to the contract's storage and retrieve them using provided functionalities.

## 2. Contract Structure

Authentication: The main contract that manages car model authentication.
CarModel: A struct representing a car model with make, model, year, and owner information.
3. Deployment

Deploy the Authentication contract on the Diem blockchain. The contract includes an initializer that initializes the carModels storage as an empty dictionary.

## 4. Functionality

addCarModel: A function to add a new car model to the contract's storage.
transaction: A transaction script to call the addCarModel function and add a new car model to the contract's storage.

## 5. Scripting

main: A script to read and retrieve a specific CarModel from the contract's storage based on the owner's address.
Instructions:

Deploy the Authentication contract on the Diem blockchain.

Use the provided transaction script to add a new car model to the contract's storage.

Utilize the script main to retrieve a specific CarModel based on the owner's address.

Example Usage:

```
pub contract Authentication {
    pub struct CarModel {
        pub let make: String
        pub let model: String
        pub let year: UInt16
        pub let owner: Address

        init(_make: String, _model: String, _year: UInt16, _owner: Address) {
            self.make = _make
            self.model = _model
            self.year = _year
            self.owner = _owner
        }
    }

    // Storage variable
    pub var carModels: {Address: CarModel}

    // Function to add a new car model
    pub fun addCarModel(make: String, model: String, year: UInt16, owner: Address) {
        let newCarModel = CarModel(_make: make, _model: model, _year: year, _owner: owner)
        self.carModels[owner] = newCarModel
    }

    // Constructor
    init() {
        self.carModels = {}
    }
}
```
// Transaction script to add a new car model
```
transaction(make: String, model: String, year: UInt16, owner: Address) {
    prepare(signer: AuthAccount) {}

    execute {
        Authentication.addCarModel(make: make, model: model, year: year, owner: owner)
        log("Car model added successfully.")
    }
}```

// Script to read a specific CarModel based on owner's address


``` import Authentication from 0x05
pub fun main(owner: Address): Authentication.CarModel {
    return Authentication.carModels[owner]!
} ```
