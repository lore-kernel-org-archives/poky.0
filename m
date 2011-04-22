Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id F02D14C80578
	for <poky@yoctoproject.org>; Fri, 22 Apr 2011 09:13:42 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 2EB341660371; Fri, 22 Apr 2011 08:13:42 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9D087166031E;
	Fri, 22 Apr 2011 08:13:41 -0600 (MDT)
Message-ID: <4DB18D15.9060505@mlbassoc.com>
Date: Fri, 22 Apr 2011 08:13:41 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Python missing _ctypes library
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
X-List-Received-Date: Fri, 22 Apr 2011 14:13:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Building from master 37ac9a0823690bd3e031c04e2351a41af04e8aa1, any target will
have this problem.

Unable to use ctypes/_ctypes module:
   # python
   Python 2.6.6 (r266:84292, Mar 30 2011, 10:57:26) [GCC 4.5.2] on linux2
   Type "help", "copyright", "credits" or "license" for more information.
   >>> import ctypes
   Traceback (most recent call last):
       File "<stdin>", line 1, in <module>
   File "/usr/lib/python2.6/ctypes/__init__.py", line 10, in <module>
       from _ctypes import Union, Structure, Array
   ImportError: No module named _ctypes

I believe this is because of this error during the build:
   autoreconf: Entering directory `Modules/_ctypes/libffi'
   autoreconf: configure.ac: not using Gettext
   autoreconf: running: aclocal --force
   configure.ac:26: error: m4_copy: won't overwrite defined macro: _AC_ARG_VAR_PRECIOUS
   configure.ac:26: the top level
   autom4te: /home/local/p60_poky/tmp/sysroots/i686-linux/usr/bin/m4 failed with exit status: 1
   aclocal: /home/local/p60_poky/tmp/sysroots/i686-linux/usr/bin/autom4te failed with exit status: 1
   autoreconf: aclocal failed with exit status: 1
   NOTE: _ctypes failed to autoreconf

Perhaps related to bug #941?

Filed as bug #1003

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

