#!/bin/env bash
export SOURCE_AUDIO=source/audio
export CONTENT_AUDIO=content/audio

rm -rf content
mkdir -p content/audio

function normalize() {
    input=$1
    output=$2
    i=${3:-'-27'}

    json=$(ffmpeg -y -hide_banner -i $SOURCE_AUDIO/$input -pass 1 -filter:a loudnorm=print_format=json -f wav /dev/null  2>&1 | sed '1,/Parsed/d')
    # echo -n "$json"
    # exit
    jq . <<< $json
    input_i=$(jq -r .input_i <<< $json)
    input_tp=$(jq -r .input_tp <<< $json)
    input_lra=$(jq -r .input_lra <<< $json)
    input_thresh=$(jq -r .input_thresh <<< $json)
    set -x
    ffmpeg -y -hide_banner -i $SOURCE_AUDIO/$input -pass 2 \
        -filter:a loudnorm=linear=true:I=$i:lra=20:tp=-2:measured_I=$input_i:measured_LRA=$input_lra:measured_tp=$input_tp:measured_thresh=$input_thresh \
        -acodec libvorbis $CONTENT_AUDIO/$output
    set +x
}

normalize cc_sfx_turbine01_rpm_loop.wav cc_sfx_turbine01_rpm_loop.ogg
normalize cc_sfx_turbine01_noise_loop.wav cc_sfx_turbine01_noise_loop.ogg
normalize cc_sfx_turbine02_noise_loop.wav cc_sfx_turbine02_noise_loop.ogg
normalize cc_sfx_helicopterblade_large_loop.wav cc_sfx_helicopterblade_large_loop.ogg -30
normalize cc_sfx_helicopterblade_medium_loop.wav cc_sfx_helicopterblade_medium_loop.ogg -30
normalize cc_sfx_helicopterblade_small_loop.wav cc_sfx_helicopterblade_small_loop.ogg -30
