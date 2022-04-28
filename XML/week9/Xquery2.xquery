xquery version "1.0";

declare namespace ext="http://www.altova.com/xslt-extensions";

<author_list>
{
	for $bl in /book_list
		for $book in $bl/book
			return $book/author
}
</author_list>