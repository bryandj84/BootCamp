#!/bin/bash

repo1=foo/dummy
repo2=foo/empty

cat $repo1/file1.txt >> $repo1/file2.txt

mv $repo1/file2.txt $repo2

cat $repo1/file1.txt $repo2/file2.txt

tree foo/