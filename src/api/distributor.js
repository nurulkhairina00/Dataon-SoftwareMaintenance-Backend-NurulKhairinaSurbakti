const api = (app, db) => {
  app.get(`/src/api/distributor/get-data`, async (req, res) => {
    const sql = `SELECT * FROM distributor ORDER BY id ASC`;
    await db
      .any(sql)
      .then((data) => {
        res.status(200).json(data);
      })
      .catch((err) => {
        throw err;
      });
  });

  app.get(`/src/api/distributor/get-data/:id`, async (req, res) => {
    const sql = `SELECT * FROM distributor Where id ='${req.params.id}'`;
    await db
      .any(sql)
      .then((data) => {
        res.status(200).json(data);
      })
      .catch((err) => {
        throw err;
      });
  });

  app.post(`/src/api/distributor/insert`, async (req, res) => {
    const { distributor_name, city, state, country, phone, email } =
      req.body.input;
    const sql = `
            INSERT INTO distributor (
              distributor_name,
              city,
              state,
              country,
              phone,
              email,
              create_date
            ) VALUES (
                $1, $2, $3, $4, $5, $6, NOW()::timestamp
            )
        `;
    await db
      .none(sql, [distributor_name, city, state, country, phone, email])
      .then(() => {
        res.sendStatus(200);
      })
      .catch((err) => {
        throw err;
      });
  });

  app.put(`/src/api/distributor/update`, async (req, res) => {
    const { id, distributor_name, city, state, country, phone, email } =
      req.body.input;

    const sql = `
          UPDATE distributor
            SET
              distributor_name = $1,
              city = $2,
              state = $3,
              country = $4,
              phone = $5,
              email = $6,
              update_date = NOW()::timestamp
          WHERE id = $7
    `;
    await db
      .any(sql, [distributor_name, city, state, country, phone, email, id])
      .then(() => {
        res.sendStatus(200);
      })
      .catch((err) => {
        throw err;
      });
  });
};

module.exports = api;
