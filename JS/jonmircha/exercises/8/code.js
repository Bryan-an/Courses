const deletePatternFromText = (text = '', pattern = undefined) =>
  !text
    ? console.warn("You didn't enter a text")
    : !pattern
    ? console.warn("You didn't enter a pattern")
    : console.info(text.replaceAll(pattern, ''));

deletePatternFromText('xyz1, xyz2, xyz3, xyz4 y xyz5', 'xyz');
deletePatternFromText('xyz1, xyz2, xyz3');
deletePatternFromText();
