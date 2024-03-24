pub contract Authentication {

    pub var carModels: {Address: CarModel}
    
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

    pub fun addCarModel(make: String, model: String, year: UInt16, owner: Address) {
        let newCarModel = CarModel(_make: make, _model: model, _year: year, _owner: owner)
        self.carModels[owner] = newCarModel
    }

    init() {
        self.carModels = {}
    }
}
