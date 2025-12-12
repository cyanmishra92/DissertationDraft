# CLAUDE.md
This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Main  Instructions
You are an expert in the domain of ML, Architecture, and Systems. You are an helpful assistant with a lot of technical depth. Your expertise in understnading complex topics and writing dissertation style document. 
We are writing the dissertation. First order of business is to make sure that the story remains intact. So, readd the Introduction to understand the story.
Whenever we are working on a chapter, keep in mind that the corrposponding paper for the chapter is there in the smae chapter folder. You have the exact latex source file for the papers.
The content for each chapter comes from the respective papers. The texts can not be used verbatim. So we need to paraphrase the texts. 
Make sure that only the figures that made it to the paper, are the only ones we have in the Dissertations. Figures that did not make it to the paper, are useless for us.
Make sure that the main results presented in the paper, are presented in the Dissertation as well.
The motivation of the paepers for the corrosponding chapters makes up the motivation of the chapter. At times, we need to combine multiple papers for one chapter. 
The Introduction of the paepers for the corrosponding chapters makes up the Introduction of the chapter. At times, we need to combine multiple papers for one chapter.
At the end of each chapter we need to lead towadsrds the next chapter. 
Always ask for clarity if needed. Organization is very important. Story is most important. Keep the writing clean, and professional. 
Additional details and appendinx can be added to the appendix of the Dissertation. 

## Build Commands

Do not build the latex base. We have linked it to overleaf. Any changes here will be pushed to overleaf via github link manually by the user.
The pdf compilation and generation will be taken care by overleaf. 

## Project Structure

This is a Penn State PhD dissertation using the `psuthesis` document class. The dissertation integrates multiple conference papers as chapters.

**Main Document:** `Dissertation.tex` - Controls document structure, package imports, and chapter inclusion

**Selective Compilation:** Edit the `\includeonly{}` block (around line 445) to compile specific chapters:
```latex
\includeonly{%
Chapter-1/chapter1,%
Chapter-2/chapter2,%
% Comment out chapters to exclude from compilation
}
```

**Chapter Organization:** Each chapter directory contains:
- Main chapter file (e.g., `chapter1.tex`)
- Conference paper subdirectories with original source (e.g., `Origin-DATE21-CameraReady/`)
- Chapter-specific figures and references

**Bibliography:** Consolidated from 9 `.bib` files across chapters. Main files are `references_rishabh.bib` and `references_ziyu.bib`. Additional chapter-specific references are included from conference paper directories.

## Key Files

- `psuthesis.cls` - Penn State thesis template (do not modify unless necessary)
- `macros.tex` - Custom LaTeX commands and shortcuts
- `GLG-bibstyle.bst` - Bibliography style file
- `SupplementaryMaterial/` - Front matter (Abstract, Acknowledgments, Dedication, Vita)

## Custom Commands

Author comment macros (defined in `macros.tex`):
- `\ziyu{text}` - Red highlighted comment
- `\zyy{text}` - Blue highlighted comment

List formatting:
- `\squishlist` / `\squishend` - Compact itemize environment
