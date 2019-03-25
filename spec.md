[X] 1. Use the Ruby on Rails framework.

[] 2. Your models must include the following relationships:  
  > least one `has_many`: Toymaker has_many Toys <br>
  > least one `belongs_to`: Toy belongs_to Toymaker <br>
  > least two `has_many :through`: User has_many Toymakers, through Toys & Toymaker has_many Users, through Toys <br>
  > least one `many-to-many` implemented with `has_many :through associations`: <br>
    *a) User has_many UsersToys <br>
    *b) User has_many Toys, through UsersToys <br>
    *c) Toy has_many UsersToys <br>
    *c) Toy has_many Users, through UsersToys <br>
  > join table must include a user-submittable attribute:    <br>
    *a) toy_rent_date & toy_return_date
    *b) functionality, i.e: working || broken

[X] 3. Models include reasonable validations for the simple attributes
  > Toy objects presence for name, size, theme
  > Toymaker objects presence for brand, kind, age

[] 4. Include at least one class level ActiveRecord `scope method`
  > Chainable scope method:

[X]  5. Provide standard user authentication
  > signup: new_user_registration_path <br>
  > login:  new_user_session_path <br>
  > logout: destroy_user_session_path <br>
  > password: objects have attribute

[X] 6. OAuthentication system: Amazon & Google

[X] 7. Include and make use of a nested resource with the appropriate RESTful URLs.
  > nested `new` route: '/toymakers/:toymaker_id/toys/new' <br>
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
