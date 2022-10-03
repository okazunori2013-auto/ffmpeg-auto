_pre_configure(){
    _FORTIFY_SOURCE=2
    LDFLAGS="$LDFLAGS -fstack-protector -lssp"
}