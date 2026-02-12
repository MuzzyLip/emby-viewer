# Emby Viewer

This is a cross-platform Emby Server media library client for iOS and Android.

## Architecture Goals

- Maintainable: split by business features, avoid large mixed files
- Testable: keep domain and use-case logic easy to unit test
- Scalable: add new features with a repeatable module template
- Replaceable: keep network, storage, and state layers loosely coupled

## Recommended Project Structure

```text
lib/
  main.dart
  src/
    app/                      # App assembly: bootstrap, router, theme, DI
      app.dart
      bootstrap.dart
      di/
      router/
      theme/

    core/                     # Cross-feature foundational capabilities
      constants/
      error/
      network/
      result/
      storage/

    features/                 # Feature modules
      auth/                   # Sign in and auth session
        data/
        domain/
        presentation/
      home/                   # Home Page
      library/                # Media browsing
      search/                 # Search Media
      settings/               # Preferences and diagnostics

    shared/                   # Reusable UI building blocks
      widgets/

test/
  unit/
  widget/
  integration/
```

## Layer Rules

- `presentation` depends on `domain`/`application`, not remote implementation details
- `domain` should stay framework-light and business-focused
- `data` handles API/local/cache orchestration and model mapping
- `core` is for shared technical utilities, not business rules

## Per-Feature Template

```text
features/<feature_name>/
  data/
    datasources/
    models/
    repositories/
  domain/
    entities/
    repositories/
    usecases/
  presentation/
    controllers/
    pages/
    widgets/
```

## Engineering Baseline

- Quality gates: `flutter analyze` + `dart format --set-exit-if-changed`
- Testing: require unit tests for core business use cases
- Delivery: conventional commits + PR template + code review checklist
- CI: analyze, test, coverage, and build verification
