# RootControllerNavigation

It implements the clear and flexible way of App Root Navigation, that includes the Deeplink navigation. It will be able to access any part of your app from both inside the app or from any type of external deeplinks.

building the app with the following parts:

Splash screen: this screen will be presented right after the app is launched, and we can add animation here or make some service API calls.
Authentication part: standard screens to login, signup, reset password, confirm email, etc. The user session will be saved, so he doesn’t have to login every time he opens the app.
Main Part: the application itself.


All these application parts are isolated from each other and lives in the separate navigation stacks. So we can need to implement the following types of transitions:

Splash screen to Authentication screen, when no active user session exists.
Splash screen to Main screen, when the user session is valid. This is what will take place most of the time.
Main screen to Authentication screen, when the user logs out or the current session becomes invalid.
Deeplink Handling: open the app from the specific page based on pre-launch conditions — notifications, shortcuts, universal links, etc.
