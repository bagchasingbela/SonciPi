use_bpm 120
define:onefive do
  3.times do
    play:af4
    sleep 0.5
  end
end
define:fivefive do
  8.times do
    play:af4
    sleep 0.5
  end
end
define:fd do
  play:f4
  play:d4
  sleep 2
end
define:fc do
  play:f4
  play:c4
  sleep 2
end
define:threeblockstnd do
  play:b4
  sleep 0.5
  play:c5
  sleep 0.25
  play:c5
  sleep 0.25
  play:c5
  sleep 1
  play:r
  sleep 0.5
  play:af4
  sleep 0.5
  play:af4
  sleep 0.25
  play:af4
  sleep 0.5
  play:b4
  sleep 0.25
  play:b4
  sleep 0.25
  play:c5
  sleep 0.5
  play:c5
  sleep 0.25
  play:c5
  sleep 1
  play:r
  sleep 0.25
  play:af4
  sleep 0.25
  play:af4
  sleep 0.5
  play:af4
  sleep 0.5
  play:af4
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
  play:af4
  play:c4
  play:f4
  sleep 0.5
  play:af4
  sleep 0.5
  play:af4
  sleep 0.5
end
define:smile do |smileone|
  play:a4
  sleep 2
  play:r
  sleep 0.5
  play:a4
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
onlyraynotes=[:af4,:af4,:af4,:af4,:r,:af4,:af4,:af4,]
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
  use_synth:piano
  with_fx :level,amp:0.1,mix:1 do
    onefive
    play:af4
    sleep 0.5
    play:af4
    sleep 0.5
    play:af4
    sleep 0.5
    play:af4
    sleep 0.5
    play:af4
    sleep 0.5
    play:af4
    play:e4
    play:c4
    sleep 0.5
    play:af4
    sleep 0.5
    play:af4
    play:f4
    play:c4
    sleep 0.5
    heart :af4,:af4,:af4,:af4
    stop
  end
end

live_loop:oneblockrd do
  sleep 1.5
  smile :d3
  star :d3,:d3
  stop
end
