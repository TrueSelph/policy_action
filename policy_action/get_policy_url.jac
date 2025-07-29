import from jivas.agent.core.agent { Agent }
import from jivas.agent.action.action { Action }
import from jivas.agent.action.actions { Actions }
import from jivas.agent.action.agent_graph_walker { agent_graph_walker }
import from jivas.agent.modules.agentlib.utils { Utils }


walker get_policy_url(agent_graph_walker) {

    has response:str = "";

    class __specs__ {
        static has private: bool = True;
        static has path: str = Utils.action_walker_path(__module__);
    }

    can on_agent with Agent entry {
        self.agent_name = here.name;
        visit [-->](`?Actions);
    }

    can on_actions with Actions entry {
        visit [-->](`?Action)(?enabled==True)(?label == 'PolicyAction');
    }

    can on_action with Action entry {
        self.response = here.policy_url;
    }
}
