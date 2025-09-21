```sql
straatnaam → Haarlemmerstraat → VARCHAR(100) NOT NULL 
 huisnummer → 63 → INT NOT NULL  
 postcode → 2312 DL → CHAR(7) NOT NULL  
 plaats → Leiden → VARCHAR(100) NOT NULL  
 land → Nederland → VARCHAR(100) NOT NULL 
 
 Primary key → elk adres uniek  
 AI → automatisch oplopend nummer  
 NOT NULL → mag niet leeg zijn  
 UNSIGNED → geen negatieve getallen  
UNIQUE → elke waarde is uniek  

CREATE TABLE Adres (
    adresID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    straatnaam VARCHAR(100) NOT NULL,
    huisnummer INT NOT NULL,
    postcode CHAR(7) NOT NULL,
    plaats VARCHAR(100) NOT NULL,
    land VARCHAR(100) NOT NULL
);