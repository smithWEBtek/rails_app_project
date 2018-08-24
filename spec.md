Specifications for the Rails Assessment
Specs:

  x Using Ruby on Rails for the project
  x Include at least one has_many relationship (Distilleries have many Bourbons)
  x Include at least one belongs_to relationship (Bourbon belongs to a distillery)
 x Include at least one has_many through relationship (Bourbon has_many Stockists through BourbonStockists)
 x The "through" part of the has_many through includes at least one user submittable attribute (attribute_name : notes)
 x Include reasonable validations for simple model objects ( BourbonStockist notes attribute has validation for length, User's :username must be present and unique, Stockist :name must be present, Bourbon validates :name, presence: true, validates :age, numericality: true  )
 x Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature bourbon.rare URL: /bourbons/rare)
 x Include signup (using Bcrypt for password security )
 x Include login (using authenticate)
 x Include logout (using session destroy method)
 x Include third party signup/login (OmniAuth)
x Include nested resource show or index (distilleries/:id/bourbons)
x Include nested resource "new" form (URL e.g. distilleries/:id/bourbons/new)
x Include form display of validation errors (using fields_with_errors)

Confirm:

 x The application is pretty DRY
 x Limited logic in controllers
 x Views use helper methods if appropriate
 x Views use partials if appropriate
