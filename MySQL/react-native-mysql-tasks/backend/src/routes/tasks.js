import { Router } from 'express';
import {
  deleteTask,
  getTask,
  getTaskCount,
  getTasks,
  saveTask,
  updateTask,
} from '../controllers/tasks';

const router = Router();

/**
 * @swagger
 * /tasks:
 *  get:
 *    summary: Get all tasks
 */
router.get('/tasks', getTasks);

/**
 * @swagger
 * /tasks/count:
 *  get:
 *    summary: Get total tasks counter
 */
router.get('/tasks/count', getTaskCount);

/**
 * @swagger
 * /tasks:
 *  get:
 *    summary: Get a task by id
 */
router.get('/tasks/:id', getTask);

/**
 * @swagger
 * /tasks:
 *  post:
 *    summary: Saave a new task
 */
router.post('/tasks', saveTask);

/**
 * @swagger
 * /tasks:
 *  delete:
 *    summary: Delete a task by id
 */
router.delete('/tasks/:id', deleteTask);

/**
 * @swagger
 * /tasks:
 *  put:
 *    summary: Update a task by id
 */
router.put('/tasks/:id', updateTask);

export default router;
