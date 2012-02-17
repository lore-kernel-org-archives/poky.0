Return-Path: <andrei@gherzan.ro>
Received: from mail-qw0-f41.google.com (mail-qw0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B4FBE003E1
	for <poky@yoctoproject.org>; Fri, 17 Feb 2012 02:15:43 -0800 (PST)
Received: by qadz32 with SMTP id z32so767682qad.14
	for <poky@yoctoproject.org>; Fri, 17 Feb 2012 02:15:42 -0800 (PST)
Received: by 10.229.76.23 with SMTP id a23mr4602421qck.100.1329473741782;
	Fri, 17 Feb 2012 02:15:41 -0800 (PST)
Received: from [128.224.170.210] ([89.121.200.106])
	by mx.google.com with ESMTPS id c2sm24126100qao.15.2012.02.17.02.15.39
	(version=SSLv3 cipher=OTHER); Fri, 17 Feb 2012 02:15:40 -0800 (PST)
Message-ID: <4F3E28CA.7080001@gherzan.ro>
Date: Fri, 17 Feb 2012 12:15:38 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1329470296.git.kai.kang@windriver.com>
	<05007499a51a6cdeb40dfe66b0d8ea60df08c048.1329470296.git.kai.kang@windriver.com>
In-Reply-To: <05007499a51a6cdeb40dfe66b0d8ea60df08c048.1329470296.git.kai.kang@windriver.com>
X-Gm-Message-State: ALoCoQnH/eMBw/9O3keH94aX1/oIyef2q4fppB0+24Nau64LrtyH5YQfC2fAcgwJv4CgOkW0pKXt
Subject: Re: [PATCH 1/1] create-recipe: create a recipe from source URI
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
X-List-Received-Date: Fri, 17 Feb 2012 10:15:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/17/2012 11:28 AM, Kang Kai wrote:
> This feature is from Yocto 1.2 Bug 1656. create-recipe allows you
> to give an upstream URL then generate a recipe file. It trys to check
> source URI, license files, configure files, rpm spec file .etc to
> get package name, version, description, summary, license and license
> file, build dependecy and so on.
>
> Signed-off-by: Kang Kai<kai.kang@windriver.com>
> ---
>   scripts/create-recipe |  769 +++++++++++++++++++++++++++++++++++++++++++++++++
>   1 files changed, 769 insertions(+), 0 deletions(-)
>   create mode 100755 scripts/create-recipe
>
> diff --git a/scripts/create-recipe b/scripts/create-recipe
> new file mode 100755
> index 0000000..3034452
> --- /dev/null
> +++ b/scripts/create-recipe
> @@ -0,0 +1,769 @@
> +#!/usr/bin/env python
> +
> +# Copyright (C) 2012, Wind River Systems, Inc. All rights reserved.
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
> +import shutil
> +import re
> +import urllib
> +import sha, md5, hashlib
> +
> +tmpdir = "/tmp/poky_create_recipe.%s" % os.getpid()
> +bbdir = ''
> +bin_file_name = ''
> +pkgname = ''
> +pkgversion = ''
> +summary = ''
> +description = ''
> +homepage = ''
> +license = []
> +unchecked_license_files = []
> +license_files = {}
> +licenses = {}
> +depends = []
> +src_uri = ''
> +is_local_src = False
> +src_uri_md5sum = ''
> +src_uri_sha256sum = ''
> +patches = []
> +inherits = []
> +
> +# support 2 package types: tar and rpm
> +pkgtype = ""
> +
> +def usage():
> +    print "This is the bitbake import bb file script.  Usage:\n"
> +    print "\tbitbake-createbb<SRC_URI>  [patch1] [patch2] ...\n"
> +
> +def download(pkg_uri, destdir, issource = False):
> +    cwd = os.getcwd()
> +    if os.path.isfile(pkg_uri):
> +        global is_local_src
> +        if issource:
> +            is_local_src = True
> +        pkg_uri = os.path.realpath(pkg_uri)
> +        print 'Copying package: ', pkg_uri, ' to ', destdir
> +        os.chdir(destdir)
> +        shutil.copy(pkg_uri, '.')
> +        os.chdir(cwd)
> +        return 0
> +    else:
> +        print 'Downloading package: ', pkg_uri, ' to ', destdir
> +        os.chdir(destdir)
> +        ret = os.system("wget --quiet " + pkg_uri)
> +        os.chdir(cwd)
> +        return ret
> +
> +def guess_name_version_by_uri(uri):
> +    global bin_file_name, pkgname, pkgversion, pkgtype
> +
> +    # clean the tail something like ';name=xxx'
> +    if ';' in uri:
> +        uri = uri.split(';', 1)[0]
> +
> +    elems = uri.rsplit('/', 1)
> +    pkg = bin_file_name = elems[1]
> +
> +    if pkg.endswith("tgz"):
> +        pkg = re.sub("tgz$", "tar.gz", pkg)
> +
> +    match = re.match('(.*?)\-([0-9\.\-\~]+)\.tar', pkg)
> +    if match:
> +        pkgtype = 'tar'
> +        pkgname =  match.group(1)
> +        pkgversion = match.group(2)
> +
> +    match = re.match('(.*?)\-([0-9\.\~]+).*?\.src.rpm', pkg)
> +    if match:
> +        pkgtype = 'rpm'
> +        pkgname = match.group(1)
> +        pkgversion = match.group(2)
> +
> +def get_md5_sha256_sum():
> +    global src_uri_md5sum, src_uri_sha256sum
> +
> +    curdir = os.getcwd()
> +    os.chdir(tmpdir)
> +
> +    f = file(bin_file_name, 'r')
> +    content = f.read()
> +    f.close()
> +
> +    md_five = md5.new()
> +    md_five.update(content)
> +    src_uri_md5sum = md_five.hexdigest()
> +
> +    sha_256 = hashlib.sha256()
> +    sha_256.update(content)
> +    src_uri_sha256sum = sha_256.hexdigest()
> +
> +    os.chdir(curdir)
> +
> +def unpack_package():
> +    global bin_file_name
> +
> +    cwd = os.getcwd()
> +    os.chdir(tmpdir)
> +    if pkgtype == 'rpm':
> +        cmdline = "rpm2cpio " + bin_file_name + " | cpio -id"
> +        ret = os.system(cmdline)
> +        if ret != 0:
> +            return ret
> +        for item in os.listdir('.'):
> +            if re.match(pkgname + '([0-9\.\-\~]*)\.tar', item):
> +                bin_file_name = item
> +                break
> +
> +    cmdline = "tar axf " + bin_file_name
> +    ret = os.system(cmdline)
> +
> +    os.chdir(cwd)
> +    return ret
> +
> +# get the fall-back description when other way fail
> +# check homepage at same time
> +def guess_description_from_readme(readme):
> +    global description, homepage
> +    f = file(readme)
> +    state = 0
> +    desc = ''
> +
> +    for line in f:
> +        if state == 1 and re.match('^\n', line) and len(desc)>  80:
> +            state = 2
> +        if state == 0 and len(line)>  1:
> +            state = 1
> +        if state == 1:
> +            desc += line
> +
> +        match = re.search('(http\:\/\/.*$name.*\.org)', line)
> +        if match:
> +            url = match.group(1)
> +            if re.search('bug') or len(homepage)>  1:
> +                pass
> +            else:
> +                homepage = url
> +
> +    f.close()
> +    if (len(desc)>  4 and len(description)<  3):
> +        description = desc
> +
> +def guess_description_from_freecode(pkgname):
> +    global description
> +    desc = ''
> +    state = 0
> +
> +    html = urllib.urlopen("http://freecode.com/projects/" + pkgname)
> +    for line in html:
> +        if state == 1:
> +            desc += line
> +        if state == 0 and re.search('\<div class\=\"project-detail\"\>', line):
> +            state = 1
> +        if state == 1 and re.search('\<\/p\>', line):
> +            state = 2
> +
> +    # deal the description
> +    desc = re.sub('\<p\>', '', desc)
> +    desc = re.sub('\<\/p\>', '', desc)
> +    desc = re.sub('\r', '', desc)
> +    desc = desc.strip()
> +    if len(desc)>  10:
> +       description = desc
> +
> +# get Summary from pkgconfig file
> +def guess_summary_from_pc(pc):
> +    global summary
> +
> +    fn = file(pc)
> +    for line in fn:
> +        match = re.match('Description:\s*(.*)', line)
> +        if match and len(summary)<  2:
> +            summary = match.group(1)
> +            break
> +
> +    summary = summary.strip()
> +    fn.close()
> +
> +def guess_description(pkgdir):
> +    global pkgname, description, summary
> +
> +    readmes = []
> +    pcs = []
> +
> +    for subdir in os.listdir(pkgdir):
> +        if re.match('^README$', subdir):
> +            readmes.insert(0, os.path.join(pkgdir, subdir))
> +        elif re.match('README.*', subdir):
> +            readmes.append(os.path.join(pkgdir, subdir))
> +        elif re.match('.*\.pc.*', subdir):
> +            pcs.insert(0, os.path.join(pkgdir, subdir))
> +        elif re.match(pkgname + '\.pc.*', subdir):
> +            pcs.insert(0, os.path.join(pkgdir, subdir))
> +        elif re.match('.*\.pc', subdir):
> +            pcs.append(os.path.join(pkgdir, subdir))
> +
> +    for readme in readmes:
> +        guess_description_from_readme(os.path.join(pkgdir, readme))
> +
> +    if (len(pkgname)>  2):
> +        guess_description_from_freecode(pkgname)
> +
> +    # clear the 'newline' in description
> +    description = re.sub('\n', ' ', description)
> +
> +    for pc in pcs:
> +        guess_summary_from_pc(pc)
> +
> +    # if didn't get summary, use first line of description
> +    if len(summary)<  2:
> +        summary = description
> +        summary = re.sub("\n", " ", summary)
> +        summary = re.sub("\s+", " ", summary)
> +        match = re.match("(.*?)\.", summary)
> +        if match:
> +            summary = match.group(1)
> +
> +# the sha1sum values are from autospectacle
> +def setup_licenses():
> +    licenses['06877624ea5c77efe3b7e39b0f909eda6e25a4ec'] =  "GPLv2"
> +    licenses["075d599585584bb0e4b526f5c40cb6b17e0da35a"] = "GPLv2"
> +    licenses["10782dd732f42f49918c839e8a5e2894c508b079"] = "GPLv2"
> +    licenses["2d29c273fda30310211bbf6a24127d589be09b6c"] = "GPLv2"
> +    licenses["4df5d4b947cf4e63e675729dd3f168ba844483c7"] = "LGPLv2.1"
> +    licenses["503df7650052cf38efde55e85f0fe363e59b9739"] = "GPLv2"
> +    licenses["5405311284eab5ab51113f87c9bfac435c695bb9"] = "GPLv2"
> +    licenses["5fb362ef1680e635fe5fb212b55eef4db9ead48f"] = "LGPLv2"
> +    licenses["68c94ffc34f8ad2d7bfae3f5a6b996409211c1b1"] = "GPLv2"
> +    licenses["66c77efd1cf9c70d4f982ea59487b2eeb6338e26"] = "LGPLv2.1"
> +    licenses["74a8a6531a42e124df07ab5599aad63870fa0bd4"] = "GPLv2"
> +    licenses["8088b44375ef05202c0fca4e9e82d47591563609"] = "LGPLv2.1"
> +    licenses["8624bcdae55baeef00cd11d5dfcfa60f68710a02"] = "GPLv3"
> +    licenses["8e57ffebd0ed4417edc22e3f404ea3664d7fed27"] = "MIT"
> +    licenses["99b5245b4714b9b89e7584bfc88da64e2d315b81"] = "BSD"
> +    licenses["aba8d76d0af67d57da3c3c321caa59f3d242386b"] = "MPLv1.1"
> +    licenses["bf50bac24e7ec325dbb09c6b6c4dcc88a7d79e8f"] = "LGPLv2"
> +    licenses["caeb68c46fa36651acf592771d09de7937926bb3"] = "LGPLv2.1"
> +    licenses["dfac199a7539a404407098a2541b9482279f690d"] = "GPLv2"
> +    licenses["e60c2e780886f95df9c9ee36992b8edabec00bcc"] = "LGPLv2.1"
> +    licenses["c931aad3017d975b7f20666cde0953234a9efde3"] = "GPLv2"
> +
> +def guess_licenses_from_file(copying, relname):
> +    global licenses, license
> +
> +    sha1 = sha.new()
> +
> +    fn = open(copying)
> +    content = fn.read()
> +    fn.close()
> +
> +    sha1.update(content)
> +    digest = sha1.hexdigest()
> +
> +    if digest in licenses:
> +        license.append(licenses[digest])
> +        md_five = md5.new()
> +        md_five.update(content)
> +        license_files[relname] = md_five.hexdigest()
> +
> +def guess_licenses_from_freecode():
> +    global license
> +
> +    lic = ''
> +    state = 0
> +
> +    html = urllib.urlopen("http://freecode.com/projects/" + pkgname)
> +    for line in html:
> +        if state == 1:
> +            lic += line
> +        if state == 0 and re.search('<th><span>Licenses</span></th>', line):
> +            state = 1
> +        if state == 1 and re.search('</a>', line):
> +            state = 2
> +
> +    # deal the license
> +    lic = lic.strip()
> +    match = re.search('<a.*?>(.*?)</a>', lic)
> +    if match:
> +        license.append(match.group(1))
> +
> +def guess_license(pkgdir):
> +    global unchecked_license_files
> +    licfile = os.path.join(pkgdir, 'LICENSE')
> +    if os.path.isfile(licfile):
> +        unchecked_license_files.append('LICENSE')
> +        guess_licenses_from_file(licfile, 'LICENSE')
> +    licfile = os.path.join(pkgdir, 'COPYING')
> +    if os.path.isfile(licfile):
> +        unchecked_license_files.append('COPYING')
> +        guess_licenses_from_file(licfile,'COPYING')
> +    licfile = os.path.join(pkgdir, 'COPYING.LIB')
> +    if os.path.isfile(licfile):
> +        unchecked_license_files.append('COPYING.LIB')
> +        guess_licenses_from_file(licfile, 'COPYING.LIB')
> +    licfile = os.path.join(pkgdir, 'COPYRIGHT')
> +    if os.path.isfile(licfile):
> +        unchecked_license_files.append('COPYRIGHT')
> +        guess_licenses_from_file(licfile, 'COPYRIGHT')
> +
> +def process_configure(pkgdir):
> +    if os.path.isfile(os.path.join(pkgdir, 'autogen.sh')):
> +        os.system("cd " + pkgdir + " ; ./autogen.sh&>  /dev/null");
> +
> +    configure = os.path.join(pkgdir, 'configure')
> +    if os.path.isfile(configure):
> +        if 'autotools' not in inherits:
> +            inherits.append('autotools')
> +
> +        global pkgname
> +        fn = open(configure)
> +        for line in fn:
> +            match = re.match('PACKAGE_NAME=\'(.*?)\'', line)
> +            if match and len(pkgname) == 0:
> +                pkgname = match.group(1)
> +
> +            match = re.match('PACKAGE_TARNAME=\'(.*?)\'', line)
> +            if match:
> +                pkgname = match.group(1)
> +
> +            match = re.match('PACKAGE_VERSION=\'(.*?)\'', line)
> +            if match:
> +                pkgversion = match.group(1)
> +
> +            match = re.match('PACKAGE_URL=\'(.*?)\'', line)
> +            if match:
> +                homepage = match.group(1)
> +
> +        fn.close()
> +
> +def push_buildreq(dep):
> +    global depends
> +
> +    # remove collateral ] ) etc damage in the string
> +    dep = re.sub("\"", "", dep)
> +    dep = re.sub("\)", "", dep)
> +    dep = re.sub("\]", "", dep)
> +    dep = re.sub("\[", "", dep)
> +
> +    # first, undo the space packing
> +    dep = re.sub(">=", ">= ", dep)
> +    dep = re.sub(">", ">  ", dep)
> +    dep = re.sub("<=", "<= ", dep)
> +    dep = re.sub("<", "<  ", dep)
> +
> +    items = dep.split(' ')
> +    dep = items[0]
> +
> +    # don't show configure variables, we can't deal with them
> +    if re.search("\$", dep):
> +        return
> +    if re.search("AC_SUBST", dep):
> +        return
> +
> +    if dep not in depends:
> +        depends.append(dep)
> +
> +def parse_configure_ac(ac_file):
> +    depth = 0
> +    clause = ""
> +
> +    fac = file(ac_file)
> +
> +    for line in fac:
> +        line = line.strip()
> +        i = 0
> +        while i<  len(line):
> +            if line[i] == '(':
> +                depth += 1
> +            if line[i] == ')' and depth>  0:
> +                depth -= 1
> +            clause += line[i]
> +            i += 1
> +        if depth>  0:
> +            continue
> +
> +        # remove '\n'
> +        clause = re.sub('\n', '', clause)
> +        clause = clause.strip()
> +
> +        match = re.match('PKG_CHECK_MODULES\((.*)\)', clause)
> +        if match:
> +            modules = match.group(1)
> +            pkg = modules.split(',')[1].strip()
> +            match2 = re.match('\[(.*)\]', pkg)
> +            if match2:
> +                pkg = match2.group(1)
> +
> +            # split the build dependencies
> +            pkg = pkg.replace('\s+', ' ')
> +            pkg = re.sub('\s>\s', '>', pkg)
> +            pkg = re.sub('\s>=\s', '>=', pkg)
> +            pkg = re.sub('\s=\s', '=', pkg)
> +            pkg = re.sub('\s<=\s', '<=', pkg)
> +            pkg = re.sub('\s<\s', '<', pkg)
> +            pkglist = pkg.split(' ')
> +            for dep in pkglist:
> +                push_buildreq(dep)
> +
> +        match = re.match('PKG_CHECK_EXISTS\((.*)\)', clause)
> +        if match:
> +            exists = match.group(1)
> +            pkg = exists.split(',', 1)[0].strip()
> +            match2 = re.match('\[(.*)\]', pkg)
> +            if match2:
> +                pkg = match2.group(1)
> +                pkg = pkg.strip()
> +
> +            pkg = re.sub('\s+', ' ', pkg)
> +            pkg = re.sub('\s>\s', '>', pkg)
> +            pkg = re.sub('\s>=\s', '>=', pkg)
> +            pkg = re.sub('\s=\s', '=', pkg)
> +            pkg = re.sub('\s<=\s', '<=', pkg)
> +            pkg = re.sub('\s<\s', '<', pkg)
> +            pkglist = pkg.split(' ')
> +            for dep in pkglist:
> +                push_buildreq(dep)
> +
> +        # these items are from autospectacle.pl
> +        if re.search('_PROG_INTLTOOL', clause):
> +            push_buildreq("intltool")
> +        if re.search('GETTEXT_PACKAGE', clause):
> +            push_buildreq('gettext')
> +        if re.search('GTK_DOC_CHECK', clause):
> +            push_buildreq('gtk-doc')
> +        if re.search('GNOME_DOC_INIT', clause):
> +            push_buildreq('gnome-doc-utils')
> +        if re.search('AM_GLIB_GNU_GETTEXT', clause):
> +            push_buildreq('gettext')
> +
> +        match = re.search('AC_INIT\((.*)\)', clause)
> +        if match:
> +            ac_init = match.group(1)
> +            ac_init = ac_init.strip()
> +            ac_init = re.sub('\s+', ' ', ac_init)
> +            items = ac_init.split(',')
> +            version = ''
> +            if len(items)>= 2:
> +                version = items[1].strip()
> +
> +            if re.match('\d+(\.\d+)*', version):
> +                pkgversion = version
> +
> +        match = re.search('AM_INIT_AUTOMAKE\((.*)\)', clause)
> +        if match:
> +            am_init = match.group(1)
> +            am_init = re.sub('\s+', ' ', am_init)
> +            items = am_init.split(',')
> +            if len(items)>= 2:
> +                ver = items[1]
> +                ver = re.sub('\[', '', ver)
> +                ver = re.sub('\]', '', ver)
> +                if re.match('\d(\.\d+)*', ver):
> +                    pkgversion = ver
> +        clause = ''
> +    fac.close
> +
> +def process_configure_ac(pkgdir):
> +    configure_acs = []
> +    for root, dirnames, filenames in os.walk(pkgdir):
> +        for f in filenames:
> +            if re.match('.*\.ac', f):
> +                configure_acs.append(os.path.join(root, f))
> +                if 'autotools' not in inherits:
> +                    inherits.append('autotools')
> +
> +    for ac in configure_acs:
> +        parse_configure_ac(ac)
> +
> +# check the *.pro files and get build requires from 'PKGCONFIG'
> +def process_qmake_pro(pkgdir):
> +    global pkgname
> +
> +    pro_files = []
> +    depth = 0
> +    clause = ''
> +    pre_char = ''
> +
> +    if os.path.isfile(os.path.join(pkgdir, pkgname + '.pro')) and 'qmake2' not in inherits:
> +        inherits.append('qmake2')
> +    for root, dirnames, filenames in os.walk(pkgdir):
> +        for f in filenames:
> +            if f.endswith('.pro'):
> +                pro_files.append(os.path.join(root, f))
> +
> +    for pro in pro_files:
> +        need_next_line = False
> +        f = file(pro)
> +        for line in f:
> +            if line.startswith('#'):
> +                continue
> +            line = re.sub('\n', '', line)
> +            clause += line
> +            if line.endswith('\\'):
> +                continue
> +
> +            clause = clause.strip()
> +            match =  re.match('PKGCONFIG\s*=(.*)', clause)
> +            if match:
> +                dep = match.group(1)
> +                push_buildreq(dep)
> +            match = re.match('PKGCONFIG\s*\+=(.*)', clause)
> +            if match:
> +                dep = match.group(1)
> +                dep = dep.strip()
> +                dep = re.sub('\\\\', '', dep)
> +                dep = re.sub('\s+', ' ', dep)
> +                items = dep.split(' ')
> +                for item in items:
> +                    push_buildreq(item)
> +
> +            clause = ''
> +
> +        f.close()
> +
> +# spec file has rpm macros, may not so reliable
> +def parse_spec_file(srcdir):
> +    # find the spec file first
> +    spec_file = ''
> +    for item in os.listdir(srcdir):
> +        if item.endswith('.spec'):
> +            spec_file = os.path.join(srcdir, item)
> +            break
> +
> +    if len(spec_file) == 0:
> +        return 1
> +
> +    global pkgname, pkgversion, summary, description, depends
> +    global src_uri, homepage
> +
> +    f = open(spec_file)
> +    for line in f:
> +        match = re.match('Summary\s*:(.*)', line)
> +        if match:
> +            if len(summary) == 0:
> +                summary = match.group(1).strip()
> +            continue
> +        match = re.match('Name\s*:(.*)', line)
> +        if match and len(pkgname) == 0:
> +            pkgname = match.group(1).strip()
> +            continue
> +        match = re.match('Version\s*:(.*)', line)
> +        if match:
> +            version = match.group(1).strip()
> +            if re.match('\d+(\.\d+)?', version):
> +                pkgversion = version
> +            continue
> +        match = re.match('License\s*:(.*)', line)
> +        if match:
> +            license.append(match.group(1).strip())
> +            continue
> +        match = re.match('URL(?i)\s*:(.*)', line)
> +        if match:
> +            homepage = match.group(1).strip()
> +            continue
> +        match = re.match('Source0*\s*:(.*)', line)
> +        if match and is_local_src:
> +            src_uri = match.group(1).strip()
> +            src_uri = re.sub('\%\{name\}', pkgname, src_uri)
> +            src_uri = re.sub('\%\{version\}', pkgversion, src_uri)
> +            continue
> +        match = re.match('BuildRequires\s*:(.*)', line)
> +        if match:
> +            deps = match.group(1).strip()
> +            deps = re.sub(',', ' ', deps)
> +            deps = re.sub('\s+', ' ', deps)
> +	    deps = re.sub('\s*>\s*', '>', deps)
> +	    deps = re.sub('\s*>=\s*', '>=', deps)
> +	    deps = re.sub('\s*<\s*', '<', deps)
> +	    deps = re.sub('\s*<=\s*', '<=', deps)
> +            for item in deps.split(' '):
> +                push_buildreq(item)
> +
> +        match = re.match('%description\s*$', line)
> +        if match:
> +            for l in f:
> +                if l.startswith('%'):
> +                    break
> +                description += l
> +            description = re.sub('\n', '', description)
> +
> +    f.close()
> +
> +def write_bbfile():
> +    if len(pkgname) == 0 or len(pkgversion) == 0:
> +        fail_quit("Can't get package name or version.")
> +
> +    content = ''
> +    content += 'DESCRIPTION = "' + description + '"\n'
> +    content += 'SUMMARY = "' + summary + '"\n'
> +    if len(homepage)>  0:
> +        content += 'HOMEPAGE = "' + homepage + '"\n'
> +
> +    content += 'LICENSE = "'
> +    for lic in license:
> +        content += lic + ' '
> +    content += '"\n'
> +    content += 'LIC_FILES_CHKSUM = "'
> +    indent = ''
> +    for key in license_files:
> +        content += indent + 'file://' + key + ';md5=' + license_files[key] + ' \\\n';
> +        indent = '\t\t'
> +    content += indent + '"\n\n';
> +
> +    if len(license) == 0:
> +        guess_licenses_from_freecode()
> +        print '\nCan NOT get license from package itself.'
> +        if len(license)>  0:
> +            print 'Get license from freecode.com is: '
> +            print '  ', license[0]
> +        if len(unchecked_license_files)>  0:
> +            lic_files = '  '
> +            for l_file in unchecked_license_files:
> +                lic_files += l_file + ' '
> +            print 'Suggest to check license file(s):'
> +            print lic_files
> +        print 'Please update the license and license file manually.'
> +    elif len(license_files) == 0 and len(unchecked_license_files)>  0:
> +        print '\nCan NOT find the license file, please check:'
> +        for lic_file in unchecked_license_files:
> +                print ' ' + lic_file,
> +        print
> +        print 'Please update the license and license file manually.'
> +
> +    if len(depends)>  0:
> +        content += 'DEPENDS = "'
> +        for dep in depends:
> +            content += dep + ' '
> +        content += ' "\n'
> +
> +    content += 'PR = "r0"\n\n'
> +
> +    if is_local_src:
> +        print 'You provide a local source package. Please update SRC_URI with repository link.'
> +        content += 'SRC_URI = " \\\n'
> +    else:
> +        content += 'SRC_URI = "' + src_uri + ' \\\n'
> +    for patch in patches:
> +        items = patch.rsplit('/', 1)
> +        content += '\tfile://' + items[1] + ' \\\n'
> +    content += '\t"\n'
> +    content += 'SRC_URI[md5sum] = "' + src_uri_md5sum + '"\n'
> +    content += 'SRC_URI[sha256sum] = "' + src_uri_sha256sum + '"\n'
> +
> +    if len(inherits)>  0:
> +        content += '\ninherit '
> +        for inherit in inherits:
> +            content += inherit + ' '
> +        content += '\n'
> +
> +    cwd = os.getcwd()
> +    os.chdir(bbdir)
> +    bb_filename = pkgname + '_' + pkgversion + '.bb'
> +    bb_file = open(bb_filename, 'w')
> +    bb_file.write(content)
> +    bb_file.close()
> +    os.chdir(cwd)
> +    print '\nCreate bb file: %s/%s' % (bbdir, bb_filename)
> +
> +def fail_quit(msg):
> +    print msg
> +    clean_up()
> +    exit(1)
> +
> +def clean_up():
> +    shutil.rmtree(tmpdir)
> +    pass
> +
> +##########################################################
> +
> +if __name__ == '__main__':
> +    if (len(sys.argv)<  2):
> +        usage()
> +        exit(1)
> +
> +    src_uri = sys.argv[1]
> +
> +    index = 2
> +    while index<  len(sys.argv):
> +        patches.append(sys.argv[index])
> +        index += 1
> +
> +    guess_name_version_by_uri(src_uri)
> +    if pkgname is None:
> +        print "Can't get the package name."
> +        exit(1)
> +
> +    # create output dir
> +    bbdir = os.path.join(os.getcwd(), pkgname)
> +    if os.path.exists(bbdir):
> +        if not os.path.isdir(bbdir):
> +            os.remove(bbdir)
> +    else:
> +        os.mkdir(bbdir)
> +
> +    if os.path.isdir(tmpdir):
> +        shutil.rmtree(tmpdir)
> +    os.mkdir(tmpdir)
> +    ret = download(src_uri, tmpdir, True)
> +    if ret != 0:
> +        fail_quit('Download package failed. Make sure the SRC_URI is valid.')
> +
> +    if unpack_package() != 0:
> +        fail_quit('Unpack package failed.')
> +
> +    patchdir = os.path.join(bbdir, pkgname + '-' + pkgversion)
> +    if len(patches)>  0:
> +        if os.path.exists(patchdir):
> +            if not os.path.isdir(patchdir):
> +                os.remove(patchdir)
> +        else:
> +            os.mkdir(patchdir)
> +
> +    # deal with patches in arguments
> +    for patch in patches:
> +        ret = download(patch, patchdir)
> +        if ret != 0:
> +            print 'Patch %s is not valid, omit it.' % patch
> +            patches.remove(patch)
> +
> +    if pkgtype == 'rpm':
> +        parse_spec_file(tmpdir)
> +
> +    get_md5_sha256_sum()
> +
> +    pkgdir = ''
> +    for subdir in os.listdir(tmpdir):
> +        subdir = os.path.join(tmpdir, subdir)
> +        if os.path.isdir(subdir):
> +            pkgdir = subdir
> +            break
> +    if pkgdir == '':
> +        pkgdir = tmpdir
> +
> +    if pkgtype == 'tar':
> +        parse_spec_file(pkgdir)
> +
> +    guess_description(pkgdir)
> +    process_configure(pkgdir)
> +
> +    setup_licenses()
> +    guess_license(pkgdir)
> +
> +    process_configure_ac(pkgdir)
> +    process_qmake_pro(pkgdir)
> +
> +    write_bbfile()
> +    clean_up()

Good work.

@g

