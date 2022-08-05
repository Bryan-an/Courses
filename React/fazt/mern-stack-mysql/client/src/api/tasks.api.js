import axios from "axios";

export const getTasksRequest = () => axios.get("http://localhost:4000/tasks");

export const createTaskRequest = (task) =>
  axios.post("http://localhost:4000/tasks", task);

export const deleteTaskRequest = (id) =>
  axios.delete(`http://localhost:4000/tasks/${id}`);

export const getTaskRequest = (id) =>
  axios.get(`http://localhost:4000/tasks/${id}`);

export const updateTaskRequest = (id, newFields) =>
  axios.put(`http://localhost:4000/tasks/${id}`, newFields);

export const toggleTaskDoneRequest = (id, done) =>
  axios.put(`http://localhost:4000/tasks/${id}`, { done });
