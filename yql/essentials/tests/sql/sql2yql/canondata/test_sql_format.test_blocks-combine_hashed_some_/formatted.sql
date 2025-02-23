USE plato;

SELECT
    key,
    some(1u / (4u - subkey)),
    some(subkey),
    some(1u),
    some(1u / 0u)
FROM
    Input
GROUP BY
    key
ORDER BY
    key
;
