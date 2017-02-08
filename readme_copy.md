### MVP
```
- I should have a numbered interface for my application so that I can just type in a number to access different parts of my program.
- I should be allowed an option to view all the apartments so that I can get an overview of my properties.
- I should be allowed an option view all the tenants so that I can get an overview of my tenants
```

### Silver
```
- I should be allowed an option to view all the apartments with their tenants so that I can get an overview of Occupancy.
- I should be able to find where a tenant lives based on tenant name in case of emergencies.
```

### Gold
```
- I should be allowed to remove a tenant from an apartment so that I can track evictions/lease ends
- I should be allowed to add a tenant to an apartment so that I can track occupancy.
- I should be allowed to create a new apartment so that I can track new properties in my books
- I should be allowed to create a new tenant so that I can track new tenants in my books.
```

### Step 3c - Convert to using Ruby classes

Take all of the code you wrote in Part 1. Replace all variables of `apartments` with `ruby_apartments` and all `tenants` with `ruby_tenants`.

Most likely, all of the code broke when converting these variables. That's because we we're using the hash syntax during thursday nights HW. Convert the enumerables you wrote for Part 1 of this assignment. The enumerables should now use the getter methods you defined earlier.

### Step 3d - Convert the rest of your app

Convert however far you got with your CLI application into using Ruby Class Objects instead of hashes.

## BONUS

Create a class method `.all` for `Tenant` and/or `Apartment`. When called on the class it will return all of the instances that have been created through this class.
