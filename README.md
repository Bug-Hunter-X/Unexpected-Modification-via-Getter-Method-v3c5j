# Ruby Bug: Unexpected Modification via Getter Method

This repository demonstrates a subtle bug in Ruby related to unexpectedly modifying the internal state of an object through what appears to be a getter method.

## Bug Description
The bug lies in the misconception that getter methods in Ruby, although providing read-only access, are entirely immutable.  In certain cases, if a getter method returns a mutable object and the returned object is subsequently modified, the original object's state is changed unexpectedly.  This can lead to hard-to-debug issues.  This particular example highlights the problem. 

## How to Reproduce
1.  Clone this repository.
2.  Run `ruby bug.rb`.
3. Observe that the value is updated, despite only calling a getter method.