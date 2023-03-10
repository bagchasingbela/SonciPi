#Challenge G
use_bpm 120
use_synth :fm
use_synth_defaults sustain: 0.25
notes= [:e3,:e3,:g3,:e3,:r,:d3,:c3,:b2]
n=0
sleepy= [1.5,0.5,0.75,0.25,0.5,0.5,2,2]
s=0
live_loop :white_stripes do
  8.times do
    play notes[n]
    n=n+1
    sleep sleepy[s]
    s=s+1
  end
  n=0
  s=0
end
