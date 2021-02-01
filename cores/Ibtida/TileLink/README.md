# TileLink ![GitHub Workflow Status](https://img.shields.io/github/workflow/status/hadirkhan10/TileLink/test)
This project deals with creating TileLink bus protocol API with Chisel and generating the RTL for synthesis


## Description
TileLink is a protocol developed at SiFive which is used for On-Chip communication. This project implements the TileLink Uncached Lightweight (TL-UL) protocol as described in the specification. This project conforms to the [1.7.1 specification](https://sifive.cdn.prismic.io/sifive%2F57f93ecf-2c42-46f7-9818-bcdd7d39400a_tilelink-spec-1.7.1.pdf). 

## Purpose
TileLink has been implemented in `rocketchip` but it takes use of _diplomacy_ which is a little advanced stuff to understand. In this project we implement the specification with only the logic provided by the specification and hope to keep it simple enough for other Chisel users to use it in their projects without the need of LazyModules and complex diplomacy negotiation.

## Contributors 
<figure>
<a href="https://github.com/hadirkhan10">
  <img src="https://github.com/hadirkhan10.png?size=60">
</a>
  <br>
    <figcaption>Hadir Khan</figcaption>
</figure>
