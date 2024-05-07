using my.bookshop as my from '../db/data-model';

service CatalogService {
    entity Books as projection on my.Books;
    entity Authors as projection on my.Authors;
    // entity employees as projection on my.employees;
    entity Genres as projection on my.Genres;
    // entity poitems as projection on my.poitems;
    entity product as projection on my.product;
}
