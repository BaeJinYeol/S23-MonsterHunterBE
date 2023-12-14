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
    res.send(monster)
})

app.listen(port, () => {
  console.log(`서버 실행됨 (port ${port})`)
})
