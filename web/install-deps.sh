#!/bin/sh

<<<<<<< HEAD
BRANCH="$(git branch --show-current)"

echo $BRANCH
=======
echo "vars ${scmVars}"
>>>>>>> 5877c42 (scm)

if [ "$BRANCH" != "dev" ] || [ "$BRANCH" != "master" ]; then

  INTERNALS="digit-ui-internals"
  rm -rf $INTERNALS
  git clone -b development https://github.com/egovernments/digit-ui-internals.git $INTERNALS
  cd $INTERNALS && yarn && yarn build
  cd ..

  rm -rf node_modules yarn.lock

<<<<<<< HEAD
fi

echo $BRANCH
=======
# fi
>>>>>>> 5877c42 (scm)
