import express from "express"
import mysql from "mysql"
import dbconf from "./conf/auth.js"

const app = express()
const port = 3010

const db = mysql.createConnection(dbconf)

db.connect()

app.get('/', (req, res) => {
  res.send('스마트앱 프로그래밍 과제 백엔드')
})

app.get('/monster', (req, res) => {
  const sql = `
    SELECT monster.name, monster.nickname, monster.weekness, species.species, GROUP_CONCAT(habitat.map) AS maps
    FROM monster
    LEFT JOIN monsterdex ON monster.id = monsterdex.monsterid
    LEFT JOIN habitat ON monsterdex.habitatid = habitat.id
    LEFT JOIN species ON monsterdex.speciesid = species.id
    GROUP BY monster.name, monster.nickname, monster.weekness, species.species;
  `;
  db.query(sql, (err, rows) => {
    if (err) {
      res.json({result: "error"})
      return console.log(err)
    }
    res.json(rows)
  })
})

app.listen(port, () => {
  console.log(`서버 실행됨 (port ${port})`)
})
