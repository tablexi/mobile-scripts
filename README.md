# A collection of scripts frequently used on mobile projects

## Setup scripts

First install [homebrew][1], [ruby][3], and [Xcode][2]. 

`bundle exec setup` will setup iOS, Android and React Native environments.
If you only need a specific environment, `setup android`, `setup ios`, and `setup react-native` can be used individually.

## Development scripts

### React Native:

`bundle exec clean` tries to wipe the collection of caches in the react-native dev environment by:
  1. Reset `watchman`
  2. Remove anything prefixed with `react-` in the temp directory
  3. Remove `~/.babel.json`
  4. Remove `~/.rncache`
  5. Remove both ios and android build directories
  6. Remove the `node_modules` directory
  7. Clean the `npm` cache
  8. Run `npm install`, start the packager with the `--reset-cache` flag, and manually hit the packager url once it's running. 

`bundle exec start-dev` is an attempt to simplify the multiple commands needed to start the app. It takes a platform and a virtual device name if `android` is specified:
  - `start-dev ios`
  - `start-dev android Nexus5`
  
  It executes the following:

  - Fire up storybook first, with spawn to avoid it stealing your terminal
  - Briefly sleep so it's ready in time to attach itself to the socket before the packager is kicked off by the native app building
  - Start an emulator if one was specified
  - Run `react-native run-[platform]`
  - Open the storybook url in a browser


[1]: https://brew.sh/
[2]: https://developer.apple.com/xcode/
[3]: https://www.ruby-lang.org/en/

