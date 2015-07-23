import os
import datetime
import shutil


import apcsaconfig as config





# makes sure we have a new target with a nice directory structure to stick our content in.
# builds subdirectories, or copies from source
# returns the build root path
def instantiate_empty_build(coursename, source=None):
    target = os.path.normpath(os.path.join(config.BUILD_TARGET, coursename + "_" + datetime.datetime.now().strftime("%Y%m%d-%H%M%S")))
    if os.path.exists(target):
        raise OSError("Trying to make build target directory " + target + " : already exists")
    os.mkdir(target)
    if not source:
        # make it new.
        for d in ['about','chapter','course','discussion','html','info','policies','problem','sequential','static','tabs','vertical','video']:
            os.mkdir(os.path.join(target, d))
    return target
        


                 

# identifies and creates a new subdirectory in BUILD_TARGET for this build, based on datetime
def get_unique_build_target():
    target = os.path.normpath(os.path.join(config.BUILD_TARGET, datetime.datetime.now().strftime("%Y%m%d-%H%M%S")))
    if os.path.exists(target):
        raise OSError("Trying to make build target directory " + target + " : already exists")
    os.mkdir(target)
    return target
                              



#####################
## move static resources to build target, putting subdirs into name 
## (so, static dir in build has no subdirs.  Need to fix src values in html/css/javascript/etc
## but, this is what edx needs).
def copy_static_files_to_build(targetstr=None, srcstr=config.STATIC):
    if targetstr==None:
        target = os.path.join(get_unique_build_target(),"static")
        os.mkdir(target)
    else:
        target = os.path.normpath(os.path.join(config.BUILD_TARGET, targetstr))
    srcdir = os.path.abspath(srcstr)
    numfiles = 0
    for root, dirpath, filepath in os.walk(srcstr):
        prependdir = root[len(srcstr):]
        for f in filepath:
            full = os.path.join(prependdir, f)
            full_repl = full.replace('\\', "_")
            if (full_repl[0] == "_"):
                full_repl = full_repl[1:]
            targetf = os.path.join(target, full_repl)
            srcf = os.path.join(root, f)
            #print("SRC: " + srcf + " ::: DEST: " + targetf)
            shutil.copyfile(srcf, targetf)
            numfiles+=1
    return numfiles
    




def process_course(course_file, builddir):
    return
