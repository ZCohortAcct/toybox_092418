[X] 1. Use the Ruby on Rails framework.

[] 2. Your models must include the following relationships:  
  > least one `has_many`
    - Toymaker has_many Toys
  > least one `belongs_to`
    - Toy belongs_to Toymaker
  > least two `has_many :through`
    - User has_many Toymakers, through Toys
    - Toymaker has_many Users, through Toys
  *> least one `many-to-many`
    *- implemented with has_many :through associations:
      *a) User has_many UsersToys
      *b) User has_many Toys, through UsersToys
      *c) Toy has_many UsersToys
      *c) Toy has_many Users, through UsersToys
      *d) has_many_and_belongs_to_many: toys
    *- join table must include a user-submittable attribute:    *a) status, i.e: old || new
      *a) functionality, i.e: working || broken

[X] 3. Models include reasonable validations for the simple attributes
  > Toy objects presence for name, size, theme
  > Toymaker objects presence for brand, kind, age

[] 4. Include at least one class level ActiveRecord `scope method`
  > Chainable scope method: Toymaker seeing it's users

[]  5. Provide standard user authentication
  > signup: #route
  > login: #route
  > logout: #route
  > password: objects have attribute

[] 6. OAuthentication system: Google

[X] 7. Include and make use of a nested resource with the appropriate RESTful URLs.
  > nested `new` route: '/toymakers/:toymaker_id/toys/new'
  > nested `index` route: '/toymakers/:toymaker_id/toys'

[X] 8. Forms should correctly display validation errors
  > fields enclosed within a fields_with_errors class
  > Error messages describing the validation failures are present within view

[] 9. DRY (Do-Not-Repeat-Yourself) rails app
  *> methods in your models, that are used in contorller: SCOPE METHOD
  > helper methods:
    - ApplicationHelper#error_messages_for
    - ToymakersHelper#toymaker_opening_year
    - ToysHelper#toymaker_link
  > partials:
    - application/error_messages

[X] 10. No use of scaffolding to build project
