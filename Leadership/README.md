# Leadership

## Compare Images

### Requirement

Come up solution how would we compare the images if you have to test automate the story

### Solution

A quick solution would be to generate a hash for each image and then to compare the hash each time the automation runs.

For example

```Bash
md5sum gregCompressedEdited.jpg  
f43b9f6194c0d864c2901dd10452e1c2  gregCompressedEdited.jpg
sha1sum gregCompressedEdited.jpg 
eb9e251a21262168e7aabc5605cad79f03bede84  gregCompressedEdited.jpg
```
