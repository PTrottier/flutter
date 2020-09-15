# Flutter Dockerfile
## Start a new project
1. Run `flutter create app-name` where `app-name` is your app's name. This should be the same as the GitHub repository name and must follow Dart's package naming conventions/requirements.

2. Move the contents of the Flutter created folder `app-name` up one directory (to Gitpod's project directory)

3. Run your app using `flutter run -d web-server --web-port=8080 --web-hostname=0.0.0.0` (Gitpod will take of this for you when you use the workspace in the future)