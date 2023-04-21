use_bpm 120
define:onefive do
  3.times do
    play:ab4
    sleep 0.5
  end
end
define:fivefive do
  8.times do
    play:ab4
    sleep 0.5
  end
end
define:fd do
  play:f4
  play:db4
  sleep 2
end
define:fc do
  play:f4
  play:c4
  sleep 2
end
define:threeblockstnd do
  play:bb4
  sleep 0.5
  play:c5
  sleep 0.25
  play:c5
  sleep 0.25
  play:c5
  sleep 1
  play:r
  sleep 0.5
  play:ab4
  sleep 0.5
  play:ab4
  sleep 0.25
  play:ab4
  sleep 0.5
  play:bb4
  sleep 0.25
  play:bb4
  sleep 0.25
  play:c5
  sleep 0.5
  play:c5
  sleep 0.25
  play:c5
  sleep 1
  play:r
  sleep 0.25
  play:ab4
  sleep 0.25
  play:ab4
  sleep 0.5
  play:ab4
  sleep 0.5
  play:ab4
  sleep 0.5
end
define:heart do |heartone,hearttwo,heartthree,heartfour|
  play heartone
  sleep 0.5
  play hearttwo
  sleep 0.25
  play heartthree
  sleep 0.25
  play heartfour
  sleep 1
  play:r
  sleep 0.5
  play:ab4
  play:c4
  play:f4
  sleep 0.5
  play:ab4
  sleep 0.5
  play:ab4
  sleep 0.5
end
define:smile do |smileone|
  play:ab4
  sleep 2
  play:r
  sleep 0.5
  play:ab4
  sleep 0.5
  play:r
  sleep 0.5
  play smileone
  sleep 0.5
end
define:triangle do |try|
  play:bb4
  sleep 2
  play:bb2
  sleep 0.5
  play:c3
  sleep 1
  play try
  sleep 0.5
end
define:star do |starone,startwo|
  play starone
  sleep 2
  play:r
  sleep 0.5
  play startwo
  sleep 1
  play:r
  sleep 0.5
end
define:pinkie do
  play:bb4
  sleep 0.5
  play:c5
  sleep 0.25
  play:c5
  sleep 0.25
  play:c5
  sleep 1
  play:r
  sleep 0.5
  play:ab4
  sleep 0.5
  play:ab4
  sleep 0.25
  play:ab4
  sleep 0.5
  play:bb4
  sleep 0.25
  play:bb4
  sleep 0.25
  play:c5
  sleep 0.5
  play:c5
  sleep 0.25
  play:c5
  sleep 1
  play:r
  sleep 0.25
  play:ab4
  sleep 0.25
  play:ab4
  sleep 0.5
  play:ab4
  sleep 0.5
  play:ab4
  sleep 0.5
end
tools="/Users/isabela/Downloads/video-output-0F67DAC8-D2F5-461D-94A8-CBE15C55D06D (audio-extractor.net).wav"
live_loop:told do
  sample tools
  stop
end
sleep 0.75
onlyraysleep=[0.5,0.25,0.25,1,0.5,0.5,0.5,0.5]
ors=0
onlyraynotes=[:ab4,:ab4,:ab4,:ab4,:r,:ab4,:ab4,:ab4,]
live_loop:oneblockst do
  onefive
  fivefive
  8.times do
    play onlyraynotes[ors]
    sleep onlyraysleep[ors]
    ors=ors+1
  end
  stop
end
live_loop:oneblocknd do
  use_synth :piano
  onefive
  play:ab4
  sleep 0.5
  play:ab4
  sleep 0.5
  play:ab4
  sleep 0.5
  play:ab4
  sleep 0.5
  play:ab4
  sleep 0.5
  play:ab4
  play:eb4
  play:c4
  sleep 0.5
  play:ab4
  sleep 0.5
  play:ab4
  play:f4
  play:c4
  sleep 0.5
  heart :ab4,:ab4,:ab4,:ab4
  stop
end
live_loop:oneblockndtwo do
  use_synth :piano
  sleep 1.5
  fd
  play:r
  sleep 2
  fc
  play:r
  sleep 2
  stop
end
live_loop:oneblockrd do
  use_synth :piano
  sleep 1.5
  smile :db3
  star :db3,:db3
  stop
end
live_loop:twoblockst do
  sleep 9.5
  play:c5
  sleep 0.75
  play:bb4
  sleep 0.25
  play:bb4
  sleep 1
  play:r
  sleep 0.25
  play:ab4
  sleep 0.25
  play:ab4
  sleep 0.5
  play:ab4
  sleep 0.5
  play:ab4
  sleep 0.5
  play:bb4
  sleep 0.25
  play:f4
  sleep 0.25
  play:f4
  sleep 0.25
  play:f4
  sleep 0.25
  play:f4
  sleep 1
  play:r
  sleep 0.5
  play:ab4
  sleep 0.5
  play:ab4
  sleep 0.5
  play:ab4
  sleep 0.5
  stop
end
live_loop:twoblocknd do
  use_synth :piano
  sleep 9.5
  play:c5
  sleep 0.75
  play:bb4
  sleep 0.25
  play:bb4
  sleep 1
  play:bb4
  sleep 0.25
  play:ab4
  sleep 0.25
  play:ab4
  play:eb4
  play:bb3
  sleep 0.5
  play:ab4
  sleep 0.5
  play:ab4
  play:f4
  play:c4
  sleep 0.5
  heart :bb4,:f4,:f4,:f4
  stop
