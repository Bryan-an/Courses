import React from "react";
import { useTasks } from "../context/TaskProvider";
import { useNavigate } from "react-router-dom";

export const TaskCard = ({ task }) => {
  const { deleteTask, toggleTaskDone } = useTasks();
  const navigate = useNavigate();

  const handleDone = async (id) => {
    await toggleTaskDone(id);
  };

  return (
    <div className="bg-zinc-700 text-white rounded-md p-4">
      <header className="flex justify-between">
        <h2 className="text-sm font-bold">{task.title}</h2>
        <span>{task.done === 1 ? "✅" : "❌"}</span>
      </header>
      <p className="text-xs">{task.description}</p>
      <span>{task.created_at}</span>
      <div className="flex gap-x-1">
        <button
          className="bg-slate-300 px-2 py-1 rounded-md hover:bg-slate-400 text-black"
          onClick={() => deleteTask(task.id)}
        >
          Delete
        </button>
        <button
          className="bg-slate-300 px-2 py-1 rounded-md hover:bg-slate-400 text-black"
          onClick={() => navigate(`/edit/${task.id}`)}
        >
          Edit
        </button>
        <button
          className="bg-slate-300 px-2 py-1 rounded-md hover:bg-slate-400 text-black"
          onClick={() => handleDone(task.id)}
        >
          Toggle Task
        </button>
      </div>
    </div>
  );
};
