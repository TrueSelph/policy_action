import:jac from jivas.agent.core.agent { Agent }
import:jac from jivas.agent.action.action { Action }
import:jac from jivas.agent.action.actions { Actions }
import:jac from jivas.agent.action.interact_graph_walker { interact_graph_walker }


walker get_policy_url :interact_graph_walker: {

    has response:str = "";

    can on_agent with Agent entry {
        self.agent_name = here.name;
        visit [-->](`?Actions);
    }

    can on_actions with Actions entry {
        visit [-->](`?Action)(?enabled == True)(?label == 'PolicyAction');
    }

    can on_action with Action entry {
        self.response = here.policy_url;
    }
}
