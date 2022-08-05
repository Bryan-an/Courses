import { Formik, Form } from "formik";
import React, { useEffect, useState } from "react";
import { useTasks } from "../context/TaskProvider";
import { useParams, useNavigate } from "react-router-dom";

export const TaskForm = () => {
  const { createTask, getTask, updateTask } = useTasks();
  const [task, setTask] = useState({
    title: "",
    description: "",
  });
  const params = useParams();
  const navigate = useNavigate();

  useEffect(() => {
    const loadTask = async () => {
      if (params.id) {
        const data = await getTask(params.id);
        setTask({
          title: data.title,
          description: data.description,
        });
      }
    };

    loadTask();
  }, []);

  return (
    <div>
      <Formik
        initialValues={task}
        onSubmit={async (values) => {
          if (params.id) {
            await updateTask(params.id, values);
          } else {
            await createTask(values);
          }

          navigate("/");
          setTask({
            title: "",
            description: "",
          });
        }}
        enableReinitialize={true}
      >
        {({ handleChange, handleBlur, handleSubmit, values, isSubmitting }) => (
          <Form
            onSubmit={handleSubmit}
            className="bg-slate-300 max-w-sm rounded-md p-4 mx-auto mt-10"
          >
            <h1 className="text-xl font-bold uppercase text-center">
              {params.id ? "Edit Task" : "New Task"}
            </h1>
            <label htmlFor="title" className="block mt-3">
              Title
            </label>
            <input
              type="text"
              name="title"
              placeholder="Write a title"
              onChange={handleChange}
              onBlur={handleBlur}
              value={values.title}
              className="px-2 py-1 rounded-sm w-full"
            />

            <label htmlFor="description" className="block mt-3">
              Description
            </label>
            <textarea
              name="description"
              rows="3"
              placeholder="Write a description"
              onChange={handleChange}
              onBlur={handleBlur}
              value={values.description}
              className="px-2 py-1 rounded-sm w-full"
            ></textarea>

            <button
              type="submit"
              disabled={isSubmitting}
              className="block bg-indigo-500 px-2 py-1 text-white w-full rounded-md mt-3"
            >
              {isSubmitting ? "Saving..." : "Save"}
            </button>
          </Form>
        )}
      </Formik>
    </div>
  );
};
