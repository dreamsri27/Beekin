const express = require('express');
const cors = require('cors');
const mysql = require('mysql2/promise');
const app = express();
const PORT = process.env.PORT || 3000;

// Database connection configuration
const dbConfig = {
  host: 'localhost',
  user: '',
  password: '',
  database: 'beeui',
};
const corsOptions = {
    origin: '*', // Allow requests from your Angular frontend's development server
    methods: 'GET,POST', // Allow only specific HTTP methods
    credentials: true,// Enable credentials (cookies and authentication headers)
  };
  app.use(cors(corsOptions));
app.get('/api/fetchCurrentOpeningJobData', async (req, res) => {
  try {
    const connection = await mysql.createConnection(dbConfig);
    const [rows] = await connection.query('SELECT * FROM jobs');
    connection.end();
    const result = rows.map((row) => {
      return {
        id: row.id,
        type: row.type,
        domain: row.domain,
        desc:row.desc
      };
    });
    res.json({ condition: 'Success', result });
  } catch (err) {
    console.error(err);
    res.status(500).json({ condition: 'Error', error: err.message });
  }
});
app.use(express.json());
app.post('/api/saveApplicantData', async (req, res) => {
  try {
    const formData = req.body; 
    const connection = await mysql.createConnection(dbConfig);
    const [rows] = await connection.query('INSERT INTO applicantdata (name, education, experience_years, skills, projects,jobid,mail) VALUES (?, ?, ?, ?, ?,?,?)', [
      formData.name,
      formData.education,
      formData.experience,
      formData.skills,
      formData.projects,
      formData.jobid,
      formData.mail
    ]);
    res.status(200).json({ message: 'Form data saved successfully' });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: 'Error saving form data' });
  }
});

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
