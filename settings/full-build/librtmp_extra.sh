_pre_install(){
    _FORTIFY_SOURCE=2
    LDFLAGS="$LDFLAGS -fstack-protector -lssp"
}