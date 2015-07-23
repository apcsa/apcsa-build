import os.path

#### important locations
## use unix style paths on all systems, please

# root of the repo
_root = '/cygwin/home/nate/git/apcsa/apcsa-r'
_build_target = '../apcsa-builds'






### don't edit below here -- cleaning things up.
REPO = os.path.normpath(_root)
BUILD_TARGET = os.path.normpath(os.path.join(_root, _build_target))

BUILD = os.path.normpath(os.path.join(_root, 'build'))
TOPIC = os.path.normpath(os.path.join(_root, 'main/topic'))
CUR = os.path.normpath(os.path.join(_root, 'main/cur'))
STATIC = os.path.normpath(os.path.join(_root, 'main/static'))


__all__ = [REPO, BUILD_TARGET, BUILD, TOPIC, CUR, STATIC]

#print(BUILD_TARGET_DIR)