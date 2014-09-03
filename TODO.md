# TODO

## Optimize queries

budgets#show queries are really sloppy. It performs a query for: budget, lineitems, members, then for lineitems for each member

* Cache Totals

## Design

* Improve normal usecase flow  
	ex: after creating a line item, user should go to budget
* Hide unecessary pages
* User should be able to add a purchase inline on budget page
* Make root more useful or get rid of it

## Server

* Implement capistrano for deployments
* Use env vars for secret vars