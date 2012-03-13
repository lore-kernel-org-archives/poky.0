Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44CFCE0044D
	for <poky@yoctoproject.org>; Tue, 13 Mar 2012 10:52:57 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2DHqp3E030092;
	Tue, 13 Mar 2012 17:52:51 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 29092-07; Tue, 13 Mar 2012 17:52:45 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2DHqiJ1030086
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 13 Mar 2012 17:52:45 GMT
Message-ID: <1331661165.18586.10.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kang Kai <kai.kang@windriver.com>
Date: Tue, 13 Mar 2012 17:52:45 +0000
In-Reply-To: <144ee0162388cf7d64804ddd7be5cf509d146aba.1331014918.git.kai.kang@windriver.com>
References: <cover.1331014918.git.kai.kang@windriver.com>
	<144ee0162388cf7d64804ddd7be5cf509d146aba.1331014918.git.kai.kang@windriver.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] cleanup-workdir: add a script to clean up WORKDIR
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
X-List-Received-Date: Tue, 13 Mar 2012 17:52:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-03-06 at 14:36 +0800, Kang Kai wrote:
> [Yocto 1561]
> Add script cleanup-workdir to clean up WORKDIR. It checks every
> package build directories under WORKDIR then parse the directory
> name to get package name and version. If the version is not the
> package prefer version then delete the directory.
> 
> Signed-off-by: Kang Kai <kai.kang@windriver.com>
> ---
>  scripts/cleanup-workdir |  147 +++++++++++++++++++++++++++++++++++++++++++++++
>  1 files changed, 147 insertions(+), 0 deletions(-)
>  create mode 100755 scripts/cleanup-workdir
> 
> diff --git a/scripts/cleanup-workdir b/scripts/cleanup-workdir
> new file mode 100755
> index 0000000..5827ff9
> --- /dev/null
> +++ b/scripts/cleanup-workdir
> @@ -0,0 +1,147 @@
> +#!/usr/bin/env python
> +
> +# Copyright (c) 2012 Wind River Systems, Inc.
> +#
> +# This program is free software; you can redistribute it and/or modify
> +# it under the terms of the GNU General Public License version 2 as
> +# published by the Free Software Foundation.
> +#
> +# This program is distributed in the hope that it will be useful,
> +# but WITHOUT ANY WARRANTY; without even the implied warranty of
> +# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
> +# See the GNU General Public License for more details.
> +#
> +# You should have received a copy of the GNU General Public License
> +# along with this program; if not, write to the Free Software
> +# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
> +
> +import os
> +import sys
> +import optparse
> +import re
> +import shutil
> +
> +versions = {}
> +obsolete_dirs = []
> +verfile = '/tmp/bitbake-s.%d' % os.getpid()
> +
> +def err_quit(msg):
> +    print msg
> +    try:
> +        os.remove(verfile)
> +    except:
> +        pass
> +    sys.exit(1)
> +
> +def parse_version(verstr):
> +    elems = verstr.split(':')
> +    epoch = elems[0]
> +    if len(epoch) == 0:
> +        return elems[1]
> +    else:
> +        return epoch + '_' + elems[1]
> +
> +def parse_dir(match, pkgabsdir):
> +    pkg_name = match.group(1)
> +    pkg_version = match.group(2)
> +    if pkg_name in versions:
> +        if pkg_version != versions[pkg_name]:
> +            obsolete_dirs.append(pkgabsdir)
> +        return True
> +    return False
> +
> +def main():
> +    parser = optparse.OptionParser(
> +        usage = """%prog [options] [BUILDDIR]
> +
> +Remove the obsolete packages' build directories in WORKDIR.
> +If BUILDDIR is not appended, current directory is treated as build directory.""")
> +
> +    parser.add_option("-i", "--initenv", help = "The file oe-init-build-env which needs to be sourced before run bitbake",
> +                        action = "store", dest = "envfile", default = None)
> +
> +    options, args = parser.parse_args(sys.argv)
> +
> +    builddir = None
> +    if len(args) > 1:
> +        builddir = args[1]
> +    if not builddir and os.path.exists('tmp/work'):
> +        builddir = os.getcwd()
> +    if not builddir:
> +        err_quit("Current directory is not a valid build directory. Please input a valid build diretory.")
> +
> +    envfile = options.__dict__['envfile']
> +    if not envfile:
> +        envfile = os.path.join(builddir, "../oe-init-build-env")
> +    if not os.path.exists(envfile):
> +        err_quit("Can't find file oe-init-build-env.")
> +
> +    print 'Updating bitbake caches...'
> +    cmd = "source %s . &>/dev/null && bitbake -s > %s " % (envfile, verfile)
> +    ret = os.system(cmd)
> +    if ret != 0:
> +        print "Execute 'bitbake -s' failed. Can't get packages' versions."
> +        return 1
> +
> +    fverfile = open(verfile, 'r')
> +    alllines = fverfile.readlines()
> +    fverfile.close()
> +
> +    alllines = alllines[5:]
> +    for line in alllines:
> +        line = line.strip()
> +        line = re.sub('\s+', ' ', line)
> +        elems = line.split(' ')
> +        if len(elems) == 2:
> +            version = parse_version(elems[1])
> +        else:
> +            version = parse_version(elems[2])
> +        versions[elems[0]] = version
> +
> +    workdir = os.path.join(builddir, 'tmp/work')

This looks reasonable to me but we should ask bitbake what WORKDIR is
rather than hardcode this here.

Otherwise it looks like a reasonable place to start with this.

Cheers,

Richard

> +    for archdir in os.listdir(workdir):
> +        archdir = os.path.join(workdir, archdir)
> +        if not os.path.isdir(archdir):
> +            pass
> +
> +        for pkgdir in sorted(os.listdir(archdir)):
> +            pkgabsdir = os.path.join(archdir, pkgdir)
> +            if not os.path.isdir(pkgabsdir):
> +                pass
> +
> +            # parse the package directory names
> +            # parse native/nativesdk packages first
> +            match = re.match('(.*?-native.*?)-(.*)', pkgdir)
> +            if match and parse_dir(match, pkgabsdir):
> +                continue
> +
> +            # parse package names which ends with numbers such as 'glib-2.0'
> +            match = re.match('(.*?-[\.\d]+)-(\d.*)', pkgdir)
> +            if match and parse_dir(match, pkgabsdir):
> +                continue
> +
> +            # other packages
> +            match = re.match('(.*?)-(\d.*)', pkgdir)
> +            if match and parse_dir(match, pkgabsdir):
> +                continue
> +
> +    for d in obsolete_dirs:
> +        print "Deleleting %s" % d
> +        shutil.rmtree(d, True)
> +    os.remove(verfile)
> +
> +    if len(obsolete_dirs):
> +        print '\nTotal %d items.' % len(obsolete_dirs)
> +    else:
> +        print '\nNo obsolete directory found under %s.' % workdir
> +
> +    return 0
> +
> +if __name__ == '__main__':
> +    try:
> +        ret = main()
> +    except Exception:
> +        ret = 2
> +        import traceback
> +        traceback.print_exc(3)
> +    sys.exit(ret)



