# Homebrew Tap for QuickRecorder

This tap provides the QuickRecorder macOS screen recording application.

## Installation

```bash
brew tap hisgarden/tap
brew install --cask quickrecorder
```

Or install directly without tapping:

```bash
brew install --cask hisgarden/tap/quickrecorder
```

## What is QuickRecorder?

QuickRecorder is a lightweight and high-performance screen recorder for macOS with the following features:

- Lossless screen/window/application recording
- Driver-free audio loopback recording
- Mouse highlighting and screen magnifier
- Presenter Overlay support (macOS 14+)
- HEVC with Alpha channel support

## Fork Information

This tap provides the enhanced fork maintained by [hisgarden](https://github.com/hisgarden/QuickRecorder), which includes:

- Dependency minimization (40% smaller binary)
- Enhanced permission handling with auto-restart
- Sentry integration for development builds
- Build system improvements (Taskfile)
- SBOM support and enhanced test suite

For the original upstream repository, visit: [lihaoyun6/QuickRecorder](https://github.com/lihaoyun6/QuickRecorder)
