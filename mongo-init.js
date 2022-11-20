db.createUser(
    {
        user: process.env.MONGO_USER,
        pwd: process.env.MONGO_PASSWORD,
        roles: [
            {
                role: "dbOwner",
                db: "mern_ecommerce"
            }
        ]
    }
);