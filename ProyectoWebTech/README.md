# README
### `Project delivery 1.2 Pedro Naretto and Roberto Arance`
`In this document we will answer the three las questions asked for the delivery, to see the queries we recomend you to run the following commands:`

`_rake db:reset_`
`_rake db:migrate_`
`_```rake db:model_queries```_`

`For the validations might be needed to insall a gem, for this might be needed to run bundle install`

`The last three questions:`
###
_First question (number 13):_
`If an event is deleted we will have an active record for "before_delete", that will send a message to all the users warning that the event got deleted, for the event and every object related to that model there is a delete cascade action that will erase every element that belonged to that event object.`

_Second question (number 14):_
`Just like the question before there is an option to cascade delete every object related to the organization, specially the model that relates the organization and the events, but the invitation will remain to the users that where invited through the organization.`

_Third question (number 15):_
`For each evnt in which the user is admin we will offer the user to relay the admin to other user of the organization, all the other elements that belongs to him, will be deleted, with the delete cascade `