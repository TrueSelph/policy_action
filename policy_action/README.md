# Policy Action

![GitHub release (latest by date)](https://img.shields.io/github/v/release/TrueSelph/policy_action)
![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/TrueSelph/policy_action/test-action.yaml)
![GitHub issues](https://img.shields.io/github/issues/TrueSelph/policy_action)
![GitHub pull requests](https://img.shields.io/github/issues-pr/TrueSelph/policy_action)
![GitHub](https://img.shields.io/github/license/TrueSelph/policy_action)

The policy action provides the means to serve an AI policy document to users. THe action provides a markdown representation for editing and generates an HTML document made accessible via the public file interface. The package is a singleton and requires the Jivas library version 2.1.0.

## Package Information

- **Name:** `jivas/policy_action`
- **Author:** [V75 Inc.](https://v75inc.com/)
- **archetype:** `PolicyAction`

## Meta Information

- **Title:** Policy Action
- **Group:** core
- **Type:** action

## Configuration

- **Singleton:** true

## Dependencies
- **Jivas:** `^2.1.0`
- **markdown:** `>=3.8`

---

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