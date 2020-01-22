const InterUrbanService = require("../Services/inter-urban.service");

class InterUrbanTicketsController {

    constructor() { }

    IService = new InterUrbanService();

    // getTicketPrice = (typeObj) => {
    //     let zona = typeObj.zona;
    //     let kategoria = typeObj.kategoria;
    //     return this.Tservice.getTicketPrice(zona, kategoria);

    // }


    getTransportOptions = (typeObj) => {
        let nisja = typeObj.nisja;
        let destinacioni = typeObj.destinacioni;
        let zona = nisja + '-' + destinacioni;
        return this.IService.getTransportOptions(zona);

    }

}
module.exports = InterUrbanTicketsController;