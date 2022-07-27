    ⍝ Removes parts of text wrapped in parentheses, works with nested parentheses too.
deparen←(0=(+\('('=⊢)-0,¯1↓')'=⊢))⊢⍤/⊢

deparen 'Hello (you wont (see) this)world!(()Also ((t))his)'
    ⍝'Hello world!'


    ⍝ Explanation:
    ⍝
    ⍝ '('=⊢
    ⍝ Gets bitmask of indicies with '('
    ⍝
    ⍝ ')'=⊢
    ⍝ Gets bitmask of indicies with '('
    ⍝
    ⍝ 0,¯1↓
    ⍝ Removes last element, appends 0 to the front
    ⍝
    ⍝ +\('('=⊢)-0,¯1↓')'=⊢)
    ⍝ Makes a list containing nest levels for each index
    ⍝
    ⍝ 0=(+\('('=⊢)-0,¯1↓')'=⊢))
    ⍝ Bitmask where only nest level 0 indices are 1
    ⍝
    ⍝ ⊢⍤/
    ⍝ This forces / to be the replicate function
    ⍝
    ⍝ (0=(+\('('=⊢)-0,¯1↓')'=⊢))⊢⍤/⊢
    ⍝
    ⍝ Uses replicate to mask out original string with nest level 0 bitmask