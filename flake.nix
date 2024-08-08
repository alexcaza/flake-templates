{
  description = "Basic nix flakes for quickly spinning up new projects";

  outputs = {self}: {
    templates = {
      bun = {
        path = ./bun;
      };
      rust = {
        path = ./rust;
      };
      node-ts = {
        path = ./node-ts;
      };
      go = {
        path = ./go;
      };
      go-bun-monorepo = {
        path = ./go-bun-monorepo;
      };
    };
  };
}
