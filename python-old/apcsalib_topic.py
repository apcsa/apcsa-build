import yaml
import os.path
import hashlib
import pickle
import re
import xml.etree.ElementTree as ET

import apcsaconfig as config



# reads a topic (yaml) file, 
# writes a buncha files to builddir, 
# returns the reference name for the topic/chapter
def process_topic(topic_file, builddir):
    f = open(topic_file, "r")
    # check if f is empty...
    topic = yaml.load(f)
    f.close()
    
    contentroot = os.path.normpath(os.path.join(config.CUR, topic['content-root']))
    
    chapter_url_name = get_unique_name(topic, topic['title'], contentroot)
    build_write_chapter_xml(topic, chapter_url_name, builddir, contentroot)
    
    print("*** topic '" + topic['title'] + "' done")
    return chapter_url_name



    
## builds the chapter xml, and recurses down.
def build_write_chapter_xml(chapter, filename, builddir, contentroot):
    xchapter = ET.Element('chapter')
    xchapter.append(ET.Comment('made by llab builder'))
    xchapter.set('display_name', chapter['title'])
    for seq in chapter['sequence']:
        xseq = ET.SubElement(xchapter, 'sequential')
        seq_url_name = get_unique_name(seq, seq['title'], contentroot)
        xseq.set('url_name', seq_url_name)
        build_write_sequential_xml(seq, seq_url_name, builddir, contentroot)
    chapter_target = os.path.join(builddir, "chapter", filename + ".xml")
    # print(chapter_target)
    etree = ET.ElementTree(xchapter)
    etree.write(chapter_target)

    
    
def build_write_sequential_xml(seq, filename, builddir, contentroot):
    xseq = ET.Element('sequential')
    xseq.append(ET.Comment('made by llab builder'))
    xseq.set('display_name', seq['title'])
    for vert in seq['sequence']:
        xvert = ET.SubElement(xseq, 'vertical')
        name_prepend = re.sub('[^A-Za-z0-9]',"_",contentroot) + "_"
        vert_url_name = name_prepend + "_" + vert['loc']
        xvert.set('url_name', vert_url_name)
        build_vertical_xml(vert, vert_url_name, builddir, contentroot)
    sequential_target = os.path.join(builddir, "sequential", filename + ".xml")
    etree = ET.ElementTree(xseq)
    etree.write(sequential_target)
    
    
    
def build_vertical_xml(vert, filename, builddir, contentroot):
    xvert = ET.Element('vertical')
    xvert.append(ET.Comment('made by llab builder'))
    xvert.set('display_name', vert['title'])
    # right now, never have multiple components in a vertical!  
    # Should figure out a scheme for this, though - a sequence dict?
    edxtypes = ['discussion','html','problem','video']
    
    return
    


# makes a hopefully unique hash-based name from topic dict and path,
# adds some letters from title at the end so its sort of human readable
# contentroot is passed in to help makes things unique (i.e., if the same dict is in two different places)
def get_unique_name(dict, title, contentroot):
    h = hashlib.md5()                   # md5 is good enough
    h.update(str.encode(contentroot))   # convert string to bytes
    h.update(pickle.dumps(dict))
    postpender = '_' + re.sub('[^A-Za-z0-9]', '', title)
    return h.hexdigest() + postpender[:20]    




