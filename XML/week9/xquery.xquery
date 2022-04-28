xquery version "1.0";

declare namespace ext="http://www.altova.com/xslt-extensions";


for $book in /book_list/book
where $book/publisher = "Addison-Wesley"
	and $book/@year = "1992"
return $book/title

