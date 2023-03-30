use_bpm 120
define:secend2notes do |z,rr|
  play:b2
  sleep 2
  play:r
  sleep 0.5
  play:c3
  sleep 0.5
  play:r
  sleep 0.5
  play z
  sleep 0.5
  play z
  sleep 2
  play:r
  sleep 0.5
  play rr
  sleep 1
  play:r
  sleep 0.5
end
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
use_bpm 120
live_loop:secone2 do
  sleep 9.5
  1.times do
    play:e5
    sleep 0.75
    play:b4
    sleep 0.25
    play:b4
    sleep 0.5
    play:r
    sleep 0.5
    play:r
    sleep 0.25
    play:f4
    sleep 0.25
    play:a4
    sleep 0.5
    play:a4
    sleep 0.5
    play:a4
    sleep 0.5
    play:a4
    sleep 0.25
    play:f4
    sleep 0.5
    play:f4
    sleep 0.25
    play:f4
    sleep 1
    play:r
    sleep 0.5
    play:a4
    sleep 0.5
    play:a4
    sleep 0.5
    play:a4
    sleep 0.5
  end
  stop
end
live_loop:secmiddle2 do
  sleep 9.5
  1.times do
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
    play:a3
    sleep 0.5
    play:f4
    play:a3
    sleep 2
    play:r
    sleep 0.5
    play:f4
    play:a3
    sleep 1
    play:r
    sleep 0.5
  end
  stop
end

live_loop:secend2 do
  sleep 9.5
  1.times do
    secend2notes :f2,:f2
    secend2notes :d3,:r
  end
  stop
end
