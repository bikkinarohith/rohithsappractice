const cds = require("@sap/cds/libx/_runtime/cds");

class CatalogService extends cds.ApplicationService {
    init(){
        const { Books } = cds.entities('sap.capire.bookshop')
        const {ListOfBooks} = this.entities

        //Add some discount for overstocked books
        this.after('each',ListOfBooks, book => {
            if (book.stock > 10) book.title += ' --11% discount!'
        })

        return super.init()
    }

}
modules.export = CatalogService