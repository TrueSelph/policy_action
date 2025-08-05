import from jivas.agent.core.agent { Agent }
import from jivas.agent.action.action { Action }
import from jivas.agent.action.actions { Actions }
import from jivas.agent.action.agent_graph_walker { agent_graph_walker }
import from jivas.agent.modules.action.path { action_walker_path }


walker get_policy_url(agent_graph_walker) {

    has response:str = "";
    has reporting:bool = True;

    class __specs__ {
        static has private: bool = False;
        static has path: str = action_walker_path(__module__);
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
        if self.reporting {
            report self.response;
        }
    }
}
