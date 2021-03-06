const InterUrbanService = require("../Services/inter-urban.service");

class InterUrbanTicketsController {

    constructor() { }

    IService = new InterUrbanService();

    getDepartures = () => {
        return this.IService.getDepartures();

    }
    getArrivals = () => {
        return this.IService.getArrivals();

    }

    getTransportOptions = (typeObj) => {
        let nisja = typeObj.nisja;
        let destinacioni = typeObj.destinacioni;
        return this.IService.getTransportOptions(nisja, destinacioni);

    }

}
module.exports = InterUrbanTicketsController;