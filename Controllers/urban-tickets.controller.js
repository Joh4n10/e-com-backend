const TicketsService = require("../Services/urban-tickets.service");

class UrbanTicketsController {

    constructor() { }

    Tservice = new TicketsService();

    getTicketPrice = (typeObj) => {
        let zona = typeObj.zona;
        let kategoria = typeObj.kategoria;
        return this.Tservice.getTicketPrice(zona, kategoria);

    }

}
module.exports = UrbanTicketsController;