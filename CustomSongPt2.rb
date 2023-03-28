use_bpm 120
use_synth :bass_foundation
slepy=[0.5,0.5,0.5,0.5,0.5,0.25,0.25,0.5,0.5,0.5,0.5,0.5,0.5,0.25,0.25,0.5]
sl=0
live_loop:secone do
  16.times do
    play:ab4
    sleep slepy[sl]
    sl=sl+1
  end
  1.times do
    play :r
    sleep 1
  end
  3.times do
    play :ab4
    sleep 0.5
  end
  stop
end
live_loop:secmiddle do
  1.times do
    sleep 1.5
    play:d4
    play:b3
    sleep 2
    play:r
    sleep 0.5
    play:e4
    play:a3
    sleep 0.5
    play:r
    sleep 0.5
    play:f4
    play:c4
    sleep 0.5
    play:f4
    play:c4
    sleep 2
    play:r
    sleep 0.5
    play:f4
    play:c4
    sleep 1
    play:r
    sleep 0.5
  end
  stop
end
live_loop:secend do
  1.times do
    sleep 1.5
    play:d2
    sleep 2
    play:r
    sleep 0.5
    play:c3
    sleep 0.5
    play:r
    sleep 0.5
    play:d3
    sleep 0.5
    play:d3
    sleep 2
    play:r
    sleep 0.5
    play:d3
    sleep 1
    play:r
    sleep 0.5
  end
  stop
end



