
use_bpm 120
use_synth :chiplead
define:song do |a1,a2,a3,a4,c1,c2,a5,a6,d1,d2,a7,a8,e1,e2,d3,d4|
  play a1
  play a2
  sleep 0.5
  play a3
  play a4
  sleep 0.5
  play c1
  play c2
  sleep 0.5
  play a5
  play a6
  sleep 0.5
  play d1
  play d2
  sleep 0.5
  play a7
  play a8
  sleep 0.5
  play e1
  play e2
  sleep 0.5
  play d3
  play d4
  sleep 0.5
end
ampp=1
1.times do
  with_fx :wobble,smooth:2,amp:ampp do
    song :a4,:a5,:a4,:a5,:c5,:c6,:a4,:a5,:d5,:d6,:a4,:a5,:e5,:e6,:d5,:d6
    song :c5,:c6,:c5,:c6,:e5,:e6,:c5,:c6,:g5,:g6,:c4,:c5,:e5,:e6,:c4,:c5
    song :g4,:g5,:g4,:g5,:b4,:b5,:g4,:g5,:c5,:c6,:g4,:g5,:d5,:d6,:c5,:c6
    song :f4,:f5,:f4,:f5,:a4,:a5,:f4,:f5,:c5,:c6,:f4,:f5,:c5,:c6,:b4,:b5
  end
end
