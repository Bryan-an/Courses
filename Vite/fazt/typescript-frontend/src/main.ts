import "./style.css";
import "toastify-js/src/toastify.css";
import { v4 } from "uuid";
import Toastify from "toastify-js";

interface Task {
  id: string;
  title: string;
  description: string;
}

const taskForm = document.querySelector<HTMLFormElement>("#taskForm");
const tasksList = document.querySelector<HTMLDivElement>("#tasksList");

let tasks: Task[] = [];

taskForm?.addEventListener("submit", (e) => {
  e.preventDefault();

  let title = taskForm["title"] as unknown as HTMLInputElement;
  let description = taskForm["description"] as unknown as HTMLTextAreaElement;

  tasks.push({
    id: v4(),
    title: title.value,
    description: description.value,
  });

  localStorage.setItem("tasks", JSON.stringify(tasks));

  Toastify({
    text: "Task added",
    style: {
      background: "linear-gradient(to right, #00b09b, #96c93d)",
    },
  }).showToast();

  renderTasks(tasks);

  taskForm.reset();
  title.focus();
});

document.addEventListener("DOMContentLoaded", () => {
  tasks = JSON.parse(localStorage.getItem("tasks") || "[]");
  renderTasks(tasks);
});

function renderTasks(tasks: Task[]) {
  tasksList!.innerHTML = "";

  tasks.forEach((task) => {
    const taskElement = document.createElement("div");
    taskElement.className =
      "bg-zinc-900 mb-1 p-4 rounded-lg hover:bg-zinc-800 hover:cursor-pointer";

    const header = document.createElement("header");
    header.className = "flex justify-between";

    const title = document.createElement("span");
    title.innerText = task.title;

    const btnDelete = document.createElement("button");
    btnDelete.className = "bg-red-500 px-2 py-1 rounded-md hover:bg-red-700";
    btnDelete.innerText = "Delete";
    btnDelete.addEventListener("click", () => {
      let index = tasks.findIndex((t) => t.id === task.id);
      console.log(index);

      tasks.splice(index, 1);
      localStorage.setItem("tasks", JSON.stringify(tasks));
      renderTasks(tasks);
    });

    header.appendChild(title);
    header.appendChild(btnDelete);

    const description = document.createElement("span");
    description.innerText = task.description;

    taskElement.appendChild(header);
    taskElement.appendChild(description);

    const id = document.createElement("p");
    id.innerText = task.id;
    id.className = "text-gray-400 text-xs";
    taskElement.appendChild(id);

    tasksList?.appendChild(taskElement);
  });
}
