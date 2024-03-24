import Authentication from 0x05

pub fun main(owner: Address): Authentication.CarModel {
    return Authentication.carModels[owner]!
}



