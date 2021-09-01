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
        path: "src/pages/{{pascalCase name}}/index.tsx",
        templateFile: "plop_templates/Page.tsx.hbs",
      },
      {
        type: "add",
        path: "src/pages/{{pascalCase name}}/hooks/index.ts",
        templateFile: "plop_templates/PageHooks.ts.hbs",
      },
      {
        type: "add",
        path: "src/pages/{{pascalCase name}}/useEstilos.ts",
        templateFile: "plop_templates/PageStyles.ts.hbs",
      },
    ],
  });
};
