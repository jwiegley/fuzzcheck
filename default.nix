{ mkDerivation, base, hspec, hspec-expectations, HUnit, lifted-base
, monad-control, QuickCheck, random, stdenv, transformers
}:
mkDerivation {
  pname = "fuzzcheck";
  version = "0.1.1";
  src = ./.;
  buildDepends = [
    base lifted-base monad-control QuickCheck random transformers
  ];
  testDepends = [ base hspec hspec-expectations HUnit QuickCheck ];
  homepage = "https://github.com/fpco/fuzzcheck";
  description = "A simple checker for stress testing monadic code";
  license = stdenv.lib.licenses.bsd3;
}
