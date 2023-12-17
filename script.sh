#!/bin/bash
gitlab-rails runner "users = User.where.not(admin:true); users.each { |user|  user.blocked? ? nil  : user.block!; puts user.username }"
