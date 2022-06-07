package todoApp.POST.todo

import future.keywords.in
import input.resource
import input.user

default allowed = false

allowed {
	allowedRoles := {"editor", "admin", "evil_genius"}
	some x in allowedRoles
	user.attributes.roles[_] == x
}
