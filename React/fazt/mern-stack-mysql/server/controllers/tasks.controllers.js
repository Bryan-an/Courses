import { pool } from "../db.js";

const getTasks = async (_, res) => {
  try {
    const [rows] = await pool.query(
      "SELECT * FROM `tasks` ORDER BY `created_at` ASC"
    );

    res.json(rows);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

const getTask = async (req, res) => {
  try {
    const { id } = req.params;

    const [rows] = await pool.query("SELECT * FROM `tasks` WHERE `id` = ?", [
      id,
    ]);

    if (rows.length === 0) {
      return res.status(404).json({ message: "Task not found" });
    }

    res.json(rows[0]);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

const createTask = async (req, res) => {
  try {
    const { title, description } = req.body;

    const [result] = await pool.query(
      "INSERT INTO tasks (title, description) VALUES (?, ?)",
      [title, description]
    );

    res.json({
      id: result.insertId,
      title,
      description,
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

const updateTask = async (req, res) => {
  try {
    const {
      body,
      params: { id },
    } = req;

    const [rows] = await pool.query("UPDATE `tasks` SET ? WHERE id = ?", [
      body,
      id,
    ]);

    if (rows.affectedRows === 0) {
      return res.status(404).json({ message: "Task not found" });
    }

    res.json(rows);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

const deleteTask = async (req, res) => {
  try {
    const { id } = req.params;

    const [rows] = await pool.query("DELETE FROM `tasks` WHERE `id` = ?", [id]);

    if (rows.affectedRows === 0) {
      return res.status(404).json({ message: "Task not found" });
    }

    res.sendStatus(204);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export { getTasks, getTask, createTask, updateTask, deleteTask };
