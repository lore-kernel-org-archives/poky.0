Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAEA2E00599
	for <poky@yoctoproject.org>; Thu, 19 Jan 2012 08:33:58 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q0JGXwJ0019066
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 19 Jan 2012 08:33:58 -0800 (PST)
Received: from Macintosh-5.local (172.25.34.36) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 19 Jan 2012 08:33:56 -0800
Message-ID: <4F1845F3.4040303@windriver.com>
Date: Thu, 19 Jan 2012 10:33:55 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4F17C7D9.10506@windriver.com> <4F17E37B.7030506@windriver.com>
In-Reply-To: <4F17E37B.7030506@windriver.com>
Subject: Re: Please help to review the Yocto 1656: Recipe creation/import script
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
X-List-Received-Date: Thu, 19 Jan 2012 16:33:58 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 1/19/12 3:33 AM, Kang Kai wrote:
> Hi Josh,
>
> The attachment is the the design document V2 and implement.
>
> The V2 document changes are:
> 1 remove patch_set from argument list
> 2 deb is not support right now
>
> Any comment is welcome.
> And I will on vacation until Jan 30, so my reply may not in time.
>
> Thanks&   Regards,
> Kai
>
>
>
>
> recipe_creation_bb.txt
>
>
>      Design document for Recipe creation/import script
>
> * Purpose
>
> The feature is from Yocto 1.2 Bug 1656. A script or similar system
> that would allow you to give is an upstream URL, tarball, patch set,
> package (SRPM, or debian style) and generate a recipe based on those
> instructions.
>
> Name it with bitbake-createbb, and integrate into the build system
> to use the build system infrastructure that similiar with bitbake-runtask.

I'd suggest changing the name to recipe-createbb or something.  Since this isn't 
a "bitbake" program (or is it?)

> * Usage:
> bitbake-createbb<SRC_URI>
>
> * Design Flow
> 1 download the source package from the SRC_URI
> 2 get package name and version from package or tarball name.
> 3 unpack to /tmp/bitbake-createbb-pid
> 4 if tarball, get summary and description from freshmeat.org, README files and pkgconfig files;
>    otherwise get them from SRPM spec file or debian control file
> 5 get license, license file and checksum from LICENSE/COPYING files or freshmeat.org.

For license files, I would suggest we scan for common filenames:

LICENSE, COPYING, COPYING.LIB, and COPYRIGHT

If it doesn't match the known checksums, we tell the user and let them manually 
figure out the license type and verify things are consisten, but we should be 
able to fill out the license filename for them.

Otherwise, it all looks fine to me.

--Mark

