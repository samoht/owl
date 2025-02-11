(*
 * OWL - OCaml Scientific Computing
 * Copyright (c) 2016-2022 Liang Wang <liang@ocaml.xyz>
 *)

(** AEOS: Automatic Empirical Optimisation of Software *)

let tune_default fname =
  Owl_aeos_log.info "Using default parameters...";
  let tuners = Owl_aeos_tuners.all in
  Owl_aeos_writer.write_full fname tuners


let tune_all fname =
  Owl_aeos_log.info "Start tuning parameters...";
  let tuners = Owl_aeos_tuners.all in
  Owl_aeos_engine.eval tuners;
  Owl_aeos_writer.write_full fname tuners


let tune fname tuners =
  Owl_aeos_engine.eval tuners;
  Owl_aeos_writer.write_partial fname tuners
