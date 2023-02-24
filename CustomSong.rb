# Customsong
use_bpm 120
use_synth :piano
live_loop :middle do
  1.times do
    wait 1
    play:c5
    play:c6
    sleep 1
    wait 1
    play:a4
    play:a5
    
    wait 1
    play:e4
    play:e5
    sleep 1
    wait 1
    play:e4
    play:e5
    
    wait 1
    play:c5
    play:c6
    sleep 1
    wait 1
    play:a4
    play:a5
    
    wait 1
    play:e4
    play:e5
    sleep 1
    wait 1
    play:e4
    play:e5
  end
  stop
end

live_loop :end do
  1.times do
    play:c4
    sleep 2
    play:a3
    sleep 2
    
    play:e3
    sleep 2
    play:e3
    sleep 2
    
    play:c4
    sleep 2
    play:a3
    sleep 2
    
    play:e3
    sleep 2
    play:e3
    sleep 2
  end
  stop
end

live_loop :first do
  1.times do
    play:c4
  end
  stop
end
