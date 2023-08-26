# ~/.bash_functions: Fonctions pour (Ba)sh

# TODO(mtr) N'ajouter un alias que si l'alias n'est pas défini
add-alias ()
{
  if [ "$#" -ne "2" ]; then
    echo "Usage: $0 name value"
    echo "Add an alias to the current shell and the ~/.bash_aliases file."
    echo "    name  : Name of the alias"
    echo "    value : Value for the alias"
    exit 1
  fi
  local name=$1
  local value="$2"
  echo alias $name=\'$value\'>>~/.bash_aliases
  eval alias $name=\'$value\'
  alias $name
}

ssource ()
{
  [ -f $1 ] && source $1
}

