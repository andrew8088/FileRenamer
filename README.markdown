#Readme

this is a quick and dirty file renaming class. It's pretty simple: just create an instance of the `FileRenamer` class, passing in a regular expression to match the file names and a path for the files. Then, call the `rename_files` method to rename the files; you pass the method a block that returns the name for the file. You can use two block parameters: the matchdata object from the regex on the filename and an index. See the `example.rb` file for a, well, an example.

Of course, this is incredibly quick-and-dirty, so I'm sure you could improve it six ways 'til Sunday. So work some magic and send my a pull request!
