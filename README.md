# Flutter App Template

_This is not intended to be a complete Flutter project, though it should build and install on any device with no further configuration._

Instead, this is intended to be a jumping-off point for new Flutter projects, particularly those for ActionSprout, Inc.

## Installation

Installing the template itself is as simple as _forking_ this repo to a new repository, then cloning that repository to your machine. In addition, the following tools are expected to be installed (and whose installation instructions are out of scope for this README):

- Dart 2.7
- Flutter 1.12.13
- Make [This repo was created with GNU Make 3.81 in mind, but other versions may work.]
- Git
- Git Large File Storage
- Ripgrep
- Entr
- `protoc` and `protoc-gen-dart`, if configuring with Protobuf generation in mind.

NOTE: As this template evolves, it is expected to track the latest Stable channel version of all of the above tools.

## Usage

While the Template itself should build and run, there are many fields you'll want to customize to your own project's needs. To do so, run the included `start_here` script, in the root directory:

```
$ ./start_here
```

From there, `make help` provides a high-level overview of the available Make targets.
