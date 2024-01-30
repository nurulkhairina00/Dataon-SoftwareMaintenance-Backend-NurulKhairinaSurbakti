const api = (app, db) => {
  app.get(`/src/api/bean/get-data`, async (req, res) => {
    const sql = `SELECT * FROM bean ORDER BY id ASC`;
    await db
      .any(sql)
      .then((data) => {
        res.status(200).json(data);
      })
      .catch((err) => {
        throw err;
      });
  });
};

module.exports = api;
