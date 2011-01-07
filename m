Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id C95FC4C80B70
	for <poky@lists.pokylinux.org>; Thu,  6 Jan 2011 18:04:32 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id E7CD01660177; Thu,  6 Jan 2011 17:04:31 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 870C81660173;
	Thu,  6 Jan 2011 17:04:30 -0700 (MST)
Message-ID: <4D26588E.7070701@mlbassoc.com>
Date: Thu, 06 Jan 2011 17:04:30 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: SRCREV_FORMAT breaks my builds
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
X-List-Received-Date: Fri, 07 Jan 2011 00:04:33 -0000
X-Groupsio-MsgNum: 2117
Content-Type: multipart/mixed; boundary="------------020709070906050101080907"

--------------020709070906050101080907
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

My system builds on the Poky meta layer (only), plus my
target layers.  As of an update today, I now get errors
parsing any package (in meta) which uses SRCREV_FORMAT.

The error (bitback tracebacks) is attached.

I see these recipes with SRCREV_FORMAT:
   ./meta/recipes-kernel/linux/linux-yocto-stable_git.bb:SRCREV_FORMAT = "meta_machine"
   ./meta/recipes-kernel/linux/linux-yocto_git.bb:SRCREV_FORMAT = "meta_machine"
   ./meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb:SRCREV_FORMAT = "meta_machine"

This error happens because I have my own machine(s) which
are not listed in poky-default-revisions.inc, such as:
   SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
adding such an entry for my machine into my distribution
files does work past the problem.

Since I have my own machines and linux recipes, the linux-yocto
ones are not needed and indeed cause pain.  How can I ignore
them (since I want to use the poky meta layer untouched)?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------020709070906050101080907
Content-Type: text/plain;
 name="out"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="out"

Pseudo has not been built, building this first before the main build
Loading cache...done.
Loaded 687 entries from dependency cache.
Parsing recipes...ERROR: Error evaluating '${@bb.fetch.get_srcrev(d)}'
Traceback (most recent call last):
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 117, in expandWithRefs
    s = __expand_python_regexp__.sub(varparse.python_sub, s)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 76, in python_sub
    value = utils.better_eval(codeobj, DataContext(self.d))
  File "/tmp/poky-mlb/bitbake/lib/bb/utils.py", line 400, in better_eval
    return eval(source, _context, locals)
  File "SRCPV", line 1, in <module>
  File "/tmp/poky-mlb/bitbake/lib/bb/fetch/__init__.py", line 389, in get_srcrev
    ud.setup_localpath(d)
  File "/tmp/poky-mlb/bitbake/lib/bb/fetch/__init__.py", line 572, in setup_localpath
    self.localpath = self.method.localpath(self.url, self, d)
  File "/tmp/poky-mlb/bitbake/lib/bb/fetch/git.py", line 59, in localpath
    tag = Fetch.srcrev_internal_helper(ud, d)
  File "/tmp/poky-mlb/bitbake/lib/bb/fetch/__init__.py", line 701, in srcrev_internal_helper
    raise InvalidSRCREV("Please set SRCREV to a valid value")
InvalidSRCREV: Please set SRCREV to a valid value

ERROR: Error evaluating '${LINUX_VERSION}+git${SRCPV}'
Traceback (most recent call last):
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 116, in expandWithRefs
    s = __expand_var_regexp__.sub(varparse.var_sub, s)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 60, in var_sub
    var = self.d.getVar(key, 1)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 260, in getVar
    return self.expand(value, var)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 132, in expand
    return self.expandWithRefs(s, varname).value
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 117, in expandWithRefs
    s = __expand_python_regexp__.sub(varparse.python_sub, s)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 76, in python_sub
    value = utils.better_eval(codeobj, DataContext(self.d))
  File "/tmp/poky-mlb/bitbake/lib/bb/utils.py", line 400, in better_eval
    return eval(source, _context, locals)
  File "SRCPV", line 1, in <module>
  File "/tmp/poky-mlb/bitbake/lib/bb/fetch/__init__.py", line 389, in get_srcrev
    ud.setup_localpath(d)
  File "/tmp/poky-mlb/bitbake/lib/bb/fetch/__init__.py", line 572, in setup_localpath
    self.localpath = self.method.localpath(self.url, self, d)
  File "/tmp/poky-mlb/bitbake/lib/bb/fetch/git.py", line 59, in localpath
    tag = Fetch.srcrev_internal_helper(ud, d)
  File "/tmp/poky-mlb/bitbake/lib/bb/fetch/__init__.py", line 701, in srcrev_internal_helper
    raise InvalidSRCREV("Please set SRCREV to a valid value")
InvalidSRCREV: Please set SRCREV to a valid value

ERROR: Error evaluating 'sstate-${PN}-${MULTIMACH_ARCH}${TARGET_VENDOR}-${TARGET_OS}-${PV}-${PR}-${SSTATE_PKGARCH}-${SSTATE_VERSION}-'
Traceback (most recent call last):
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 116, in expandWithRefs
    s = __expand_var_regexp__.sub(varparse.var_sub, s)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 60, in var_sub
    var = self.d.getVar(key, 1)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 260, in getVar
    return self.expand(value, var)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 132, in expand
    return self.expandWithRefs(s, varname).value
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 116, in expandWithRefs
    s = __expand_var_regexp__.sub(varparse.var_sub, s)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 60, in var_sub
    var = self.d.getVar(key, 1)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 260, in getVar
    return self.expand(value, var)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 132, in expand
    return self.expandWithRefs(s, varname).value
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 117, in expandWithRefs
    s = __expand_python_regexp__.sub(varparse.python_sub, s)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 76, in python_sub
    value = utils.better_eval(codeobj, DataContext(self.d))
  File "/tmp/poky-mlb/bitbake/lib/bb/utils.py", line 400, in better_eval
    return eval(source, _context, locals)
  File "SRCPV", line 1, in <module>
  File "/tmp/poky-mlb/bitbake/lib/bb/fetch/__init__.py", line 389, in get_srcrev
    ud.setup_localpath(d)
  File "/tmp/poky-mlb/bitbake/lib/bb/fetch/__init__.py", line 572, in setup_localpath
    self.localpath = self.method.localpath(self.url, self, d)
  File "/tmp/poky-mlb/bitbake/lib/bb/fetch/git.py", line 59, in localpath
    tag = Fetch.srcrev_internal_helper(ud, d)
  File "/tmp/poky-mlb/bitbake/lib/bb/fetch/__init__.py", line 701, in srcrev_internal_helper
    raise InvalidSRCREV("Please set SRCREV to a valid value")
