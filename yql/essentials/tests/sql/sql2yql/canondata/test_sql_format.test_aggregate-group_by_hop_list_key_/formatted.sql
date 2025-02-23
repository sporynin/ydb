/* syntax version 1 */
/* postgres can not */
/* ytfile can not */
/* yt can not */
PRAGMA dq.AnalyticsHopping = "true";

SELECT
    user,
    HOP_START() AS ts,
    SUM(payload) AS payload
FROM
    plato.Input
GROUP COMPACT BY
    HOP (DateTime::FromSeconds(CAST(ts AS Uint32)), "PT10S", "PT10S", "PT10S"),
    user,
    AsList(user, "1")
;
