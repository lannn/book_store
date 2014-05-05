 book can belong to an user. An user can buy/mark as favorite many books.

Book: 
name: must be present & unique
price: float, must be greater than 0
category: string. Valid category names: Science, Travel, Religion and Spirituality, Philosophy, Health and Fitness
tags: an array, separated by comma.
User: there will be normal users & admin users
first name: must be present
last name: must be present
email: must be present, valid
password: at least 8 chars

Admin user should be able to
log in/out
manage (read/create/modify/delete) all books
manage all users, including granting/revoking admin privileges.
User should be able to 
log in/out.
see all available books (with pagination, 10/page)
view a specific book’s information
search books based on categories

All code must be written following the MVC pattern and tested with Rspec.


Part 1: 
Build up Book & User model
Part 2:
  You only need to update User model & other necessary files, such as mailer, lib files, etc. You are not supposed to implement views & controllers at this phase yet. (admin invitation feature is required, user’s is optional)
admin’s invitation feature:
admin form: user’s first, last names, and email.
password is auto-generated (must be random & secured)
email template will contain the link to activate the account & the temporary password:
Hi <user_name>,
    Your account has been created in the BookMVC system by our admin. Below is your information:
  First name:
  Last name:
  Email:
  Temporary password:
    You can change the above information after logging in. Please click the link below to continue:
  <link>
Without clicking on the link, even knowing the email & password, these invited users won’t be able to log in.
upon clicking on the link, user will be automatically logged in & redirected to the editing profile page (in order to edit existing info + pw). he/she will not have to re-confirm the account again.
No confirmation email is sent out to these invited users.
user’s invitation feature:
user will be able to invite other users by email addresses.
he/she can enter multiple email address at once, separated by the comma.
the email template in this case only contain the link to the registration page. for eg:
Hi <email_addreess>,
  You are invited by <user_name> to register new account in the BookMVC system. Please click the link below to continue:
  <invited_link>
invited users, in this case, will go through the normal process of registration (still have to fill up the registration form, confirm the account)

Note: other users (not being invited) still have to confirm their email account and only after confirming accounts, they are able to log in the system.

