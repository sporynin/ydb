/* custom error:incompatible WeakField types: Optional<Int32!=Uint32>*/
USE plato;

SELECT
    WeakField(first_num, "int32", 42) -- first_num column have another type
FROM
    Input
;
