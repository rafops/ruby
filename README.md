# Dockerized Ruby ZSH plugin

Clone plugin to custom plugins:

```bash
cd ${HOME}/.oh-my-zsh/custom/plugins && git clone https://github.com/rafops/ruby.git
```

Ignore changes to the `Gemfile`:

```
git update-index --skip-worktree Gemfile
```

Add your gems to the `Gemfile`

Add plugin to your load list in `~/.zshrc`:

```
plugins=(ruby)
```
