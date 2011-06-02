Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id B1EA44C800B0
	for <poky@yoctoproject.org>; Thu,  2 Jun 2011 08:50:02 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id AFC2F16602FD; Thu,  2 Jun 2011 07:50:01 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id AB5681660233;
	Thu,  2 Jun 2011 07:50:00 -0600 (MDT)
Message-ID: <4DE79508.7010305@mlbassoc.com>
Date: Thu, 02 Jun 2011 07:50:00 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Duplicated error messages
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
X-List-Received-Date: Thu, 02 Jun 2011 13:50:03 -0000
X-Groupsio-MsgNum: 6469
Content-Type: multipart/mixed; boundary="------------080604030402010003000004"

--------------080604030402010003000004
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I just ran 'bitbake core-image-minimal' on a new machine, running a fresh install of
Fedora 15.  I got some errors at the start about missing pieces, but the build carried on:
   ERROR:  Poky's config sanity checker detected a potential misconfiguration.
     Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
     Following is the list of potential problems / advisories:

     Please install following missing utilities: help2man,texi2html,hg,chrpath

Fair enough, I'll install those.  As I said, the build carried on, but failed
with a pretty useless error, log attached.  Notice how every line is duplicated,
plus there is not enough information to tell what file caused the error of
'No such file or directory'

Note: this was on Poky master 484c4e73245c93a08413cd204513bf5c5698b994,
updated this morning.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------080604030402010003000004
Content-Type: text/plain;
 name="log.do_populate_sysroot"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="log.do_populate_sysroot"

ERROR: Error executing a python function in /home/local/my-poky/meta/recipes-devtools/quilt/quilt-native_0.48.bb:
OSError: [Errno 2] No such file or directory

ERROR: Error executing a python function in /home/local/my-poky/meta/recipes-devtools/quilt/quilt-native_0.48.bb:
OSError: [Errno 2] No such file or directory

ERROR: The stack trace of python calls that resulted in this exception/failure was:
ERROR: The stack trace of python calls that resulted in this exception/failure was:
ERROR:   File "relocatable_binaries_preprocess", line 6, in <module>
ERROR:   File "relocatable_binaries_preprocess", line 6, in <module>
ERROR: 
ERROR: 
ERROR:   File "relocatable_binaries_preprocess", line 3, in relocatable_binaries_preprocess
ERROR:   File "relocatable_binaries_preprocess", line 3, in relocatable_binaries_preprocess
ERROR: 
ERROR: 
ERROR:   File "relocatable.bbclass", line 7, in rpath_replace
ERROR:   File "relocatable.bbclass", line 7, in rpath_replace
ERROR: 
ERROR: 
ERROR:   File "relocatable.bbclass", line 36, in process_dir
ERROR:   File "relocatable.bbclass", line 36, in process_dir
ERROR: 
ERROR: 
ERROR:   File "/usr/lib/python2.7/subprocess.py", line 672, in __init__
ERROR:   File "/usr/lib/python2.7/subprocess.py", line 672, in __init__
ERROR:     errread, errwrite)
ERROR:     errread, errwrite)
ERROR: 
ERROR: 
ERROR:   File "/usr/lib/python2.7/subprocess.py", line 1202, in _execute_child
ERROR:   File "/usr/lib/python2.7/subprocess.py", line 1202, in _execute_child
ERROR:     raise child_exception
ERROR:     raise child_exception
ERROR: 
ERROR: 
ERROR: The code that was being executed was:
ERROR: The code that was being executed was:
ERROR:      0002:def relocatable_binaries_preprocess(d):
ERROR:      0002:def relocatable_binaries_preprocess(d):
ERROR:      0003:    rpath_replace(bb.data.expand('/home/local/p60_test/tmp-eglibc/work/i686-linux/quilt-native-0.48-r0/sysroot-destdir/', d), d)
ERROR:      0003:    rpath_replace(bb.data.expand('/home/local/p60_test/tmp-eglibc/work/i686-linux/quilt-native-0.48-r0/sysroot-destdir/', d), d)
ERROR:      0004:
ERROR:      0004:
ERROR:      0005:
ERROR:      0005:
ERROR:  *** 0006:relocatable_binaries_preprocess(d)
ERROR:  *** 0006:relocatable_binaries_preprocess(d)
ERROR:      0007:
ERROR:      0007:
ERROR: (file: 'relocatable_binaries_preprocess', lineno: 6, function: <module>)
ERROR: (file: 'relocatable_binaries_preprocess', lineno: 6, function: <module>)
ERROR:      0001:
ERROR:      0001:
ERROR:      0002:def relocatable_binaries_preprocess(d):
ERROR:      0002:def relocatable_binaries_preprocess(d):
ERROR:  *** 0003:    rpath_replace(bb.data.expand('/home/local/p60_test/tmp-eglibc/work/i686-linux/quilt-native-0.48-r0/sysroot-destdir/', d), d)
ERROR:  *** 0003:    rpath_replace(bb.data.expand('/home/local/p60_test/tmp-eglibc/work/i686-linux/quilt-native-0.48-r0/sysroot-destdir/', d), d)
ERROR:      0004:
ERROR:      0004:
ERROR:      0005:
ERROR:      0005:
ERROR:      0006:relocatable_binaries_preprocess(d)
ERROR:      0006:relocatable_binaries_preprocess(d)
ERROR:      0007:
ERROR:      0007:
ERROR: (file: 'relocatable_binaries_preprocess', lineno: 3, function: relocatable_binaries_preprocess)
ERROR: (file: 'relocatable_binaries_preprocess', lineno: 3, function: relocatable_binaries_preprocess)
ERROR: Function 'relocatable_binaries_preprocess' failed
ERROR: Function 'relocatable_binaries_preprocess' failed

--------------080604030402010003000004--
