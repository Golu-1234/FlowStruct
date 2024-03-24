import Authentication from 0x05

transaction(make: String, model: String, year: UInt16, owner: Address) {

    prepare(signer: AuthAccount) {}

    execute {
        Authentication.addCarModel(make: make, model: model, year: year, owner: owner)
        log("Car model added successfully.")
    }
}
