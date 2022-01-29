1.)ASSUMPTION - Working directory path is
	/home/aditya
	when No directories are there then it would produce error:
	du:cannot access '*/':No such file or directory exist.
	
2.) grep command is used to find words ending with ing and then with pipelining awk is used to just convert everything to lower case
 to run this type command like this
 	./q2.sh input_file output_file

3.)
- input taken in first and it's length taken in len
- second variable store the sorted input
- flag is used to store weather any variable matched or not
- arr will store all the commands from compgen which are of same length as of input
- then for each command in arr first store that command in variable and after that sort it and then wether both input and arr command are equal if yes print what we stored. and update flag.
- if flag=0 maens no such command exist


4.) if one number is given it will convert that into roman and if two number is given it will convert both sum into roman
ASSUMPTION-Valid number is to be given and sum also should be valid
ASSUMPTION-Please do not give roman number as i have not able to do that part.

5.)
   - mkdir is used to create a directory named temp_activity
   - cd command used to go inside that new directory
   - touch command is used to create multiple temp.txt files 
   - mv command is used to to change the extension over for loop
   - using dot(.) as field seperator take the name of file and extension in two variable and run the mv command to change the name.
   - zip command is used to make the zip all the txt files and put it into .zip
   - -q along with zip is used to hide adding messages from terminal.

