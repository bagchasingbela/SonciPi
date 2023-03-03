use_bpm 120
use_synth :piano
start=21
2.times do
  88.times do
    play start
    sleep 0.25
    start=start+1
  end
  
  start=108
  
  88.times do
    play start
    sleep 0.25
    start=start-1
  end
end
