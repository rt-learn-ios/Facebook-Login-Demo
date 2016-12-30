# Setup
1. Login to developers.facebook.com and create a new app.
2. Create the XCode project, do not use cocoa pods for the FB SDK
3. Follow instructions in Facebook Quickstart.
4. Create a bridging header to be able to access the Objective-C frameworks.
5. Must run in actual device to tesst getting welcomed immediately when already authenticated.



## Issues

- Using cocoapods result in error for FB SDK, manually adding frameworks should work.
- Facebook redirect does not load FB page in safari properly.  It worked after going to the FB app settings and adding a platform.
