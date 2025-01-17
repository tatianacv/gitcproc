COPY (
	SELECT DISTINCT On (change_summary.sha) change_summary.sha, 
			change_summary.project, 
			author, 
			author_email, 
			commit_date, 
			is_bug 
	FROM   change_summary 
	       INNER JOIN method_change_detail 
		       ON method_change_detail.sha = change_summary.sha 
	WHERE  change_summary.is_bug 
	       AND change_summary.commit_date >= '2014-03-18' 
	       AND ( "BaseStream_adds" > 0 
		      OR "BaseStream_dels" > 0 
		      OR "Collector_adds" > 0 
		      OR "Collector_dels" > 0 
		      OR "Characteristics_adds" > 0 
		      OR "Characteristics_dels" > 0 
		      OR "Collectors_adds" > 0 
		      OR "Collectors_dels" > 0 
		      OR "DoubleStream_adds" > 0 
		      OR "DoubleStream_dels" > 0 
		      OR "range__adds" > 0 
		      OR "range__dels" > 0 
		      OR "rangeClosed__adds" > 0 
		      OR "rangeClosed__dels" > 0 
		      OR "IntStream_adds" > 0 
		      OR "IntStream_dels" > 0 
		      OR "LongStream_adds" > 0 
		      OR "LongStream_dels" > 0 
		      OR "Spliterator_adds" > 0 
		      OR "Spliterator_dels" > 0 
		      OR "OfDouble_adds" > 0 
		      OR "OfDouble_dels" > 0 
		      OR "OfInt_adds" > 0 
		      OR "OfInt_dels" > 0 
		      OR "OfLong_adds" > 0 
		      OR "OfLong_dels" > 0 
		      OR "OfPrimitive_adds" > 0 
		      OR "OfPrimitive_dels" > 0 
		      OR "Stream_adds" > 0 
		      OR "Stream_dels" > 0 
		      OR "StreamSupport_adds" > 0 
		      OR "StreamSupport_dels" > 0 
		      OR "accumulator___adds" > 0 
		      OR "accumulator___dels" > 0 
		      OR "allMatch__adds" > 0 
		      OR "allMatch__dels" > 0 
		      OR "allProcesses___adds" > 0 
		      OR "allProcesses___dels" > 0 
		      OR "anyMatch__adds" > 0 
		      OR "anyMatch__dels" > 0 
		      OR "asDoubleStream___adds" > 0 
		      OR "asDoubleStream___dels" > 0 
		      OR "asIntStream___adds" > 0 
		      OR "asIntStream___dels" > 0 
		      OR "asLongStream___adds" > 0 
		      OR "asLongStream___dels" > 0 
		      OR "average___adds" > 0 
		      OR "average___dels" > 0 
		      OR "averagingDouble__adds" > 0 
		      OR "averagingDouble__dels" > 0 
		      OR "averagingInt__adds" > 0 
		      OR "averagingInt__dels" > 0 
		      OR "averagingLong__adds" > 0 
		      OR "averagingLong__dels" > 0 
		      OR "boxed___adds" > 0 
		      OR "boxed___dels" > 0 
		      OR "build___adds" > 0 
		      OR "build___dels" > 0 
		      OR "builder___adds" > 0 
		      OR "builder___dels" > 0 
		      OR "catalogs___adds" > 0 
		      OR "catalogs___dels" > 0 
		      OR "characteristics___adds" > 0 
		      OR "characteristics___dels" > 0 
		      OR "chars___adds" > 0 
		      OR "chars___dels" > 0 
		      OR "children___adds" > 0 
		      OR "children___dels" > 0 
		      OR "codePoints___adds" > 0 
		      OR "codePoints___dels" > 0 
		      OR "collect__adds" > 0 
		      OR "collect__dels" > 0 
		      OR "collectingAndThen__adds" > 0 
		      OR "collectingAndThen__dels" > 0 
		      OR "combiner___adds" > 0 
		      OR "combiner___dels" > 0 
		      OR "concat__adds" > 0 
		      OR "concat__dels" > 0 
		      OR "count___adds" > 0 
		      OR "count___dels" > 0 
		      OR "counting___adds" > 0 
		      OR "counting___dels" > 0 
		      OR "datesUntil__adds" > 0 
		      OR "datesUntil__dels" > 0 
		      OR "descendants___adds" > 0 
		      OR "descendants___dels" > 0 
		      OR "distinct___adds" > 0 
		      OR "distinct___dels" > 0 
		      OR "doubleStream__adds" > 0 
		      OR "doubleStream__dels" > 0 
		      OR "doubles__adds" > 0 
		      OR "doubles__dels" > 0 
		      OR "doubles___adds" > 0 
		      OR "doubles___dels" > 0 
		      OR "drivers___adds" > 0 
		      OR "drivers___dels" > 0 
		      OR "dropWhile__adds" > 0 
		      OR "dropWhile__dels" > 0 
		      OR "elementsAsStream___adds" > 0 
		      OR "elementsAsStream___dels" > 0 
		      OR "estimateSize___adds" > 0 
		      OR "estimateSize___dels" > 0 
		      OR "filter__adds" > 0 
		      OR "filter__dels" > 0 
		      OR "filtering__adds" > 0 
		      OR "filtering__dels" > 0 
		      OR "findAny___adds" > 0 
		      OR "findAny___dels" > 0 
		      OR "findFirst___adds" > 0 
		      OR "findFirst___dels" > 0 
		      OR "finisher___adds" > 0 
		      OR "finisher___dels" > 0 
		      OR "flatMap__adds" > 0 
		      OR "flatMap__dels" > 0 
		      OR "flatMapToDouble__adds" > 0 
		      OR "flatMapToDouble__dels" > 0 
		      OR "flatMapToInt__adds" > 0 
		      OR "flatMapToInt__dels" > 0 
		      OR "flatMapping__adds" > 0 
		      OR "flatMapping__dels" > 0 
		      OR "forEach__adds" > 0 
		      OR "forEach__dels" > 0 
		      OR "forEachOrdered__adds" > 0 
		      OR "forEachOrdered__dels" > 0 
		      OR "forEachRemaining__adds" > 0 
		      OR "forEachRemaining__dels" > 0 
		      OR "generate__adds" > 0 
		      OR "generate__dels" > 0 
		      OR "getComparator___adds" > 0 
		      OR "getComparator___dels" > 0 
		      OR "getExactSizeIfKnown___adds" > 0 
		      OR "getExactSizeIfKnown___dels" > 0 
		      OR "groupingBy__adds" > 0 
		      OR "groupingBy__dels" > 0 
		      OR "groupingByConcurrent__adds" > 0 
		      OR "groupingByConcurrent__dels" > 0 
		      OR "hasCharacteristics__adds" > 0 
		      OR "hasCharacteristics__dels" > 0 
		      OR "inetAddresses___adds" > 0 
		      OR "inetAddresses___dels" > 0 
		      OR "intStream__adds" > 0 
		      OR "intStream__dels" > 0 
		      OR "ints___adds" > 0 
		      OR "ints___dels" > 0 
		      OR "isParallel___adds" > 0 
		      OR "isParallel___dels" > 0 
		      OR "joining___adds" > 0 
		      OR "joining___dels" > 0 
		      OR "limit__adds" > 0 
		      OR "limit__dels" > 0 
		      OR "lines___adds" > 0 
		      OR "lines___dels" > 0 
		      OR "longStream__adds" > 0 
		      OR "longStream__dels" > 0 
		      OR "longs__adds" > 0 
		      OR "longs__dels" > 0 
		      OR "longs___adds" > 0 
		      OR "longs___dels" > 0 
		      OR "map__adds" > 0 
		      OR "map__dels" > 0 
		      OR "mapToInt__adds" > 0 
		      OR "mapToInt__dels" > 0 
		      OR "mapToLong__adds" > 0 
		      OR "mapToLong__dels" > 0 
		      OR "mapToObj__adds" > 0 
		      OR "mapToObj__dels" > 0 
		      OR "mapping__adds" > 0 
		      OR "mapping__dels" > 0 
		      OR "max___adds" > 0 
		      OR "max___dels" > 0 
		      OR "maxBy__adds" > 0 
		      OR "maxBy__dels" > 0 
		      OR "min___adds" > 0 
		      OR "min___dels" > 0 
		      OR "minBy__adds" > 0 
		      OR "minBy__dels" > 0 
		      OR "networkInterfaces___adds" > 0 
		      OR "networkInterfaces___dels" > 0 
		      OR "noneMatch__adds" > 0 
		      OR "noneMatch__dels" > 0 
		      OR "parallel___adds" > 0 
		      OR "parallel___dels" > 0 
		      OR "parallelStream___adds" > 0 
		      OR "parallelStream___dels" > 0 
		      OR "partitioningBy__adds" > 0 
		      OR "partitioningBy__dels" > 0 
		      OR "peek__adds" > 0 
		      OR "peek__dels" > 0 
		      OR "reduce__adds" > 0 
		      OR "reduce__dels" > 0 
		      OR "reducing__adds" > 0 
		      OR "reducing__dels" > 0 
		      OR "results___adds" > 0 
		      OR "results___dels" > 0 
		      OR "sequential___adds" > 0 
		      OR "sequential___dels" > 0 
		      OR "skip__adds" > 0 
		      OR "skip__dels" > 0 
		      OR "sorted___adds" > 0 
		      OR "sorted___dels" > 0 
		      OR "splitAsStream__adds" > 0 
		      OR "splitAsStream__dels" > 0 
		      OR "spliterator___adds" > 0 
		      OR "spliterator___dels" > 0 
		      OR "stream___adds" > 0 
		      OR "stream___dels" > 0 
		      OR "subInterfaces___adds" > 0 
		      OR "subInterfaces___dels" > 0 
		      OR "sum___adds" > 0 
		      OR "sum___dels" > 0 
		      OR "summarizingDouble__adds" > 0 
		      OR "summarizingDouble__dels" > 0 
		      OR "summarizingInt__adds" > 0 
		      OR "summarizingInt__dels" > 0 
		      OR "summarizingLong__adds" > 0 
		      OR "summarizingLong__dels" > 0 
		      OR "summaryStatistics___adds" > 0 
		      OR "summaryStatistics___dels" > 0 
		      OR "summingDouble__adds" > 0 
		      OR "summingDouble__dels" > 0 
		      OR "summingInt__adds" > 0 
		      OR "summingInt__dels" > 0 
		      OR "summingLong__adds" > 0 
		      OR "summingLong__dels" > 0 
		      OR "supplier___adds" > 0 
		      OR "supplier___dels" > 0 
		      OR "takeWhile__adds" > 0 
		      OR "takeWhile__dels" > 0 
		      OR "toArray___adds" > 0 
		      OR "toArray___dels" > 0 
		      OR "toCollection__adds" > 0 
		      OR "toCollection__dels" > 0 
		      OR "toConcurrentMap__adds" > 0 
		      OR "toConcurrentMap__dels" > 0 
		      OR "toList___adds" > 0 
		      OR "toList___dels" > 0 
		      OR "toMap__adds" > 0 
		      OR "toMap__dels" > 0 
		      OR "toSet___adds" > 0 
		      OR "toSet___dels" > 0 
		      OR "toUnmodifiableList___adds" > 0 
		      OR "toUnmodifiableList___dels" > 0 
		      OR "toUnmodifiableMap__adds" > 0 
		      OR "toUnmodifiableMap__dels" > 0 
		      OR "toUnmodifiableSet___adds" > 0 
		      OR "toUnmodifiableSet___dels" > 0 
		      OR "tokens___adds" > 0 
		      OR "tokens___dels" > 0 
		      OR "tryAdvance__adds" > 0 
		      OR "tryAdvance__dels" > 0 
		      OR "trySplit___adds" > 0 
		      OR "trySplit___dels" > 0 
		      OR "unordered___adds" > 0 
		      OR "unordered___dels" > 0 
		      OR "versionedStream___adds" > 0 
		      OR "versionedStream___dels" > 0 ) 
	ORDER  BY change_summary.sha, 
		  change_summary.project DESC, 
		  file_name, 
		  method_name 
) TO STDOUT with CSV HEADER
