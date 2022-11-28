#!/bin/bash

set -e

echo "seeding database with admin email and password"
npm run seed:db "$ADMIN_EMAIL" "$ADMIN_PASSWORD"

echo "Seeding JWT_SECRET"
export JWT_SECRET=$(node -e "console.log(require('crypto').randomBytes(256).toString('base64'));")

echo "Starting server..."
npm start