const DBControll = require('./DBControll.service');

class InterUrbanService {

    constructor() {
    }

    db = new DBControll();

    getTransportOptions(zone) {
        return this.db.runQuery(`SELECT * FROM e_store.produkt where pro_zone='${zone}'`);
    }

}
module.exports = InterUrbanService;