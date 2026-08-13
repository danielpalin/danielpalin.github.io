# Resume and SmolVLA Site Update Design

## Goal

Publish the August resume through this website and make the site's SmolVLA success-rate claim consistent with the resume.

## Scope

- Copy `/Users/danielpalin/Projects/papers-pdf/daniel_palin_resume_august.pdf` into `assets/pdf/daniel_palin_resume_august.pdf` without altering the source PDF.
- Update the landing-page and About-page resume links to the site-relative path `/assets/pdf/daniel_palin_resume_august.pdf`.
- Change the SmolVLA project summary and project-page body from 95% to 98% success.
- Do not rewrite the resume or make unrelated website copy changes.
- Do not hand-edit generated `_site` files; a Jekyll build is the source of truth for generated output.

## Implementation

The change remains deliberately static: one versioned PDF asset and three source files. No new component, dependency, or runtime behavior is required. Site-relative links keep the resume valid on GitHub Pages and in local Jekyll previews.

## Validation

- Before implementation, run targeted assertions that fail while the August PDF and 98% claims are absent.
- After implementation, assert that both source resume links use the August asset, both SmolVLA claims say 98%, and no stale June/95% values remain in authored source.
- Run the repository's Jekyll build and inspect the generated landing, About, and SmolVLA pages for the expected URL and percentage.
- Confirm the copied PDF is byte-identical to the supplied source.

## Publishing

Commit only the design and requested site files, then push the resulting commits to the personal site's `main` branch so GitHub Pages can deploy them.
