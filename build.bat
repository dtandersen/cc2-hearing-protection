set SOURCE_AUDIO=source\audio
set CONTENT_AUDIO=content\audio
set LOWLOW="volume=-25dB"
set LOW="volume=-22dB"
set MEDLOW="volume=-17dB"
set MED="volume=-14dB"
set MEDHIGH="volume=-11dB"
set NORMAL="volume=1"
set SILENT="volume=0"

rmdir /s /q content
mkdir content\audio

REM ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_vehicle01_rpm_01_loop.wav -filter:a %SILENT% -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_vehicle01_rpm_01_loop.ogg
REM ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_vehicle01_rpm_02_loop.wav -filter:a %SILENT% -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_vehicle01_rpm_02_loop.ogg
REM ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_vehicle02_rpm_01_loop.wav -filter:a %SILENT% -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_vehicle02_rpm_01_loop.ogg

REM carrier engine rev noise and loud noise on bridge
@REM ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_vehicle02_rpm_02_loop.wav -filter:a "volume=-12dB" -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_vehicle02_rpm_02_loop.ogg

REM "ambient" sounds
@REM ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_ocean_loop.wav -filter:a %MED% -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_ocean_loop.ogg

REM loud ass noise behind bridge
REM ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_turbine01_noise_loop.wav -filter:a %SILENT% -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_turbine01_noise_loop.ogg
REM ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_turbine02_noise_loop.wav -filter:a %SILENT% -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_turbine02_noise_loop.ogg
REM ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_turbine01_rpm_loop.wav -filter:a %SILENT% -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_turbine01_rpm_loop.ogg

@REM ffmpeg -y -i %SOURCE_AUDIO%\wind_outdoor_low.wav -filter:a %MEDLOW% -acodec libvorbis %CONTENT_AUDIO%\wind_outdoor_low.ogg
@REM ffmpeg -y -i %SOURCE_AUDIO%\wind_outdoor_medium.wav -filter:a %MEDLOW% -acodec libvorbis %CONTENT_AUDIO%\wind_outdoor_medium.ogg
@REM ffmpeg -y -i %SOURCE_AUDIO%\wind_outdoor_high.wav -filter:a %MEDLOW% -acodec libvorbis %CONTENT_AUDIO%\wind_outdoor_high.ogg

@REM ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_turbine01_rpm_loop.wav -af volume=-2dB -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_turbine01_rpm_loop.ogg
@REM ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_turbine01_noise_loop.wav -af volume=-2dB -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_turbine01_noise_loop.ogg
@REM ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_turbine02_noise_loop.wav -af volume=-0dB -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_turbine02_noise_loop.ogg

ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_turbine01_rpm_loop.wav -af volume=-5dB -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_turbine01_rpm_loop.ogg
ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_turbine01_noise_loop.wav -af volume=-5dB -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_turbine01_noise_loop.ogg
ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_turbine02_noise_loop.wav -af volume=-3dB -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_turbine02_noise_loop.ogg


ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_helicopterblade_large_loop.wav -af volume=-2dB -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_helicopterblade_large_loop.ogg
ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_helicopterblade_medium_loop.wav -af volume=-4dB -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_helicopterblade_medium_loop.ogg
ffmpeg -y -i %SOURCE_AUDIO%\cc_sfx_helicopterblade_small_loop.wav -af volume=-4dB -acodec libvorbis %CONTENT_AUDIO%\cc_sfx_helicopterblade_small_loop.ogg
