const DBControll = require('./DBControll.service');

class InterUrbanService {

    constructor() {
    }

    db = new DBControll();

    getTransportOptions(nisja, destinacioni) {
        return this.db.runQuery(`SELECT * FROM e_store.produkt where pro_emer='interurban' and pro_qytetNisje='${nisja}' and pro_qytetMberritje='${destinacioni}' `);
    }

    getDepartures = () => {
        return this.db.runQuery(`SELECT pro_qytetNisje,pro_qytetMberritje FROM e_store.produkt where pro_emer='interurban'`);
    }

}
module.exports = InterUrbanService;