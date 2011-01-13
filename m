Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id CC9F04C81069
	for <poky@yoctoproject.org>; Wed, 12 Jan 2011 23:52:20 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 Jan 2011 21:52:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,316,1291622400"; d="scan'208";a="646469520"
Received: from unknown (HELO [10.255.14.15]) ([10.255.14.15])
	by fmsmga002.fm.intel.com with ESMTP; 12 Jan 2011 21:52:20 -0800
Message-ID: <4D2E9313.4020801@intel.com>
Date: Wed, 12 Jan 2011 21:52:19 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <1294789099-32160-1-git-send-email-dvhart@linux.intel.com>
In-Reply-To: <1294789099-32160-1-git-send-email-dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] bbvars.py: add a script to look for undocumented variables
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 13 Jan 2011 05:52:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/11/2011 03:38 PM, Darren Hart wrote:
> bbvars.py will compare recipes in meta directories with documentation files
> and report on variables that don't appear to be documented. It reports the
> number of times a variable is used as well as any doctags present in the
> documentation config file.
>
> The output of this is intended to aid in determining where documentation may
> be lacking, but it is not perfect, and does generate some false positives. An
> experienced eye and careful attention to count and doctag should be applied to
> the results.
>
> $ ./bbvars.py -d ../../documentation/poky-ref-manual/poky-ref-manual.html -m ../../meta -t ../../meta/conf/documentation.conf -T  | head -n 10
> Found 1413 undocumented bb variables (out of 1578):
> VARIABLE                              COUNT DOCTAG
> ===================================================
> BUILD_ARCH                            4     The name of the building architecture. E.g. i686.
> BUILD_CC_ARCH                         2     FIXME
> BUILD_PREFIX                          4     FIXME
> BUILD_SYS                             13    FIXME
> BUILD_VENDOR                          2     FIXME
> CACHE                                 1     The directory holding the cache of the metadata.
> COMPATIBLE_HOST                       19    A regular expression which matches the HOST_SYS names supported by the package/file. Failure to match will cause the file to be skipped by the parser.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: dvhart/scripts
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/scripts
>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> CC: Richard Purdie<richard.purdie@linuxfoundation.org>
> ---
>   scripts/contrib/bbvars.py |  186 +++++++++++++++++++++++++++++++++++++++++++++
>   1 files changed, 186 insertions(+), 0 deletions(-)
>   create mode 100755 scripts/contrib/bbvars.py
>
> diff --git a/scripts/contrib/bbvars.py b/scripts/contrib/bbvars.py
> new file mode 100755
> index 0000000..0896d64
> --- /dev/null
> +++ b/scripts/contrib/bbvars.py
> @@ -0,0 +1,186 @@
> +#!/usr/bin/env python
> +
> +# This program is free software; you can redistribute it and/or modify
> +# it under the terms of the GNU General Public License as published by
> +# the Free Software Foundation; either version 2 of the License, or
> +# (at your option) any later version.
> +#
> +# This program is distributed in the hope that it will be useful,
> +# but WITHOUT ANY WARRANTY; without even the implied warranty of
> +# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> +# GNU General Public License for more details.
> +#
> +# You should have received a copy of the GNU General Public License
> +# along with this program; if not, write to the Free Software
> +# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
> +#
> +# Copyright (C) Darren Hart<dvhart@linux.intel.com>, 2010
> +
> +
> +import sys
> +import getopt
> +import os
> +import os.path
> +import re
> +
> +def usage():
> +    print 'Usage: %s -d FILENAME [-d FILENAME]* -m METADIR [-m MATADIR]*' % os.path.basename(sys.argv[0])
> +    print '  -d FILENAME         documentation file to search'
> +    print '  -h, --help          display this help and exit'
> +    print '  -m METADIR          meta directory to search for recipes'
> +    print '  -t FILENAME         documentation config file (for doc tags)'
> +    print '  -T                  Only display variables with doc tags (requires -t)'
> +
> +def recipe_bbvars(recipe):
> +    ''' Return a unique set of every bbvar encountered in the recipe '''
> +    prog = re.compile("[A-Z_]+")
> +    vset = set()
> +    try:
> +        r = open(recipe)
> +    except IOError as (errno, strerror):
> +        print 'WARNING: Failed to open recipe ', recipe
> +        print strerror
> +
> +    for line in r:
> +        # Strip any comments from the line
> +        line = line.rsplit('#')[0]
> +        vset = vset.union(set(prog.findall(line)))
> +    r.close()
> +
> +    bbvars = {}
> +    for v in vset:
> +        bbvars[v] = 1
> +
> +    return bbvars
> +
> +def collect_bbvars(metadir):
> +    ''' Walk the metadir and collect the bbvars from each recipe found '''
> +    bbvars = {}
> +    for root,dirs,files in os.walk(metadir):
> +        for name in files:
> +            if name.find(".bb")>= 0:
> +                for key in recipe_bbvars(os.path.join(root,name)).iterkeys():
> +                    if bbvars.has_key(key):
> +                        bbvars[key] = bbvars[key] + 1
> +                    else:
> +                        bbvars[key] = 1
> +    return bbvars
> +
> +def bbvar_is_documented(var, docfiles):
> +    prog = re.compile(".*($|[^A-Z_])%s([^A-Z_]|$)" % (var))
> +    for doc in docfiles:
> +        try:
> +            f = open(doc)
> +        except IOError as (errno, strerror):
> +            print 'WARNING: Failed to open doc ', doc
> +            print strerror
> +        for line in f:
> +            if prog.match(line):
> +                return True
> +        f.close()
> +    return False
> +
> +def bbvar_doctag(var, docconf):
> +    prog = re.compile('^%s\[doc\] *= *"(.*)"' % (var))
> +    if docconf == "":
> +        return "?"
> +
> +    try:
> +        f = open(docconf)
> +    except IOError as (errno, strerror):
> +        return strerror
> +
> +    for line in f:
> +        m = prog.search(line)
> +        if m:
> +            return m.group(1)
> +
> +    f.close()
> +    return ""
> +
> +def main():
> +    docfiles = []
> +    metadirs = []
> +    bbvars = {}
> +    undocumented = []
> +    docconf = ""
> +    onlydoctags = False
> +
> +    # Collect and validate input
> +    try:
> +        opts, args = getopt.getopt(sys.argv[1:], "d:hm:t:T", ["help"])
> +    except getopt.GetoptError, err:
> +        print '%s' % str(err)
> +        usage()
> +        sys.exit(2)
> +
> +    for o, a in opts:
> +        if o in ('-h', '--help'):
> +            usage()
> +            sys.exit(0)
> +        elif o == '-d':
> +            if os.path.isfile(a):
> +                docfiles.append(a)
> +            else:
> +                print 'ERROR: documentation file %s is not a regular file' % (a)
> +                sys.exit(3)
> +        elif o == '-m':
> +            if os.path.isdir(a):
> +                metadirs.append(a)
> +            else:
> +                print 'ERROR: meta directory %s is not a directory' % (a)
> +                sys.exit(4)
> +        elif o == "-t":
> +            if os.path.isfile(a):
> +                docconf = a
> +        elif o == "-T":
> +            onlydoctags = True
> +        else:
> +            assert False, "unhandled option"
> +
> +    if len(docfiles) == 0:
> +        print 'ERROR: no docfile specified'
> +        usage()
> +        sys.exit(5)
> +
> +    if len(metadirs) == 0:
> +        print 'ERROR: no metadir specified'
> +        usage()
> +        sys.exit(6)
> +
> +    if onlydoctags and docconf == "":
> +        print 'ERROR: no docconf specified'
> +        usage()
> +        sys.exit(7)
> +
> +    # Collect all the variable names from the recipes in the metadirs
> +    for m in metadirs:
> +        for key,cnt in collect_bbvars(m).iteritems():
> +            if bbvars.has_key(key):
> +                bbvars[key] = bbvars[key] + cnt
> +            else:
> +                bbvars[key] = cnt
> +
> +    # Check each var for documentation
> +    varlen = 0
> +    for v in bbvars.iterkeys():
> +        if len(v)>  varlen:
> +            varlen = len(v)
> +        if not bbvar_is_documented(v, docfiles):
> +            undocumented.append(v)
> +    undocumented.sort()
> +    varlen = varlen + 1
> +
> +    # Report all undocumented variables
> +    print 'Found %d undocumented bb variables (out of %d):' % (len(undocumented), len(bbvars))
> +    header = '%s%s%s' % (str("VARIABLE").ljust(varlen), str("COUNT").ljust(6), str("DOCTAG").ljust(7))
> +    print header
> +    print str("").ljust(len(header), '=')
> +    for v in undocumented:
> +        doctag = bbvar_doctag(v, docconf)
> +        if not onlydoctags or not doctag == "":
> +            print '%s%s%s' % (v.ljust(varlen), str(bbvars[v]).ljust(6), doctag)
> +
> +
> +if __name__ == "__main__":
> +    main()
Pulled into Master

Thanks
	Sau!


