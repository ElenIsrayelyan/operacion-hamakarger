#!/bin/bash

#example 1
ls /etc | grep '[0-9]'
#endexample

#example 2
echo -e "Hello\nWorld\nTestlo\nHillo\nOtherlo\n" >test_file.txt
grep -E '\b\w{3}lo$' test_file.txt
#endexample

#example 3
grep -h '[A-Z]' список_каталогов*.txt:  # փնտրում է առնվազն մեկ մեծատառ պարունակող տողեր:
grep -h '[-AZ]' список_каталогов*.txt:  # փնտրում է «-», «A» կամ «Z» նիշերից որևէ մեկը պարունակող տողեր:
grep -h '^[A-Z]' список_каталогов*.txt: # փնտրում է մեծատառով սկսվող տողեր:
grep -h '[^A-Z]' список_каталогов*.txt: # փնտրում է տողեր, որոնք պարունակում են մեծատառերից բացի որևէ այլ նիշ:
#endexample

#example 4
grep -E '^(bz|zip)' dirlist-bin.txt dirlist-sbin.txt
#endexample

#example 5
grep -Eh '^(bz|gz|zip)' список_каталогов*.txt # Փնտրում է «bz», «gz» կամ «zip» տողեր:
grep -Eh '^bz|gz|zip' список_каталогов*.txt   # փնտրում է «bz»-ով սկսվող կամ «gz» կամ «zip» պարունակող տողեր:
#endexample

#example 6
echo "test@test.com" | grep -E '^([a-zA-Z0-9._%+-]+)@([a-zA-Z0-9.-]+)\.([a-zA-Z]{2,})$'
#endexample

#example 7
echo "192.168.0.1" | grep -E '^([0-9]{1,3}\.){3}[0-9]{1,3}$'
#endexample

#example 8
# չի ստացվում ։(
#endexample

#example 9
echo "01/02/1970" | sed -E 's~([0-9]+)/([0-9]+)/([0-9]+)~\3-\2-\1~'
#endexample

#example 10
echo "0xx 12-34-56" | sed -E 's~^(0xx) ([0-9]{2})-([0-9])([0-9])-([0-9]{2})$~(\1) \2\3-\4\5~'
#endexample