define:red do
  sleep 1
  play:c5
  play:c6
  sleep 1
  sleep 1
  play:a4
  play:a5
  sleep 1
end
define:blue do
  sleep 1
  play:e4
  play:e5
  sleep 1
  sleep 1
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
  sleep 1
  sleep 0.5
  play:e4
  sleep 0.25
  play:e4
  sleep 0.25
  play:e4
  sleep 0.5
  play:d4
  sleep 0.5
  sleep 1
end
define:purple do
  sleep 1
  play:c3
  play:c4
  sleep 1
  sleep 1
  play:f3
  play:f4
  sleep 1
end
define:maroon do
  play:a2
  play:a3
  sleep 1
  sleep 1
  play:a2
  play:a3
  sleep 1
  sleep 1
end
vocals= "C:/Users/isabela_marquez/Downloads/VOCALS-ONLY-_-Kid-Cudi-PursuitHap.wav"
use_bpm 120
use_synth :tech_saws
live_loop :middle do
  2.times do
    with_fx :wobble ,smooth:4,amp: 0.5,mix:1 do
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
    with_fx :wobble ,smooth:5,amp: 0.5,mix:1 do
      green
      lilac
      green
      lilac
    end
  end
  stop
end
sleepy=[2,2,0.5,0.5]
s=0
notes= [:e4,:e4,:e4,:d4]
n=0
live_loop :first do
  2.times do
    with_fx :wobble ,smooth:4,amp: 0.5,mix:1 do
      sleep 10
      4.times do
        play notes[n]
        n=n+1
        sleep sleepy[s]
        s=s+1
      end
      sleep 1
      n=0
      s=0
    end
  end
  stop
end
live_loop :words,amp:1 do
  1.times do
    sleep 16
    sample vocals
    sleep 16
  end
  stop
end
live_loop:first2 do
  1.times do
    with_fx :wobble ,smooth:4,amp: 0.5,mix:1 do
      sleep 32
      wait 4
      yellow
      yellow
      sleep 4
    end
  end
  stop
end
live_loop:last2 do
  1.times do
    with_fx :wobble ,smooth:4,amp: 0.5,mix:1 do
      sleep 32
      lime
      play:a2
      sleep 2
      play:a2
      sleep 2
      lime
      play:a2
      sleep 2
      sleep 2
    end
  end
  stop
end
live_loop:middle2 do
  1.times do
    with_fx :wobble ,smooth:4,amp: 0.5,mix:1 do
      sleep 32
      purple
      maroon
      purple
      maroon
    end
  end
  stop
end