> 6 get dependent packages
>    |-- get them by parse configure files
>    |-- just parse spec file
> 8 remove downloaded files
>
>
>
>
>
> bitbake-createbb
>
>
> #!/usr/bin/env python
>
> import os
> import sys
> import shutil
> import re
> import urllib
> import sha, md5, hashlib
>
> tmpdir = "/tmp/bitbake_createbb.%s" % os.getpid()
> bin_file_name = ''
> pkgname = ''
> pkgversion = ''
> summary = ''
> description = ''
> homepage = ''
> license = []
> license_files = {}
> licenses = {}
> depends = []
> src_uri = ''
> src_uri_md5sum = ''
> src_uri_sha256sum = ''
> inherits = []
>
> # support 2 package types: tar and rpm
> pkgtype = ""
>
> def usage():
>      print "This is the bitbake import bb file script.  Usage:\n"
>      print "\tbitbake-createbb<SRC_URI>  \n"
>
> def download(pkg_uri):
>      try:
>          shutil.rmtree(tmpdir)
>      except:
>          pass
>
>      cwd = os.getcwd()
>      os.mkdir(tmpdir)
>      os.chdir(tmpdir)
>      print 'Downloading package: ', pkg_uri, ' to ', tmpdir
>      ret = os.system("wget --quiet " + pkg_uri)
>      os.chdir(cwd)
>
>      return ret
>
> def guess_name_by_uri(uri):
>      global bin_file_name, pkgname, pkgversion, pkgtype
>
>      elems = uri.rsplit('/', 1)
>      pkg = bin_file_name = elems[1]
>
>      if pkg.endswith("tgz"):
>          pkg = re.sub("tgz$", "tar.gz", pkg)
>
>      match = re.match('(.*?)\-([0-9\.\-\~]+)\.tar', pkg)
>      if match:
>          pkgtype = 'tar'
>          pkgname =  match.group(1)
>          pkgversion = match.group(2)
>
>      match = re.match('(.*?)\-([0-9\.\~]+).*?\.src.rpm', pkg)
>      if match:
>          pkgtype = 'rpm'
>          pkgname = match.group(1)
>          pkgversion = match.group(2)
>
> def get_md5_sha256_sum():
>      global src_uri_md5sum, src_uri_sha256sum
>
>      curdir = os.getcwd()
>      os.chdir(tmpdir)
>
>      f = file(bin_file_name, 'r')
>      content = f.read()
>      f.close()
>
>      md_five = md5.new()
>      md_five.update(content)
>      src_uri_md5sum = md_five.hexdigest()
>
>      sha_256 = hashlib.sha256()
>      sha_256.update(content)
>      src_uri_sha256sum = sha_256.hexdigest()
>
>      os.chdir(curdir)
>
> def unpack_package():
>      global bin_file_name
>
>      cwd = os.getcwd()
>      os.chdir(tmpdir)
>      if pkgtype == 'rpm':
>          cmdline = "rpm2cpio " + bin_file_name + " | cpio -id"
>          ret = os.system(cmdline)
>          if ret != 0:
>              return ret
>          for item in os.listdir('.'):
>              if re.match(pkgname + '([0-9\.\-\~]*)\.tar', item):
>                  bin_file_name = item
>                  break
>
>      cmdline = "tar axf " + bin_file_name
>      ret = os.system(cmdline)
>
>      os.chdir(cwd)
>      return ret
>
> # get the fall-back description when other way fail
> # check homepage at same time
> def guess_description_from_readme(readme):
>      global description, homepage
>      f = file(readme)
>      state = 0
>      desc = ''
>
>      for line in f:
>          if state == 1 and re.match('^\n', line) and len(desc)>  80:
>              state = 2
>          if state == 0 and len(line)>  1:
>              state = 1
>          if state == 1:
>              desc += line
>
>          match = re.search('(http\:\/\/.*$name.*\.org)', line)
>          if match:
>              url = match.group(1)
>              if re.search('bug') or len(homepage)>  1:
>                  pass
>              else:
>                  homepage = url
>
>      f.close()
>      if (len(desc)>  4 and len(description)<  3):
>          description = desc
>
> def guess_description_from_freecode(pkgname):
>      global description
>      desc = ''
>      state = 0
>
>      html = urllib.urlopen("http://freecode.com/projects/"  + pkgname)
>      for line in html:
>          if state == 1:
>              desc += line
>          if state == 0 and re.search('\<div class\=\"project-detail\"\>', line):
>              state = 1
>          if state == 1 and re.search('\<\/p\>', line):
>              state = 2
>
>      # deal the description
>      desc = re.sub('\<p\>', '', desc)
>      desc = re.sub('\<\/p\>', '', desc)
>      desc = re.sub('\r', '', desc)
>      desc = desc.strip()
>      if len(desc)>  10:
>         description = desc
>
> # get Summary from pkgconfig file
> def guess_summary_from_pc(pc):
>      global summary
>
>      fn = file(pc)
>      for line in fn:
>          match = re.match('Description:\s*(.*)', line)
>          if match and len(summary)<  2:
>              summary = match.group(1)
>              break
>
>      summary = summary.strip()
>      fn.close()
>
> def guess_description(pkgdir):
>      global pkgname, description, summary
>
>      readmes = []
>      pcs = []
>
>      for subdir in os.listdir(pkgdir):
>          if re.match('^README$', subdir):
>              readmes.insert(0, os.path.join(pkgdir, subdir))
>          elif re.match('README.*', subdir):
>              readmes.append(os.path.join(pkgdir, subdir))
>          elif re.match('.*\.pc.*', subdir):
>              pcs.insert(0, os.path.join(pkgdir, subdir))
>          elif re.match(pkgname + '\.pc.*', subdir):
>              pcs.insert(0, os.path.join(pkgdir, subdir))
>          elif re.match('.*\.pc', subdir):
>              pcs.append(os.path.join(pkgdir, subdir))
>
>      for readme in readmes:
>          guess_description_from_readme(os.path.join(pkgdir, readme))
>
>      if (len(pkgname)>  2):
>          guess_description_from_freecode(pkgname)
>
>      for pc in pcs:
>          guess_summary_from_pc(pc)
>
>      # if didn't get summary, use first line of description
>      if len(summary)<  2:
>          summary = description
>          summary = re.sub("\n", " ", summary)
>          summary = re.sub("\s+", " ", summary)
>          match = re.match("(.*?)\.", summary)
>          summary = match.group(1)
>
> # the sha1sum values are from autospectacle
> def setup_licenses():
>      licenses['06877624ea5c77efe3b7e39b0f909eda6e25a4ec'] =  "GPLv2"
>      licenses["075d599585584bb0e4b526f5c40cb6b17e0da35a"] = "GPLv2"
>      licenses["10782dd732f42f49918c839e8a5e2894c508b079"] = "GPLv2"
>      licenses["2d29c273fda30310211bbf6a24127d589be09b6c"] = "GPLv2"
>      licenses["4df5d4b947cf4e63e675729dd3f168ba844483c7"] = "LGPLv2.1"
>      licenses["503df7650052cf38efde55e85f0fe363e59b9739"] = "GPLv2"
>      licenses["5405311284eab5ab51113f87c9bfac435c695bb9"] = "GPLv2"
>      licenses["5fb362ef1680e635fe5fb212b55eef4db9ead48f"] = "LGPLv2"
>      licenses["68c94ffc34f8ad2d7bfae3f5a6b996409211c1b1"] = "GPLv2"
>      licenses["66c77efd1cf9c70d4f982ea59487b2eeb6338e26"] = "LGPLv2.1"
>      licenses["74a8a6531a42e124df07ab5599aad63870fa0bd4"] = "GPLv2"
>      licenses["8088b44375ef05202c0fca4e9e82d47591563609"] = "LGPLv2.1"
>      licenses["8624bcdae55baeef00cd11d5dfcfa60f68710a02"] = "GPLv3"
>      licenses["8e57ffebd0ed4417edc22e3f404ea3664d7fed27"] = "MIT"
>      licenses["99b5245b4714b9b89e7584bfc88da64e2d315b81"] = "BSD"
>      licenses["aba8d76d0af67d57da3c3c321caa59f3d242386b"] = "MPLv1.1"
>      licenses["bf50bac24e7ec325dbb09c6b6c4dcc88a7d79e8f"] = "LGPLv2"
>      licenses["caeb68c46fa36651acf592771d09de7937926bb3"] = "LGPLv2.1"
>      licenses["dfac199a7539a404407098a2541b9482279f690d"] = "GPLv2"
>      licenses["e60c2e780886f95df9c9ee36992b8edabec00bcc"] = "LGPLv2.1"
>      licenses["c931aad3017d975b7f20666cde0953234a9efde3"] = "GPLv2"
>
> def guess_licenses_from_file(copying, relname):
>      global licenses, license
>
>      sha1 = sha.new()
>
>      fn = open(copying)
>      content = fn.read()
>      fn.close()
>
>      sha1.update(content)
>      digest = sha1.hexdigest()
>
>      if digest in licenses:
>          license.append(licenses[digest])
>          md_five = md5.new()
>          md_five.update(content)
>          license_files[relname] = md_five.hexdigest()
>
> def guess_licenses_from_freecode():
>      global license
>
>      lic = ''
>      state = 0
>
>      html = urllib.urlopen("http://freecode.com/projects/"  + pkgname)
>      for line in html:
>          if state == 1:
>              lic += line
>          if state == 0 and re.search('<th><span>Licenses</span></th>', line):
>              state = 1
>          if state == 1 and re.search('</a>', line):
>              state = 2
>
>      # deal the license
>      lic = lic.strip()
>      match = re.search('<a.*?>(.*?)</a>', lic)
>      if match:
>          license.append(match.group(1))
>
> def guess_license(pkgdir):
>      for item in  os.listdir(pkgdir):
>          realpath = os.path.join(pkgdir, item)
>          if os.path.isfile(realpath) and (re.match('COPY.*', item) \
>                  or re.match('LICENSE.*', item) or re.match('GPL.*', item)):
>              guess_licenses_from_file(realpath, item)
>
>      if len(license) == 0:
>          guess_licenses_from_freecode()
>
> def process_configure(pkgdir):
>      if os.path.isfile(os.path.join(pkgdir, 'autogen.sh')):
>          os.system("cd " + pkgdir + " ; ./autogen.sh&>  /dev/null");
>
>      configure = os.path.join(pkgdir, 'configure')
>      if os.path.isfile(configure):
>          if 'autotools' not in inherits:
>              inherits.append('autotools')
>
>          fn = open(configure)
>          for line in fn:
>              match = re.match('PACKAGE_NAME=\'(.*?)\'', line)
>              if match and len(pkgname) == 0:
>                  pkgname = match.group(1)
>
>              match = re.match('PACKAGE_TARNAME=\'(.*?)\'', line)
>              if match:
>                  pkgname = match.group(1)
>
>              match = re.match('PACKAGE_VERSION=\'(.*?)\'', line)
>              if match:
>                  pkgversion = match.group(1)
>
>              match = re.match('PACKAGE_URL=\'(.*?)\'', line)
>              if match:
>                  homepage = match.group(1)
>
>          fn.close()
>
> def push_buildreq(dep):
>      global depends
>
>      # remove collateral ] ) etc damage in the string
>      dep = re.sub("\"", "", dep)
>      dep = re.sub("\)", "", dep)
>      dep = re.sub("\]", "", dep)
>      dep = re.sub("\[", "", dep)
>
>      # first, undo the space packing
>      dep = re.sub(">=", ">= ", dep)
>      dep = re.sub("<=", "<= ", dep)
>
>      items = dep.split(' ')
>      dep = items[0]
>
>      # don't show configure variables, we can't deal with them
>      if re.search("\$", dep):
>          return
>      if re.search("AC_SUBST", dep):
>          return
>
>      if dep not in depends:
>          depends.append(dep)
>
> def parse_configure_ac(ac_file):
>      depth = 0
>      clause = ""
>
>      fac = file(ac_file)
>
>      for line in fac:
>          line = line.strip()
>          i = 0
>          while i<  len(line):
>              if line[i] == '(':
>                  depth += 1
>              if line[i] == ')' and depth>  0:
>                  depth -= 1
>              clause += line[i]
>              i += 1
>          if depth>  0:
>              continue
>
>          # remove '\n'
>          clause = re.sub('\n', '', clause)
>          clause = clause.strip()
>
>          match = re.match('PKG_CHECK_MODULES\((.*)\)', clause)
>          if match:
>              modules = match.group(1)
>              pkg = modules.split(',', 1)[1].strip()
>              match2 = re.match('\[(.*)\]', pkg)
>              if match2:
>                  pkg = match2.group(1)
>
>              # split the build dependencies
>              pkg = pkg.replace('\s+', ' ')
>              pkg = re.sub('\s>\s', '>', pkg)
>              pkg = re.sub('\s>=\s', '>=', pkg)
>              pkg = re.sub('\s=\s', '=', pkg)
>              pkg = re.sub('\s<=\s', '<=', pkg)
>              pkg = re.sub('\s<\s', '<', pkg)
>              pkglist = pkg.split(' ')
>              for dep in pkglist:
>                  push_buildreq(dep)
>
>          match = re.match('PKG_CHECK_EXISTS\((.*)\)', clause)
>          if match:
>              exists = match.group(1)
>              pkg = exists.split(',', 1)[0].strip()
>              match2 = re.match('\[(.*)\]', pkg)
>              if match2:
>                  pkg = match2.group(1)
>                  pkg = pkg.strip()
>
>              pkg = re.sub('\s+', ' ', pkg)
>              pkg = re.sub('\s>\s', '>', pkg)
>              pkg = re.sub('\s>=\s', '>=', pkg)
>              pkg = re.sub('\s=\s', '=', pkg)
>              pkg = re.sub('\s<=\s', '<=', pkg)
>              pkg = re.sub('\s<\s', '<', pkg)
>              pkglist = pkg.split(' ')
>              for dep in pkglist:
>                  push_buildreq(dep)
>
>          # these items are from autospectacle.pl
>          if re.search('_PROG_INTLTOOL', clause):
>              push_buildreq("intltool")
>          if re.search('GETTEXT_PACKAGE', clause):
>              push_buildreq('gettext')
>          if re.search('GTK_DOC_CHECK', clause):
>              push_buildreq('gtk-doc')
>          if re.search('GNOME_DOC_INIT', clause):
>              push_buildreq('gnome-doc-utils')
>          if re.search('AM_GLIB_GNU_GETTEXT', clause):
>              push_buildreq('gettext')
>
>          match = re.search('AC_INIT\((.*)\)', clause)
>          if match:
>              ac_init = match.group(1)
>              ac_init = ac_init.strip()
>              ac_init = re.sub('\s+', ' ', ac_init)
>              version = ac_init.split(',')[1].strip()
>              if re.match('\d+(\.\d+)*', version):
>                  pkgversion = version
>
>          match = re.search('AM_INIT_AUTOMAKE\((.*)\)', clause)
>          if match:
>              am_init = match.group(1)
>              am_init = re.sub('\s+', ' ', am_init)
>              items = am_init.split(',')
>              if len(items)>= 2:
>                  ver = items[1]
>                  ver = re.sub('\[', '', ver)
>                  ver = re.sub('\]', '', ver)
>                  if re.match('\d(\.\d+)*', ver):
>                      pkgversion = ver
>          clause = ''
>      fac.close
>
> def process_configure_ac(pkgdir):
>      configure_acs = []
>      for root, dirnames, filenames in os.walk(pkgdir):
>          for f in filenames:
>              if re.match('.*\.ac', f):
>                  configure_acs.append(os.path.join(root, f))
>                  if 'autotools' not in inherits:
>                      inherits.append('autotools')
>
>      for ac in configure_acs:
>          parse_configure_ac(ac)
>
> # check the *.pro files and get build requires from 'PKGCONFIG'
> def process_qmake_pro(pkgdir):
>      global pkgname
>
>      pro_files = []
>      depth = 0
>      clause = ''
>      pre_char = ''
>
>      if os.path.isfile(os.path.join(pkgdir, pkgname + '.pro')) and 'qmake2' not in inherits:
>          inherits.append('qmake2')
>      for root, dirnames, filenames in os.walk(pkgdir):
>          for f in filenames:
>              if re.match('.*\.pro', f):
>                  pro_files.append(os.path.join(pkgdir, f))
>
>      for pro in pro_files:
>          need_next_line = False
>          f = file(pro)
>          for line in f:
>              if line.startswith('#'):
>                  continue
>              line = re.sub('\n', '', line)
>              clause += line
>              if line.endswith('\\'):
>                  continue
>
>              clause = clause.strip()
>              match =  re.match('PKGCONFIG\s*=(.*)', clause)
>              if match:
>                  dep = match.group(1)
>                  push_buildreq(dep)
>              match = re.match('PKGCONFIG\s*\+=(.*)', clause)
>              if match:
>                  dep = match.group(1)
>                  dep = dep.strip()
>                  dep = re.sub('\\\\', '', dep)
>                  dep = re.sub('\s+', ' ', dep)
>                  items = dep.split(' ')
>                  for item in items:
>                      push_buildreq(item)
>
>              clause = ''
>
>          f.close()
>
> def parse_spec_file(tmpdir):
>      # find the spec file first
>      spec_file = ''
>      for item in os.listdir(tmpdir):
>          if re.match('.*\.spec', item):
>              spec_file = os.path.join(tmpdir, item)
>              break
>
>      if len(spec_file) == 0:
>          return 1
>
>      global pkgname, pkgversion, summary, description, depends
>      global src_uri, homepage
>
>      f = file(spec_file)
>      for line in f:
>          match = re.match('Summary\s*:(.*)', line)
>          if match:
>              if len(summary) == 0:
>                  summary = match.group(1).strip()
>              continue
>          match = re.match('Name\s*:(.*)', line)
>          if match:
>              pkgname = match.group(1).strip()
>              continue
>          match = re.match('Version\s*:(.*)', line)
>          if match:
>              version = match.group(1).strip()
>              if re.match('\d+(\.\d+)?', version):
>                  pkgversion = version
>              continue
>          match = re.match('License\s*:(.*)', line)
>          if match:
>              license.append(match.group(1).strip())
>              continue
>          match = re.match('URL(?i)\s*:(.*)', line)
>          if match:
>              homepage = match.group(1).strip()
>              continue
>          match = re.match('Source0*\s*:(.*)', line)
>          if match:
>              src_uri = match.group(1).strip()
>              src_uri = re.sub('\%\{name\}', pkgname, src_uri)
>              src_uri = re.sub('\%\{version\}', pkgversion, src_uri)
>              continue
>          match = re.match('BuildRequires\s*:(.*)', line)
>          if match:
>              deps = match.group(1).strip()
>              dpes = re.sub(',', ' ', deps)
>              deps = re.sub('\s+', ' ', deps)
>              for item in deps.split(' '):
>                  push_buildreq(item)
>
>          match = re.match('%description\s*$', line)
>          if match:
>              for l in f:
>                  if l.startswith('%'):
>                      break
>                  description += l
>              description = re.sub('\n', '', description)
>
>      f.close()
>
> def write_bbfile():
>      if len(pkgname) == 0 or len(pkgversion) == 0:
>          fail_quit("Can't get package name or version.")
>
>      content = ''
>      content += 'DESCRIPTION = "' + description + '"\n'
>      content += 'SUMMARY = "' + summary + '"\n'
>      if len(homepage)>  0:
>          content += 'HOMEPAGE = "' + homepage + '"\n'
>
>      content += 'LICENSE = "'
>      for lic in license:
>          content += lic + ' '
>      content += '"\n'
>      content += 'LIC_FILES_CHKSUM = "'
>      for key in license_files:
>          content += 'file://' + key + ';md5=' + license_files[key] + ' \\\n';
>      content += '\t\t"\n\n';
>
>      if len(depends)>  0:
>          content += 'DEPENDS = "'
>          for dep in depends:
>              content += dep + ' '
>          content += ' "\n'
>
>      content += 'PR = "r0"\n\n'
>
>      content += 'SRC_URI = "' + src_uri + '"\n'
>      content += 'SRC_URI[md5sum] = "' + src_uri_md5sum + '"\n'
>      content += 'SRC_URI[sha256sum] = "' + src_uri_sha256sum + '"\n'
>
>      if len(inherits)>  0:
>          content += '\ninherit '
>          for inherit in inherits:
>              content += inherit + ' '
>          content += '\n'
>
>      bb_filename = pkgname + '_' + pkgversion + '.bb'
>      bb_file = open(bb_filename, 'w')
>      bb_file.write(content)
>      bb_file.close()
>      print 'Create bb file : ', bb_filename
>
> def fail_quit(msg):
>      print msg
>      clean_up()
>      exit(1)
>
> def clean_up():
>      shutil.rmtree(tmpdir)
>      pass
>
> ##########################################################
>
> if __name__ == '__main__':
>      if (len(sys.argv)<  2):
>          usage()
>          exit(1)
>
>      src_uri = sys.argv[1]
>
>      guess_name_by_uri(src_uri)
>      if pkgname is None:
>          print "Can't get the package name."
>          exit(1)
>
>      ret = download(src_uri)
>      if ret != 0:
>          fail_quit('Download package failed. Make sure the SRC_URI is valid.')
>
>      if unpack_package() != 0:
>          fail_quit('Unpack package failed.')
>
>      if pkgtype == 'rpm':
>          parse_spec_file(tmpdir)
>
>      get_md5_sha256_sum()
>
>      pkgdir = ''
>      for subdir in os.listdir(tmpdir):
>          subdir = os.path.join(tmpdir, subdir)
>          if os.path.isdir(subdir):
>              pkgdir = subdir
>              break
>
>      if pkgtype == 'tar':
>          parse_spec_file(pkgdir)
>
>      guess_description(pkgdir)
>      process_configure(pkgdir)
>
>      setup_licenses()
>      guess_license(pkgdir)
>
>      process_configure_ac(pkgdir)
>      process_qmake_pro(pkgdir)
>
>      write_bbfile()
>      clean_up()
>
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


