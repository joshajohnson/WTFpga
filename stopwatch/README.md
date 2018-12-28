WTFpga NG -- Stopwatch Edition
==============================

Add lap time measurement
------------------------

Finally let's also add lap time measurement: pressing the center button on the
board should display the current time for two seconds while we keep counting in
the background.

For this, we need to add a 16 bit register `lap_value` and an 8 bit register
`lap_timeout`.

`lap_timeout` should be decremented in every `clkdiv_pulse` cycle until
it reaches zero. The seven segmend display should show the value of `lap_value`
instead of `display_value` when `lap_timeout` has a nonzero value.

Pressing the center button (`BTN2`) should set `lap_timeout` to 200 and copy the
value from `display_value` to `lap_value`.

Note: The syntax `a ? b : c` can be used to select value `b` when `a` is nonzero,
and value `c` otherwise.

