const subjectsHTML = document.querySelector('.subjects');

const subjects = [
  {
    subjectName: 'Physics 4',
    grade: 7,
  },
  {
    subjectName: 'Calculus 3',
    grade: 8,
  },
  {
    subjectName: 'Data bases 3',
    grade: 9,
  },
  {
    subjectName: 'Discrete Mathematics 2',
    grade: 7,
  },
  {
    subjectName: 'Programming 4',
    grade: 8,
  },
];

const getSubject = (id) => {
  return new Promise((resolve, reject) => {
    let subject = subjects[id];
    if (subject === undefined) reject("The subject doesn't exist");
    else setTimeout(() => resolve(subject), Math.random() * 400);
  });
};

const fetchSubjects = async () => {
  let subject = [];

  for (let i = 0; i < subjects.length; i++) {
    subject[i] = await getSubject(i);
    let newHTMLCode = `
        <div class="subject">
            <div class="name">${subject[i].subjectName}</div>
            <div class="grade">${subject[i].grade}</div>
        </div>
    `;
    subjectsHTML.innerHTML += newHTMLCode;
  }
};

fetchSubjects();
