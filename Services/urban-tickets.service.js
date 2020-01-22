const DBControll = require('./DBControll.service');

class TicketsService {

    constructor() {
    }

    db = new DBControll();

    getTicketPrice(zone, kategori) {
        return this.db.runQuery(`SELECT * FROM e_store.produkt where pro_qytetNisje='${zone}' and pro_emer='urban' and  pro_kategori='${kategori}'`);
    }

}
module.exports = TicketsService;