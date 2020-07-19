class profile::agent_nodes {
  include dockeragent
  include ssh::server
  dockeragent::node{'web.puppet.vm':}
  dockeragent::node{'db.puppet.vm':}
}

