# virtual box code for zsh

vmup () {
    if [ -z "$1" ]; then
        print 'no VM specified.'
        return
    fi
 
    (nohup VBoxHeadless -s "$1") &
}

vmdown () {
    if [ -z "$1" ]; then
        print "no VM specified."
        return
    fi
    VBoxManage controlvm "$1" acpipowerbutton
}

vmls () {
    VBoxManage list vms
}

vmsrun () {
    VBoxManage list runningvms
}

vmsuspend () {
    if [ -z "$1" ]; then
        return
    fi
 
    VBoxManage controlvm "$1" savestat 
}

vmkill () {
    if [ -z "$1" ]; then
        return
    fi
    VBoxManage controlvm "$1" poweroff
}

vmhelp () {
    echo 'vmup, vmdown, vmls, vmsrun, vmsuspend, vmkill'
}
