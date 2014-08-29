# TODO

## Optimize queries

budgets#show queries are really sloppy. It performs a query for: budget, lineitems, members, then for lineitems for each member

* Cache Totals
