namespace my.bookshop;
using {
  Currency,
  managed,
  sap,
  cuid
} from '@sap/cds/common';

type PhoneNumber : String(30) @assert.format: '^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$';
type Email       : String(255) @assert.format: '^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$';



entity Books : managed,cuid {
  key ID : Integer;
  title  : String;
  descr : String;
  author_ID : Integer;
  stock : Integer;
  price : Decimal;
  currency_code : String;
  genre_ID : Integer;
}

entity Authors {
  key ID : Integer;
  name : String;
  dateOfBirth : Date;
  placeOfBirth : String;
  dateOfDeath : Date;
  placeOfDeath : String;
}

entity Genres {
  key ID : Integer;
  parent_ID : Integer;
  name : String;
}

entity purchaseorder {
  key PO_ID : String;
  CURRENCY_CODE : String;
  GROSS_AMOUNT : Decimal;
  NET_AMOUNT : Decimal;
  TAX_AMOUNT : Decimal;
  LIFECYCLE_STATUS : String(1);
  OVERALL_STATUS   : String(1);
}

// entity employees {
//   key ID : String; 
//   nameFirst     : String(40);
//   nameMiddle    : String(40);
//   nameLast      : String(40);
//   nameInitials  : String(40);
//   sex           : String;
//   language      : String(1);
//   phoneNumber   : PhoneNumber;
//   email         : Email;
//   loginName     : String(12);
//   currency_code : Currency;
//   salaryAmount  : Decimal;
//   accountNumber : String(16);
//   bankId        : String(20);
//   bankName      : String(64);
// }

entity product {
  key NODE_KEY       : String;
      PRODUCT_ID     : String(28);
      TYPE_CODE      : String(2);
      CATEGORY       : String(32);
      DESCRIPTION    : localized String(255);
      TAX_TARIF_CODE : Integer;
      MEASURE_UNIT   : String(2);
      WEIGHT_MEASURE : Decimal(5, 2);
      WEIGHT_UNIT    : String(2);
      CURRENCY_CODE  : String(4);
      PRICE          : Decimal(15, 2);
      WIDTH          : Decimal(5, 2);
      DEPTH          : Decimal(5, 2);
      HEIGHT         : Decimal(5, 2);
      DIM_UNIT       : String(2);
}



// entity poitems {
//   key PARENT_KEY_ID   : String;
//   PO_ITEM_POS  : Integer;
//   PRODUCT_GUID_NODE_KEY : String;
//   CURRENCY_CODE : String;
//   GROSS_AMOUNT : Decimal;
//   NET_AMOUNT : Decimal;
//   TAX_AMOUNT : Decimal;
// }




