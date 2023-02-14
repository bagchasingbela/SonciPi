live_loop :one do
  12.times do
    sample :drum_snare_soft
    sleep 2
  end
  stop
end

live_loop :two do
  16.times do
    sample :drum_heavy_kick, amp: 2
    sleep 1
  end
  stop
end

live_loop :three do
  16.times do
    sample :drum_cymbal_closed
    sleep 0.5
  end
  stop
end


live_loop:four do
  sleep 24
  4.times do
    sample :drum_splash_hard
    sleep 1
    wait 1
  end
  stop
end
live_loop:five do
  sleep 24
  16.times do
    sample :drum_cymbal_hard
    sleep 0.5
  end
  stop
end

live_loop :six do
  sleep 32
  4.times do
    sample :drum_snare_soft
    sleep 2
  end
  stop
end
live_loop :seven do
  sleep 32
  8.times do
    sample :drum_heavy_kick, amp: 2
    sleep 1
  end
  stop
end

live_loop :eight do
  sleep 32
  16.times do
    sample :drum_cymbal_closed
    sleep 0.5
  end
  stop
end