InvalidSRCREV: Please set SRCREV to a valid value

ERROR: Error evaluating '${SSTATE_PKGSPEC}${BB_TASKHASH}'
Traceback (most recent call last):
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 116, in expandWithRefs
    s = __expand_var_regexp__.sub(varparse.var_sub, s)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 60, in var_sub
    var = self.d.getVar(key, 1)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 260, in getVar
    return self.expand(value, var)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 132, in expand
    return self.expandWithRefs(s, varname).value
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 116, in expandWithRefs
    s = __expand_var_regexp__.sub(varparse.var_sub, s)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 60, in var_sub
    var = self.d.getVar(key, 1)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 260, in getVar
    return self.expand(value, var)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 132, in expand
    return self.expandWithRefs(s, varname).value
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 116, in expandWithRefs
    s = __expand_var_regexp__.sub(varparse.var_sub, s)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 60, in var_sub
    var = self.d.getVar(key, 1)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 260, in getVar
    return self.expand(value, var)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 132, in expand
    return self.expandWithRefs(s, varname).value
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 117, in expandWithRefs
    s = __expand_python_regexp__.sub(varparse.python_sub, s)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 76, in python_sub
    value = utils.better_eval(codeobj, DataContext(self.d))
  File "/tmp/poky-mlb/bitbake/lib/bb/utils.py", line 400, in better_eval
    return eval(source, _context, locals)
  File "SRCPV", line 1, in <module>
  File "/tmp/poky-mlb/bitbake/lib/bb/fetch/__init__.py", line 389, in get_srcrev
    ud.setup_localpath(d)
  File "/tmp/poky-mlb/bitbake/lib/bb/fetch/__init__.py", line 572, in setup_localpath
    self.localpath = self.method.localpath(self.url, self, d)
  File "/tmp/poky-mlb/bitbake/lib/bb/fetch/git.py", line 59, in localpath
    tag = Fetch.srcrev_internal_helper(ud, d)
  File "/tmp/poky-mlb/bitbake/lib/bb/fetch/__init__.py", line 701, in srcrev_internal_helper
    raise InvalidSRCREV("Please set SRCREV to a valid value")
InvalidSRCREV: Please set SRCREV to a valid value

ERROR: Error evaluating '${SSTATE_PKGNAME}'
Traceback (most recent call last):
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 116, in expandWithRefs
    s = __expand_var_regexp__.sub(varparse.var_sub, s)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 60, in var_sub
    var = self.d.getVar(key, 1)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 260, in getVar
    return self.expand(value, var)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 132, in expand
    return self.expandWithRefs(s, varname).value
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 116, in expandWithRefs
    s = __expand_var_regexp__.sub(varparse.var_sub, s)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 60, in var_sub
    var = self.d.getVar(key, 1)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 260, in getVar
    return self.expand(value, var)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 132, in expand
    return self.expandWithRefs(s, varname).value
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 116, in expandWithRefs
    s = __expand_var_regexp__.sub(varparse.var_sub, s)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 60, in var_sub
    var = self.d.getVar(key, 1)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 260, in getVar
    return self.expand(value, var)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 132, in expand
    return self.expandWithRefs(s, varname).value
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 116, in expandWithRefs
    s = __expand_var_regexp__.sub(varparse.var_sub, s)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 60, in var_sub
    var = self.d.getVar(key, 1)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 260, in getVar
    return self.expand(value, var)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 132, in expand
    return self.expandWithRefs(s, varname).value
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 117, in expandWithRefs
    s = __expand_python_regexp__.sub(varparse.python_sub, s)
  File "/tmp/poky-mlb/bitbake/lib/bb/data_smart.py", line 76, in python_sub
    value = utils.better_eval(codeobj, DataContext(self.d))
  File "/tmp/poky-mlb/bitbake/lib/bb/utils.py", line 400, in better_eval
    return eval(source, _context, locals)
  File "SRCPV", line 1, in <module>
  File "/tmp/poky-mlb/bitbake/lib/bb/fetch/__init__.py", line 389, in get_srcrev
    ud.setup_localpath(d)
  File "/tmp/poky-mlb/bitbake/lib/bb/fetch/__init__.py", line 572, in setup_localpath
    self.localpath = self.method.localpath(self.url, self, d)
  File "/tmp/poky-mlb/bitbake/lib/bb/fetch/git.py", line 59, in localpath
    tag = Fetch.srcrev_internal_helper(ud, d)
  File "/tmp/poky-mlb/bitbake/lib/bb/fetch/__init__.py", line 701, in srcrev_internal_helper
    raise InvalidSRCREV("Please set SRCREV to a valid value")
InvalidSRCREV: Please set SRCREV to a valid value

ERROR: Error parsing /tmp/poky-mlb/meta/recipes-kernel/linux/linux-yocto-stable_git.bb: Please set SRCREV to a valid value
ERROR: Command execution failed: Exited with 1

--------------020709070906050101080907--
