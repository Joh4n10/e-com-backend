const DBControll = require('./DBControll.service');

class InterUrbanService {

    constructor() {
    }

    db = new DBControll();

    getTransportOptions(nisja, destinacioni) {
        return this.db.runQuery(`SELECT pro_qytetNisje,pro_qytetMberritje,pro_vendNisje,pro_vendMberritje FROM e_store.produkt where pro_emer='interurban' and pro_qytetNisje='${nisja}' and pro_qytetMberritje='${destinacioni}' `);
    }

    getDepartures = () => {
        return this.db.runQuery(`SELECT distinct pro_qytetNisje FROM e_store.produkt where pro_emer='interurban'`);
    }
    getArrivals = () => {
        return this.db.runQuery(`SELECT distinct pro_qytetMberritje FROM e_store.produkt where pro_emer='interurban'`);
    }

}
module.exports = InterUrbanService;