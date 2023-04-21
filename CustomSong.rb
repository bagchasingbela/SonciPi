use_bpm 120
use_synth :tech_saws
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
cacaca=0.2
intro="/Users/isabela/Documents/intro.wav"
live_loop:inie do
  sample intro
  stop
end
live_loop :middlea do
  sleep 19
  2.times do
    1.times do
      with_fx :wobble ,smooth:4,amp:cacaca,mix:1 do
        red
        blue
        cacaca=cacaca+0.2
        red
        blue
      end
    end
  end
  stop
end
jajaja=0.2
live_loop :enda do
  sleep 19
  2.times do
    1.times do
      with_fx :wobble ,smooth:5,amp:jajaja,mix:1 do
        green
        lilac
        jajaja=jajaja+0.2
        green
        lilac
      end
    end
  end
  stop
end

sleepy=[2,2,0.5,0.5]
s=0
notes= [:e4,:e4,:e4,:d4]
n=0
banana=0.2
live_loop :firsta do
  sleep 19
  1.times do
    with_fx :wobble ,smooth:4,amp:banana,mix:1 do
      sleep 10
      2.times do
        play notes[n]
        n=n+1
        sleep sleepy[s]
        s=s+1
        banana=banana+0.2
      end
      sleep 1
      n=0
      s=0
    end
  end
  stop
end
vocals="/Users/isabela/Downloads/untitled (1).wav"
ampp=0.333
live_loop :words do
  sleep 51
  3.times do
    sleep 0.5
    sample vocals,amp:ampp
    sleep 3
    ampp=ampp+0.4
  end
  4.times do
    sleep 0.5
    sample vocals,amp:ampp
    sleep 0.5 #left to over lap on purpose
    ampp=ampp-0.333
  end
  stop
end


live_loop :middle do
  sleep 51
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
  sleep 51
  2.times do
    with_fx :wobble ,smooth:5,amp:1,mix:1 do
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
  sleep 51
  2.times do
    with_fx :wobble ,smooth:4,amp:1,mix:1 do
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
live_loop:first2 do
  sleep 51
  1.times do
    with_fx :wobble ,smooth:4,amp:1,mix:1 do
      sleep 32
      sleep 4
      yellow
      yellow
      sleep 4
    end
  end
  stop
end
live_loop:last2 do
  sleep 51
  1.times do
    with_fx :wobble ,smooth:4,amp:1,mix:1 do
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
  sleep 51
  1.times do
    with_fx :wobble ,smooth:4,amp:1,mix:1 do
      sleep 32
      purple
      maroon
      purple
      maroon
    end
  end
  stop
end
woohoo="/Users/isabela/Downloads/video-output-913ED9FB-BFA2-4ABE-ABF4-48E0CDC6BE3E (audio-extractor.net).wav"
sleep 97.5
sample woohoo
