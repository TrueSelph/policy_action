import from jivas.agent.core.agent { Agent }
import from jivas.agent.action.action { Action }
import from jivas.agent.action.actions { Actions }
import from jivas.agent.action.agent_graph_walker { agent_graph_walker }
import from jivas.agent.modules.action.path { action_walker_path }


walker get_policy(agent_graph_walker) {

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
        # replace {agent_name} with the agent's name
        content = here.content.replace("{agent_name}", self.agent_name);

        content_lines = content.splitlines();
        content = "";

        # remove trailing whitespace from each line
        for line in content_lines {
            line = line.lstrip();
            content += line + '\n';
        }

        self.response = content;

        if self.reporting {
            report self.response;
        }
    }
}
