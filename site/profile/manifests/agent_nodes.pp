class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.olimpo.com':}
  dockeragent::node {'db.olimpo.com':)
}
