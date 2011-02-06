Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 99E4E4C80887
	for <poky@lists.pokylinux.org>; Sun,  6 Feb 2011 11:49:26 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 9785216601DC; Sun,  6 Feb 2011 10:49:25 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id E61E116601D7;
	Sun,  6 Feb 2011 10:49:23 -0700 (MST)
Message-ID: <4D4EDF23.1010508@mlbassoc.com>
Date: Sun, 06 Feb 2011 10:49:23 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: Can't build mtd-utils-native
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
X-List-Received-Date: Sun, 06 Feb 2011 17:49:27 -0000
X-Groupsio-MsgNum: 3393
Content-Type: multipart/mixed; boundary="------------020806010509010806040508"

--------------020806010509010806040508
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Using latest master 50387575ecdb05712958ea3c5caf023d6eb753ba
The recipe for mtd-utils-native fails to build, log attached.

Any ideas how to fix this?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------020806010509010806040508
Content-Type: text/plain;
 name="log.do_unpack"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="log.do_unpack"

Cloning into /tmp/test_poky/tmp/work/i686-linux/mtd-utils-native-1.4.1-r1/git...
 done.
 fatal: Not a valid object name v1.4.1
 Error executing a python function in /tmp/poky-amltd/meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb:
FetchError: Fetch command export HOME="/home/gthomas"; export GIT_CONFIG="/tmp/test_poky/tmp/sysroots/i686-linux/usr/etc/gitconfig"; export PATH="/tmp/test_poky/tmp/sysroots/i686-linux/usr/bin/i686-linux:/tmp/test_poky/tmp/sysroots/i686-linux/usr/bin:/tmp/test_poky/tmp/sysroots/i686-linux/usr/sbin:/tmp/test_poky/tmp/sysroots/i686-linux/usr/bin:/tmp/test_poky/tmp/sysroots/i686-linux/sbin:/tmp/test_poky/tmp/sysroots/i686-linux//bin:/home/local/poky-amltd/scripts:/home/local/poky-amltd/bitbake/bin/:/opt/amltd/bin:/usr/java/jdk1.6.0_10/bin:/home/gthomas/Android/android-sdk-linux_x86-1.1_r1/tools:/home/gthomas/bin:/usr/lib/qt-3.3/bin:/usr/kerberos/sbin:/usr/kerberos/bin:/usr/lib/ccache:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/tmp/poky-amltd/scripts"; git read-tree v1.4.1 failed with signal 128, output:
fatal: Not a valid object name v1.4.1


ERROR: Error executing a python function in /tmp/poky-amltd/meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb:
FetchError: Fetch command export HOME="/home/gthomas"; export GIT_CONFIG="/tmp/test_poky/tmp/sysroots/i686-linux/usr/etc/gitconfig"; export PATH="/tmp/test_poky/tmp/sysroots/i686-linux/usr/bin/i686-linux:/tmp/test_poky/tmp/sysroots/i686-linux/usr/bin:/tmp/test_poky/tmp/sysroots/i686-linux/usr/sbin:/tmp/test_poky/tmp/sysroots/i686-linux/usr/bin:/tmp/test_poky/tmp/sysroots/i686-linux/sbin:/tmp/test_poky/tmp/sysroots/i686-linux//bin:/home/local/poky-amltd/scripts:/home/local/poky-amltd/bitbake/bin/:/opt/amltd/bin:/usr/java/jdk1.6.0_10/bin:/home/gthomas/Android/android-sdk-linux_x86-1.1_r1/tools:/home/gthomas/bin:/usr/lib/qt-3.3/bin:/usr/kerberos/sbin:/usr/kerberos/bin:/usr/lib/ccache:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/tmp/poky-amltd/scripts"; git read-tree v1.4.1 failed with signal 128, output:
fatal: Not a valid object name v1.4.1


The stack trace of python calls that resulted in this exception/failure was:
ERROR: The stack trace of python calls that resulted in this exception/failure was:
  File "base_do_unpack", line 34, in <module>
ERROR:   File "base_do_unpack", line 34, in <module>

ERROR: 
  File "base_do_unpack", line 28, in base_do_unpack
ERROR:   File "base_do_unpack", line 28, in base_do_unpack

ERROR: 
  File "/home/local/poky-amltd/bitbake/lib/bb/fetch2/git.py", line 168, in unpack
ERROR:   File "/home/local/poky-amltd/bitbake/lib/bb/fetch2/git.py", line 168, in unpack
    runfetchcmd("%s read-tree %s%s" % (ud.basecmd, ud.revisions[ud.names[0]], readpathspec), d)
ERROR:     runfetchcmd("%s read-tree %s%s" % (ud.basecmd, ud.revisions[ud.names[0]], readpathspec), d)

ERROR: 
  File "/home/local/poky-amltd/bitbake/lib/bb/fetch2/__init__.py", line 480, in runfetchcmd
ERROR:   File "/home/local/poky-amltd/bitbake/lib/bb/fetch2/__init__.py", line 480, in runfetchcmd
    raise FetchError("Fetch command %s failed with signal %s, output:\n%s" % (cmd, signal, output))
ERROR:     raise FetchError("Fetch command %s failed with signal %s, output:\n%s" % (cmd, signal, output))

ERROR: 
The code that was being executed was:
ERROR: The code that was being executed was:
     0030:		if not ret:
ERROR:      0030:		if not ret:
     0031:			raise bb.build.FuncFailed("oe_unpack_file failed with return value %s" % ret)
ERROR:      0031:			raise bb.build.FuncFailed("oe_unpack_file failed with return value %s" % ret)
     0032:
ERROR:      0032:
     0033:
ERROR:      0033:
 *** 0034:base_do_unpack(d)
ERROR:  *** 0034:base_do_unpack(d)
     0035:
ERROR:      0035:
(file: 'base_do_unpack', lineno: 34, function: <module>)
ERROR: (file: 'base_do_unpack', lineno: 34, function: <module>)
     0024:		else:
ERROR:      0024:		else:
     0025:			# use bb.fetch2 unpack API
ERROR:      0025:			# use bb.fetch2 unpack API
     0026:			ud = urldata[url]
ERROR:      0026:			ud = urldata[url]
     0027:			rootdir = bb.data.getVar('WORKDIR', localdata, True)
ERROR:      0027:			rootdir = bb.data.getVar('WORKDIR', localdata, True)
 *** 0028:			ret = ud.method.unpack(ud, rootdir, localdata)
ERROR:  *** 0028:			ret = ud.method.unpack(ud, rootdir, localdata)
     0029:		bb.utils.unlockfile(lf)
ERROR:      0029:		bb.utils.unlockfile(lf)
     0030:		if not ret:
ERROR:      0030:		if not ret:
     0031:			raise bb.build.FuncFailed("oe_unpack_file failed with return value %s" % ret)
ERROR:      0031:			raise bb.build.FuncFailed("oe_unpack_file failed with return value %s" % ret)
     0032:
ERROR:      0032:
(file: 'base_do_unpack', lineno: 28, function: base_do_unpack)
ERROR: (file: 'base_do_unpack', lineno: 28, function: base_do_unpack)
Function 'base_do_unpack' failed
ERROR: Function 'base_do_unpack' failed

--------------020806010509010806040508--
