# prefer a user rbenv over a system wide install
if [ -s "${HOME}/.rbenv/bin" ]; then
  rbenv_root="${HOME}/.rbenv"
elif [ -s "/opt/rbenv" ]; then
  rbenv_root="/opt/rbenv"
  export RBENV_ROOT="$rbenv_root"
fi

if [ -n "$rbenv_root" ]; then
  export PATH="${rbenv_root}/bin:$PATH"
  eval "$(rbenv init -)"
fi
