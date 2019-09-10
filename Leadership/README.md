# Leadership

## Test Case

Verify that CSS transitions are only present when an image and description is viewable.

### Requirements

* Firefox Web Browser

### Test Scenario

Verify CSS

### Test Steps

1. Open Firefox Web Browser

2. Navigate to <https://myhealthbridge.com/meet-the-team/>

3. Click on the hamburger > Web Devloper
4. Click on Inspector
5. Look for any and all `et_pb_column_empty` div classes

### Test Data

N/A

### Expected Results

Zero `et_pb_column_empty` div classes

### Actual Result

`>` Zero `et_pb_column_empty` div classes

### Pass/Fail

Fail

| ID  | Test Scenario  | Test Steps | Test Data | Expected Results | Actual Results | Pass/Fail |
| :-- | :------------  | :--------- | :-------- | :--------------- | :------------- | :-------- |
| 001 | Verify CSS | <ol><li>Open Firefox Web Browser</li><li>Navigate to <https://myhealthbridge.com/meet-the-team/></li><li>Click on the hamburger > Web Devloper</li><li>Click on Inspector</li><li>Look for any and all `et_pb_column_empty` div classes</li></ol> | N/A | Zero `et_pb_column_empty` div classes | > Zero `et_pb_column_empty` div classes | Fail |

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
