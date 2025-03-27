# Policy Action

![GitHub release (latest by date)](https://img.shields.io/github/v/release/TrueSelph/policy_action)
![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/TrueSelph/policy_action/test-action.yaml)
![GitHub issues](https://img.shields.io/github/issues/TrueSelph/policy_action)
![GitHub pull requests](https://img.shields.io/github/issues-pr/TrueSelph/policy_action)
![GitHub](https://img.shields.io/github/license/TrueSelph/policy_action)

JIVAS action for managing AI policy document serving for an Agent.

## Package Information

- **Name:** `jivas/policy_action`
- **Author:** [V75 Inc.](https://v75inc.com/)
- **Architype:** `PolicyAction`

## Meta Information

- **Title:** Policy Action
- **Group:** core
- **Type:** action

## Configuration

- **Singleton:** true

## Dependencies

- **Jivas:** `^2.0.0`

This package, developed by V75 Inc., focuses on managing the serving of AI policy documents for an agent. As a core action, it ensures that AI policies are accessible and appropriately integrated into agent operations. The package is a singleton and requires the Jivas library version 2.0.0.

---

## How to Use

Below is detailed guidance on how to configure and use the Policy Action.

### Overview

The Policy Action provides a mechanism for serving AI policy documents. It supports configurations for various use cases, including:

- **Dynamic content generation** based on agent-specific data.
- **Integration** with JIVAS agents for seamless policy management.

---

### Configuration Structure

The configuration consists of the following components:

### `policy_settings`

Defines the settings for the policy content, such as placeholders and dynamic replacements.

```python
policy_settings = {
    "agent_name": "example_agent",  # Example: "example_agent"
    "content": "Your policy content here."  # Policy content template
}
```

---

### Example Configurations

### Basic Configuration for Policy Content

```python
policy_settings = {
    "agent_name": "TrueSelph",
    "content": """
    # AI Policy - {agent_name}
    This is a sample policy document for {agent_name}.
    """
}
```

### Best Practices
- Ensure placeholders in the content are replaced dynamically.
- Test the policy content rendering in a staging environment before production use.

---

## 🔰 Contributing

- **🐛 [Report Issues](https://github.com/TrueSelph/policy_action/issues)**: Submit bugs found or log feature requests for the `policy_action` project.
- **💡 [Submit Pull Requests](https://github.com/TrueSelph/policy_action/blob/main/CONTRIBUTING.md)**: Review open PRs, and submit your own PRs.

<details closed>
<summary>Contributing Guidelines</summary>

1. **Fork the Repository**: Start by forking the project repository to your GitHub account.
2. **Clone Locally**: Clone the forked repository to your local machine using a git client.
   ```sh
   git clone https://github.com/TrueSelph/policy_action
   ```
3. **Create a New Branch**: Always work on a new branch, giving it a descriptive name.
   ```sh
   git checkout -b new-feature-x
   ```
4. **Make Your Changes**: Develop and test your changes locally.
5. **Commit Your Changes**: Commit with a clear message describing your updates.
   ```sh
   git commit -m 'Implemented new feature x.'
   ```
6. **Push to GitHub**: Push the changes to your forked repository.
   ```sh
   git push origin new-feature-x
   ```
7. **Submit a Pull Request**: Create a PR against the original project repository. Clearly describe the changes and their motivations.
8. **Review**: Once your PR is reviewed and approved, it will be merged into the main branch. Congratulations on your contribution!
</details>

<details open>
<summary>Contributor Graph</summary>
<br>
<p align="left">
    <a href="https://github.com/TrueSelph/policy_action/graphs/contributors">
        <img src="https://contrib.rocks/image?repo=TrueSelph/policy_action" />
   </a>
</p>
</details>

## 🎗 License

This project is protected under the Apache License 2.0. See [LICENSE](../LICENSE) for more information.