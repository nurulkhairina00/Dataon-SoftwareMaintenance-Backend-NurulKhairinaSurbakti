var config = require("../config/db.config");

const api = (app, db, jwt) => {
  app.post(`/src/api/signin`, async (req, res) => {
    const { userID, password } = req.body;
    const sql = `SELECT * FROM users WHERE userid = $1`;
    await db
      .oneOrNone(sql, [userID])
      .then((data) => {
        if (!data) {
          return res.status(401).json({ error: "UserID not registered" });
        }

        const token = jwt.sign(data, config.secret, {
          expiresIn: "12h",
        });
        data.token = token;
        res.status(200).json(data);
      })
      .catch((err) => {
        throw err;
      });
  });
};

module.exports = api;
