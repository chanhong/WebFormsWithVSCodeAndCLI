## Accompanying sample code for the blog post 'Developing ASP.NET Web Forms with .NET Framework using CLI and VSCode'

[View Post](https://stevenknox.net/developing-asp-net-webforms-with-net-framework-using-cli-and-vscode)

To run the sample, clone this project then copy the dotnetframework.bat file to a location on your computer that your PATH environment variable is mapped to.

Open powershell and navigate to the root of this project folder then run the following

````
dotnetframework build business
dotnetframework build web
dotnetframework test web
````

This should build the Business Project then Build and Test the Web project.

Before you can run the Web project from the CLI, open the solution and launch the Web project manually. This will create the .vs/config/applicationhost.config file with IISEXpress configured.

You can now close Visual Studio and now run

````
dotnetframework run web
````

and thats it, you can now build, test and run your full .NET Framework applications from the CLI along with VS Code!