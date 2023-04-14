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
live_loop:caca do
  sample :drum_cymbal_closed, rate: -1
  sleep 0.5
end
