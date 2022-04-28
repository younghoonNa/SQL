xquery version "1.0";

declare namespace ext="http://www.altova.com/xslt-extensions";

for $course in /university/course
	where $course/credits > 3
		return <course_id> { $course/@id } </course_id>