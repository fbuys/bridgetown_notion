# Changelog for bridgetown_notion

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.2.0] - 2023-03-13

### Added

- Add new initializer config, backwards compatible with previous env implementation.
- Add activesupport dependecy for help with changing letter cases.

### Fixed

- Fix invalid URI bug. By returning a slug property from the posts factory we can ensure
that we don't attempt to create posts with spaces in the file name.

## [0.1.0] - 2023-02-04

### Added

- Retrieved basic frontmatter from Notion.
- Retrieve headings, paragraphs and bullet list content from Notion.
- Created post resources based on the retrieved data.
