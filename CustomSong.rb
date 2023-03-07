define:red do
  wait 1
  play:c5
  play:c6
  sleep 1
  wait 1
  play:a4
  play:a5
  sleep 1
end
define:blue do
  wait 1
  play:e4
  play:e5
  sleep 1
  wait 1
  play:e4
  play:e5
  sleep 1
end
define:green do
  play:c4
  sleep 2
  play:a3
  sleep 2
end
define:lilac do
  play:e3
  sleep 2
  play:e3
  sleep 2
end
define:lime do
  play:c3
  sleep 2
  play:f3
  sleep 2
end
define:yellow do
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
end
define:purple do
  wait 1
  play:c3
  play:c4
  sleep 1
  wait 1
  play:f3
  play:f4
  sleep 1
end
define:maroon do
  play:a2
  play:a3
  sleep 1
  wait 1
  play:a2
  play:a3
  sleep 1
  wait 1
end
use_bpm 120
use_synth :tech_saws
live_loop :middle do
  2.times do
    with_fx :wobble ,smooth:4,amp:1,mix:1 do
      red
      blue
      red
      blue
    end
  end
  stop
end
live_loop :end do
  2.times do
    with_fx :wobble ,smooth:4,amp:1,mix:1 do
      green
      lilac
      green
      lilac
    end
  end
  stop
end
live_loop :first do
  2.times do
    with_fx :wobble ,smooth:4,amp:1,mix:1 do
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
  end
  stop
end
live_loop:first2 do
  1.times do
    with_fx :wobble ,smooth:6,amp:1,mix:1 do
      wait 32
      wait 4
      yellow
      yellow
      wait 4
    end
  end
  stop
end
live_loop:last2 do
  1.times do
    with_fx :wobble ,smooth:4,amp:1,mix:1 do
      wait 32
      lime
      play:a2
      sleep 2
      play:a2
      sleep 2
      lime
      play:a2
      sleep 2
      wait 2
    end
  end
  stop
end
live_loop:middle2 do
  1.times do
    with_fx :wobble ,smooth:4,amp:1,mix:1 do
      wait 32
      purple
      maroon
      purple
      maroon
    end
  end
  stop
end
