# Neovim Search and Replace Cheatsheet

This cheatsheet covers essential commands for performing search and replace operations in Neovim.

---

## Basic Search and Replace in the Current Line

- **Syntax**: `:s/<search>/<replace>/`
- **Example**: `:s/foo/bar/`  
  Replaces the first occurrence of "foo" with "bar" on the current line.

---

## Replace All Occurrences in the Current Line

- **Syntax**: `:s/<search>/<replace>/g`
- **Example**: `:s/foo/bar/g`  
  Replaces all occurrences of "foo" with "bar" on the current line.

---

## Replace in the Entire File

- **Syntax**: `:%s/<search>/<replace>/g`
- **Example**: `:%s/foo/bar/g`  
  Replaces all occurrences of "foo" with "bar" throughout the entire file.

---

## Interactive Search and Replace (with Confirmation)

- **Syntax**: `:%s/<search>/<replace>/gc`
- **Example**: `:%s/foo/bar/gc`  
  Replaces all occurrences of "foo" with "bar" in the entire file, with a prompt for confirmation before each replacement.
  - **Options when prompted**:
    - `y` - confirm the replacement
    - `n` - skip this replacement
    - `a` - replace all remaining matches without prompting
    - `q` - quit and stop further replacements

---

## Replace in a Specified Range of Lines

You can limit the replacement to a specific range of lines.

- **Syntax**: `:<start>,<end>s/<search>/<replace>/g`
- **Example**: `:10,20s/foo/bar/g`  
  Replaces all occurrences of "foo" with "bar" between lines 10 and 20.

---

## Using Regular Expressions in Search Patterns

For more powerful search patterns, use regular expressions.

- **Whole Word Replacement**: `:%s/\<foo\>/bar/g`  
  Replaces only whole words "foo" with "bar" across the entire file. (`\<` and `\>` match word boundaries.)

- **Pattern with Digits**: `:%s/\vfoo\d+/bar/g`  
  Replaces "foo" followed by one or more digits with "bar" across the entire file. The `\v` switch enables "very magic" mode for simpler regex syntax.

---

## Replacing with the Last Searched Term

If you've already searched for a term using `/` or `?`, you can use `&` in the replacement command to refer to it.

- **Syntax**: `:%s//<replace>/g`  
  Replaces the last searched term with `<replace>` throughout the file.

---

## Flags Summary

- `g` - Global, replace all occurrences in the line
- `c` - Confirm each replacement
- `%` - Apply to the entire file

---

Keep this cheatsheet handy for quick search and replace commands in Neovim!
