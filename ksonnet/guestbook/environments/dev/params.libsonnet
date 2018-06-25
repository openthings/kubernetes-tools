local params = std.extVar("__ksonnet/params");
local globals = import "globals.libsonnet";
local envParams = params + {
  components+: {
    "guestbook-ui"+: {
      image: "gcr.io/heptio-images/ks-guestbook-demo:0.2"
    }
  }
};

{
  components: {
    [x]: envParams.components[x] + globals for x in std.objectFields(envParams.components)
  }
}