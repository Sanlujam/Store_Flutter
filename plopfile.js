module.exports = (plop) => {
  plop.setGenerator("widget", {
    description: "Create a widget",
    prompts: [
      {
        type: "input",
        name: "name",
        message: "What is your widget name?",
      },
    ],
    actions: [
      {
        type: "add",
        path: "lib/widgets/{{pascalCase name}}/{{pascalCase name}}.dart",
        templateFile: "plop_templates/Widget.dart.hbs",
      },
      {
        type: "add",
        path: "lib/widgets/{{pascalCase name}}/{{pascalCase name}}View.dart",
        templateFile: "plop_templates/WidgetView.dart.hbs",
      },
    ],
  });
  plop.setGenerator("page", {
    description: "Create a page",
    prompts: [
      {
        type: "input",
        name: "name",
        message: "What is your page name?",
      },
    ],
    actions: [
      {
        type: "add",
        path: "lib/pages/{{pascalCase name}}/{{pascalCase name}}.dart",
        templateFile: "plop_templates/Page.dart.hbs",
      },
      {
        type: "add",
        path: "lib/pages/{{pascalCase name}}/{{pascalCase name}}View.dart",
        templateFile: "plop_templates/PageView.dart.hbs",
      },
    ],
  });
};