end
live_loop:twoblockndtwo do
  use_synth :piano
  sleep 9.5
  fd
  play:r
  sleep 2
  fc
  play:r
  sleep 2
  stop
end
live_loop:twoblockrd do
  use_synth :piano
  sleep 9.5
  smile :f2
  star :f2,:f2
  stop
end
live_loop:threeblockst do
  sleep 17.5
  pinkie
  stop
end
live_loop:threeblocknd do
  use_synth :piano
  sleep 17.5
  pinkie
  stop
end
live_loop:threeblockndtwo do
  use_synth :piano
  sleep 17.5
  fd
  play:r
  sleep 0.5
  play:f4
  play:bb3
  sleep 0.5
  play:r
  sleep 0.5
  play:f4
  play:bb3
  sleep 0.5
  fc
  play:r
  sleep 0.5
  play:f4
  play:bb3
  sleep 0.5
  play:r
  sleep 1
  stop
end
live_loop:threeblockrd do
  use_synth :piano
  sleep 17.5
  smile :db3
  star :db3,:db3
  stop
end
live_loop:fourblockst do
  sleep 25.5
  play:c5
  sleep 0.75
  play:bb4
  sleep 0.25
  play:bb4
  sleep 1
  play:r
  sleep 0.5
  play:ab4
  sleep 0.5
  play:ab4
  sleep 0.5
  play:ab4
  sleep 0.5
  play:bb4
  sleep 0.25
  play:f4
  sleep 0.25
  play:f4
  sleep 0.25
  play:f4
  sleep 0.25
  play:f4
  sleep 0.5
  play:c5
  sleep 0.5
  play:c5
  sleep 0.5
  play:c5
  sleep 0.5
  play:bb4
  sleep 0.25
  play:ab4
  sleep 0.25
  play:ab4
  sleep 0.5
  stop
end
live_loop:fourblocknd do
  use_synth :piano
  sleep 25.5
  play:c5
  sleep 0.75
  play:bb4
  sleep 0.25
  play:bb4
  sleep 1
  play:bb4
  sleep 0.5
  play:ab4
  play:eb4
  play:bb3
  sleep 0.5
  play:ab4
  sleep 0.5
  play:ab4
  play:f4
  play:c4
  sleep 0.5
  play:bb4
  sleep 0.5
  play:f4
  sleep 0.25
  play:f4
  sleep 0.25
  play:f4
  sleep 0.5
  play:c5
  sleep 0.5
  play:c5
  sleep 0.5
  play:c5
  play:ab4
  play:f4
  sleep 0.5
  play:bb4
  sleep 0.25
  play:ab4
  sleep 0.25
  play:ab4
  sleep 0.5
  stop
end
live_loop:fourblockndtwo do
  use_synth :piano
  sleep 25.5
  fd
  play:r
  sleep 2
  fc
  play:r
  sleep 2
  stop
end
live_loop:fourblockrd do
  use_synth :piano
  sleep 25.5
  smile :f2
  star :f2,:f2
  stop
end
live_loop:fiveblockst do
  sleep 33.5
  play:ab5
  sleep 4
  play:ab5
  sleep 0.5
  play:g5
  sleep 0.5
  play:f5
  sleep 0.5
  play:eb5
  sleep 0.5
  play:c5
  sleep 0.5
  play:c5
  sleep 0.5
  play:f5
  sleep 0.5
  play:c5
  sleep 0.5
  play:c5
  sleep 0.5
  play:bb4
  sleep 0.25
  play:c5
  sleep 0.25
  play:bb4
  sleep 0.25
  play:ab4
  sleep 2.75
  stop
end
live_loop:fiveblocknd do
  use_synth :piano
  sleep 33.5
  play:ab5
  play:f5
  play:db5
  sleep 2
  play:f5
  play:db5
  sleep 0.5
  play:eb5
  play:bb4
  sleep 1
  play:f5
  play:c5
  sleep 0.5
  play:ab5
  sleep 0.5
  play:g5
  sleep 0.5
  play:f5
  sleep 0.5
  play:eb5
  sleep 0.5
  play:c5
  sleep 0.5
  play:c5
  play:ab4
  play:f4
  sleep 0.5
  play:f5
  sleep 1
  play:c5
  sleep 0.5
  play:bb4
  sleep 0.5
  play:ab4
  sleep 1
  play:ab4
  play:f4
  play:db4
  sleep 0.5
  play:ab4
  play:g4
  play:db4
  sleep 1
  play:ab4
  play:f4
  play:c4
  sleep 0.5
  stop
end
live_loop:fiveblockndtwo do
  use_synth :piano
  sleep 33.5
  play:ab5
  sleep 4
  play:r
  sleep 4
  fd
  play:r
  sleep 2
  stop
end
live_loop:fiveblockndtwo do
  use_synth :piano
  sleep 33.5
  triangle :db3
  play:db3
  sleep 2
  play:db3
  sleep 0.5
  play:db3
  sleep 0.5
  play:r
  sleep 1
  triangle :f2
  stop
end

outman="/Users/isabela/Downloads/export_1682060998560 (audio-extractor.net).wav"
ohriley="/Users/isabela/Downloads/ending.wav"
oww="/Users/isabela/Downloads/ow.wav"
sleep 45
sample outman
sleep sleep 7.5
1.times do
  sample ohriley
end
sleep 11
dog=1
10.times do
  sample oww ,amp:dog
  dog=dog-0.1
  sleep 1
end
