#!/usr/bin/python
#
# Reverse basic Lilypond notation
# Used for notating the Bach's Crab canon:
# https://github.com/ykarikos/sheet-music/blob/master/Bach_J.S./Musikalisches_Opfer/canon_1_a_2.ly

import sys,re

class Note:
    def __init__(self, s, p):
        m = re.search("([a-z]+)([,']?)([0-9]*)([()]?)", s)
        if m:
            self.pitch = m.group(1)
            self.updown = m.group(2)
            if m.group(3) == "":
                self.time = p.time
            else:
                self.time = m.group(3)
            self.arch = m.group(4)

    def tostring(self, prev):
        out = self.pitch + self.updown
        if self.time != prev.time:
            out = out + self.time
        out = out + self.arch
        return out

    def tostringreverse(self, prev):
        out = self.pitch
        if self.pitch != "r":
            if prev.updown == "'":
                out = out + ","
            elif prev.updown == ",":
                out = out + "'"
        if self.time != prev.time:
            out = out + self.time
        if self.arch == ")":
            out = out + "("
        elif self.arch == "(":
            out = out + ")"
        return out


def isvalid(s):
    return s != "" and s != "|"

measure = 256

notes = []

prev = None
for line in sys.stdin.readlines():
    for n in filter(isvalid, line.rstrip().split(" ")):
        cur = Note(n, prev)
        notes.append(cur)
        prev = cur

timeleft = measure
notes.reverse()
prev = Note("c0", None)
for n in notes:
    print(n.tostringreverse(prev)),

    timeleft = timeleft - (measure / int(n.time))
    if timeleft <= 0:
        timeleft = measure
        print("|")

    if n.pitch == "r":
        prev.time = n.time
    else:
        prev = n
