const readline = require("readline");
const Messages = require("./messages");
const Document = require("./document");
const Directory = require("./directory"),
  dir = new Directory();

let interface = readline.createInterface(process.stdin, process.stdout);

const tools = `
  Commands: :q = exit, :sa = save as, :s = save
  ---------------------------------------------
`,
  screen = `
                      ========================
                            Text editor.\n
                      ========================
                      Pick a choice:\n
                      1. Create new document
                      2. Open document
                      3. Close document\n> `;

mainScreen();

function mainScreen() {
  process.stdout.write("\033c");

  interface.question(screen, (res) => {
    switch (res.trim()) {
      case "1":
        createFile();
        break;
      case "2":
        openFileInterface();
        break;
      case "3":
        interface.close();
        break;
      default:
        mainScreen();
    }
  });
}

function createFile() {
  let file = new Document(dir.getPath());

  renderInterface(file);
  readCommands(file);
}

function openFileInterface() {}

function renderInterface(file, message) {
  process.stdout.write("\033c");
  file.getName() === ""
    ? console.log("| Untitled |")
    : console.log(`| ${file.getName()} |`);

  console.log(tools);

  if (message !== null) {
    console.log(message);
  }
  console.log(file.getContent());
}

function readCommands(file) {}
