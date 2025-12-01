# Temporal EssGraph class with greedy steps

A `RefClass` extending `EssGraph` that exposes a single-step greedy move
(`forward`, `backward`, or `turning`) through `greedy.step()`. Used by
[`tges_run()`](https://bjarkehautop.github.io/causalDisco/reference/tges_run.md)
to iterate GIES one step at a time and interleave background knowledge
enforcement.

## Methods

- greedy.step(direction = c("forward","backward","turning"), verbose =
  FALSE, ...):

  Performs a single improving step in the requested phase. Returns a
  named vector/list where the first element indicates whether a step
  happened, followed by any nodes whose in-edges changed.

## See also

[`tges_run()`](https://bjarkehautop.github.io/causalDisco/reference/tges_run.md),
[TemporalBIC](https://bjarkehautop.github.io/causalDisco/reference/TemporalBIC-class.md),
[TemporalBDeu](https://bjarkehautop.github.io/causalDisco/reference/TemporalBDeu-class.md)
