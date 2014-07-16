{ cabal, hspec, hspecExpectations, HUnit, liftedBase, monadControl
, QuickCheck, random, transformers
}:

cabal.mkDerivation (self: {
  pname = "fuzzcheck";
  version = "0.1.1";
  src = ./.;
  buildDepends = [
    liftedBase monadControl QuickCheck random transformers
  ];
  testDepends = [ hspec hspecExpectations HUnit QuickCheck ];
  meta = {
    homepage = "https://github.com/fpco/fuzzcheck";
    description = "A simple checker for stress testing monadic code";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
