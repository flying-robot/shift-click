# shift.click

## Problem Statement

shift.click wants to build an authentication system that allows medical professionals to login to the service.

## Actors

- 10K+ medical professionals

## Requirements

1. The professional should be able to login with their email address and password.
2. Passwords must be hashed in the database and cannot be stored plaintext.
3. If the professional has not logged in recently, send them our "welcome back" email.
4. If the professional is deactivated, send them our "please reactivate" email.
5. If the professional supplies invalid credentials, notify us via a Slack channel.
6. All activities / decisions should be logged for auditing purposes.
