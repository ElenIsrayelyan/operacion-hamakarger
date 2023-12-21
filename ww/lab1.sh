#example 1
mkdir lab1
cd lab1
touch file.txt file1.txt file2.txt file3.txt
mkdir dir1 dir2
#endexample

#example 2
ls *.txt # փնտրում է *.txt-ային ֆայլերը
ls * .txt # փնտրում է .txt ֆայլ ՞՞՞՞
#endexample

#example 3
ls f???.txt
#endexample

#example 4
ls file[0-9]*.txt
#endexample

#example 5
ls *[a-z0-1].txt
#endexample

#example 6
cp /etc/passwd lab1/
#endexample

#example 7
mv lab1/passwd lab1/new
mv lab1/new lab1/dir1/
mv lab1/dir1/new lab1/dir2/
#endexample

#example 8
mv ./dir2 ./dir3
mv ./dir3 ./dir1/
#endexample

#example 9
mv ./dir1/new ./
#endexample

#example 10
rm -r lab1
#endexample
