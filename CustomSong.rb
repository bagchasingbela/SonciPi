# Customsong
use_bpm 120
use_synth :piano
define :oneandtwo do
  live_loop :middle do
    2.times do
      wait 1
      play:c5
      play:c6
      sleep 1
      wait 1
      play:a4
      play:a5
      sleep 1
      
      wait 1
      play:e4
      play:e5
      sleep 1
      wait 1
      play:e4
      play:e5
      sleep 1
      
      wait 1
      play:c5
      play:c6
      sleep 1
      wait 1
      play:a4
      play:a5
      sleep 1
      
      wait 1
      play:e4
      play:e5
      sleep 1
      wait 1
      play:e4
      play:e5
      sleep 1
    end
    stop
  end
  
  live_loop :end do
    2.times do
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
    2.times do
      sleep 10
      play:e4
      sleep 2
      
      play:e4
      sleep 2
      play:e4
      sleep 0.5
      play:d4
      sleep 0.5
      wait 1
    end
    stop
  end
  live_loop :middle2 do
    sleep 12
    1.times do
      wait 1
      play:c4
      play:c5
      sleep 1
      wait 1
      play:f4
      play:f5
      sleep 1
      play:a3
      play:a4
      sleep 1
      wait 1
      play:a3
      play:a4
      sleep 1
      wait 1
      wait 1
      play:c4
      play:c5
      sleep 1
      wait 1
      play:f4
      play:f5
      sleep 1
      play:a3
      play:a4
      sleep 1
      wait 1
      play:a3
      play:a4
      sleep 1
      wait 1
    end
    stop
  end
  
  live_loop :end2 do
    sleep 12
    1.times do
      play:b3
      sleep 2
      play:f3
      sleep 2
      play:a2
      sleep 2
      play:a2
      sleep 2
      play:b3
      sleep 2
      play:f3
      sleep 2
      play:a2
      sleep 2
      play:a2
      sleep 2
    end
    stop
  end
  
  live_loop :first2 do
    sleep 12
    1.times do
      sleep 4
      wait 1
      wait 0.5
      play:e4
      sleep 0.25
      play:e4
      sleep 0.25
      play:e4
      sleep 0.5
      play:d4
      sleep 0.5
      sleep 1
      wait 1
      wait 0.5
      play:e4
      sleep 0.25
      play:e4
      sleep 0.25
      play:e4
      sleep 0.5
      play:d4
      sleep 0.5
      wait 1
      wait 4
      
    end
    stop
  end
end

1.times do
  oneandtwo
end
