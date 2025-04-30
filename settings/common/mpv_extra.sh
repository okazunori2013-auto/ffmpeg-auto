#!/bin/bash

_post_vcs(){
    # [PATCH] filters/f_lavfi: handle removed AV_OPT_TYPE_CHANNEL_LAYOUT
    do_patch "https://github.com/mpv-player/mpv/commit/78447c4b91634aa91dcace1cc6a9805fb93b9252.patch"
    # [PATCH] filters/f_lavfi: rename channellayout to ch_layout
    do_patch "https://github.com/mpv-player/mpv/commit/414ddbd628724df3afc1e15f5e415dbb2c76a0b5.patch"
    # [PATCH] swresample: stop using deprecated {in,out}_channel_layout options
    do_patch "https://github.com/mpv-player/mpv/commit/9ef614d6a3b5e56474ec91626b06247ac60ed746.patch"
}
