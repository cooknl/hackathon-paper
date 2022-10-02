# Paper for SFTE 2022

<https://github.com/cooknl/hackathon-paper/blob/main/hackathon-cook-soileau-mccormack.html>

DISTRIBUTION STATEMENT A. Approved for public release: distribution unlimited. 96TW-2022-0053

- Use issues to track comments
- \*.qmd is source (Quarto markdown)
- \*.html is for preview only
- \*.docx is intended format for submission

## Workflow

[Quarto](https://quarto.org/) technical publishing software is installed on a local machine. The markdown file, \*.qmd, is rendered into HTML and DOCX formats on the local machine, then pushed to the repo.

## Bibliography

Bibliography collection on Zotero <https://www.zotero.org/groups/4761353/hackathon-paper>

As entries are added to the Zotero collection, the hackathon-paper collection is exported to the repo file `hackathon-paper.json` which is in CSL JSON format.

Zotero auto-creates a CSL `id` field with a Zotero URL, which is used for citing works in the body of the paper, per <https://quarto.org/docs/authoring/footnotes-and-citations.html#citations>. More human-readable ids could be made, but would increase the workflow burden by adding a step to re-apply ids after every export.
