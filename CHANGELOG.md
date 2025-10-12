# Changelog

All notable changes to this project will be documented in this file. See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

## [0.4.0](https://github.com/tnc1997/dart-nominatim-api-client/compare/v0.3.0...v0.4.0) (2025-10-12)

### ⚠ BREAKING CHANGES

* The keyword model has been converted from a class to an abstract class.
* The previously required fields in the `GeoJsonPoint` model class are now nullable.
* The `lat` and `lon` fields have been retyped from `String` to `double`.

### Features

* add details endpoint ([acdd83f](https://github.com/tnc1997/dart-nominatim-api-client/commit/acdd83f48542545322c86ccb254c03916a7bd492))

### Code Refactoring

* add address keyword model ([cdbbeb8](https://github.com/tnc1997/dart-nominatim-api-client/commit/cdbbeb8095a2d1078b7bf1f18ed08dcf17ebe1b0))
* add address line model ([10e46aa](https://github.com/tnc1997/dart-nominatim-api-client/commit/10e46aa3220807c4fdcc563ca2d24eadd0f93bf0))
* add base result model ([#3](https://github.com/tnc1997/dart-nominatim-api-client/issues/3)) ([d0adee3](https://github.com/tnc1997/dart-nominatim-api-client/commit/d0adee349aa8fe87d72e07911409478297b984f2))
* add details result model ([721b9cb](https://github.com/tnc1997/dart-nominatim-api-client/commit/721b9cbbb3660c6b97d132fcbb19429fe006996b))
* add geo json point model ([e624f82](https://github.com/tnc1997/dart-nominatim-api-client/commit/e624f82e8868db7e23b40559fe42dd6a2e73afac))
* add keyword model ([1c09084](https://github.com/tnc1997/dart-nominatim-api-client/commit/1c09084368cfb4466aa08f94d5aa731aa9ac7ca0))
* add name keyword model ([ea055f5](https://github.com/tnc1997/dart-nominatim-api-client/commit/ea055f509f1b04a37eb8e9db9583f09512241534))
* add nullability to geojson point fields ([#6](https://github.com/tnc1997/dart-nominatim-api-client/issues/6)) ([5086bb6](https://github.com/tnc1997/dart-nominatim-api-client/commit/5086bb6c655e9b7e6686d4bcff08c6f0479b5c33))
* add place type to address line model ([8b0217d](https://github.com/tnc1997/dart-nominatim-api-client/commit/8b0217de68af316e6ec48aee38f30f61a114f74c))
* convert keyword model to abstract base class ([c314c25](https://github.com/tnc1997/dart-nominatim-api-client/commit/c314c25d2de117d02d3fda813471631a754aba68))
* retype lat and lon from string to double ([#4](https://github.com/tnc1997/dart-nominatim-api-client/issues/4)) ([4ace68e](https://github.com/tnc1997/dart-nominatim-api-client/commit/4ace68edb47f8868ad9f75a4c9f1872558779e25))

## [0.3.0](https://github.com/tnc1997/dart-nominatim-api-client/compare/v0.2.0...v0.3.0) (2025-09-25)

### Features

* add lookup endpoint ([69e96eb](https://github.com/tnc1997/dart-nominatim-api-client/commit/69e96eba97fbd0cb924286b601723bcde72f8eed))

### Code Refactoring

* add lookup result model ([11390c3](https://github.com/tnc1997/dart-nominatim-api-client/commit/11390c3e7f00ba900341b58d0941f54f3e65a5fc))

## [0.2.0](https://github.com/tnc1997/dart-nominatim-api-client/compare/v0.1.0...v0.2.0) (2025-09-21)

### Features

* add reverse endpoint ([25d533d](https://github.com/tnc1997/dart-nominatim-api-client/commit/25d533dbee6363a0586223b49b32182725f60d90))

### Code Refactoring

* add reverse result model ([d26fa78](https://github.com/tnc1997/dart-nominatim-api-client/commit/d26fa78916414ba5393c06298d72377324a24004))

### Miscellaneous Chores

* update idea libraries ([2d4965b](https://github.com/tnc1997/dart-nominatim-api-client/commit/2d4965b094c488e91b7a761f1e75b1e628cd21f9))

## 0.1.0 (2025-09-09)

### Features

* add search endpoint ([e61f0ae](https://github.com/tnc1997/dart-nominatim-api-client/commit/e61f0ae6d5f2f95dde281099379daa592a1a24c0))

### Code Refactoring

* add authority uri constant ([bc2f45d](https://github.com/tnc1997/dart-nominatim-api-client/commit/bc2f45d34d0185177962860bcfe25cd711b466fa))
* add email address client ([3dcd55d](https://github.com/tnc1997/dart-nominatim-api-client/commit/3dcd55d6b0e6ae9dc135f3d2951b4578d2cbdc36))
* add geo json model ([fdb7069](https://github.com/tnc1997/dart-nominatim-api-client/commit/fdb706932e01f941beff77500b21fb07e4975bc7))
* add library and export directives ([a388947](https://github.com/tnc1997/dart-nominatim-api-client/commit/a388947b718f1fb2d66a3637cd2afbbe81ef9e36))
* add nominatim api client ([e30ebe7](https://github.com/tnc1997/dart-nominatim-api-client/commit/e30ebe786dd526250f62eba1877181191d6d75e5))
* add nominatim api client example ([296a2b4](https://github.com/tnc1997/dart-nominatim-api-client/commit/296a2b4c51947bdc6eabb2d51f6f3f85a901c518))
* add nominatim api client exception ([43eb2cc](https://github.com/tnc1997/dart-nominatim-api-client/commit/43eb2cc8f3eb398dc8ea3f7b2561d1bfdc8b57c2))
* add search result model ([e375bcc](https://github.com/tnc1997/dart-nominatim-api-client/commit/e375bcc907f17d1ef634ddac977045f7a87b4516))
* add user agent client ([a2f21d0](https://github.com/tnc1997/dart-nominatim-api-client/commit/a2f21d055615c3cc3463061427599cad16d9778c))
* remove binary file ([084f9e6](https://github.com/tnc1997/dart-nominatim-api-client/commit/084f9e6ffebb44c1bc023e60e7d0a990847eab4c))
* remove test file ([38929f5](https://github.com/tnc1997/dart-nominatim-api-client/commit/38929f56a226bffd2054f1531838efdf544c4bac))

### Documentation

* add getting started ([ac1286b](https://github.com/tnc1997/dart-nominatim-api-client/commit/ac1286bd8164ea9de2d61b1d2ff571069086ad34))

### Miscellaneous Chores

* initial commit ([4a34357](https://github.com/tnc1997/dart-nominatim-api-client/commit/4a3435747745b25ab03e1152cfd4bcb3ee475ae0))
* update idea libraries ([831fa77](https://github.com/tnc1997/dart-nominatim-api-client/commit/831fa77d87ff450b6c5e6cde41415c5bc30bf49b))
