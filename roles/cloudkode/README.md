# cloudkode Ansible Role

`cloudkode` is an Ansible role scaffold created for this Linux administration lab. It is currently ready for future automation work, but the task, handler, variable, and metadata files still contain placeholder content.

## Role Structure

| Path | Purpose |
| --- | --- |
| `tasks/main.yml` | Main tasks executed by the role |
| `handlers/main.yml` | Handlers notified by tasks, such as service restarts |
| `defaults/main.yml` | Default variables that can be overridden by playbooks or inventory |
| `vars/main.yml` | Role variables with higher precedence than defaults |
| `meta/main.yml` | Ansible Galaxy metadata and role dependencies |
| `tests/test.yml` | Basic test playbook that applies the role to `localhost` |
| `tests/inventory` | Test inventory containing `localhost` |

## Requirements

- Ansible installed on the control machine
- A valid inventory for the hosts where the role will run
- Sudo or privilege escalation if future tasks manage packages, services, or system files

## Role Variables

No active role variables are defined yet.

Future variables can be added to:

- `defaults/main.yml` for values users should be able to override
- `vars/main.yml` for role-specific values that should rarely change

## Dependencies

No role dependencies are currently defined.

## Example Playbook

```yaml
---
- hosts: localhost
  remote_user: root
  roles:
    - cloudkode
```

## Test Command

From the repository root, run:

```bash
ansible-playbook -i cloudkode/tests/inventory cloudkode/tests/test.yml
```

## Next Steps

- Replace placeholder metadata in `meta/main.yml`
- Add real tasks to `tasks/main.yml`
- Add handlers if the role manages services
- Add defaults for package names, service names, paths, or users
- Expand tests once the role has real behavior
