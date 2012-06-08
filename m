Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4234E006D9
	for <poky@yoctoproject.org>; Fri,  8 Jun 2012 08:40:16 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 08 Jun 2012 08:40:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="176911776"
Received: from unknown (HELO envy.home) ([10.255.12.197])
	by fmsmga002.fm.intel.com with ESMTP; 08 Jun 2012 08:40:16 -0700
Message-ID: <4FD21C99.8000904@linux.intel.com>
Date: Fri, 08 Jun 2012 08:39:05 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <cover.1338538332.git.liezhi.yang@windriver.com>
	<abb5651cbd1e4851b0b766d44ae10984429ca3d9.1338538332.git.liezhi.yang@windriver.com>
	<4FD2158B.8070102@linux.intel.com>
	<20120608151448.GJ3140@jama.jama.net>
In-Reply-To: <20120608151448.GJ3140@jama.jama.net>
X-Enigmail-Version: 1.4.2
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] kernel.py: replace os.popen with subprocess.Popen
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
X-List-Received-Date: Fri, 08 Jun 2012 15:40:17 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1



On 06/08/2012 08:14 AM, Martin Jansa wrote:
> On Fri, Jun 08, 2012 at 08:08:59AM -0700, Darren Hart wrote:
>> 
>> 
>> On 06/01/2012 01:51 AM, Robert Yang wrote:
>>> Replace os.popen with subprocess.Popen since the older function
>>> would fail (more or less) silently if the executed program
>>> cannot be found
>>> 
>>> More info: 
>>> http://docs.python.org/library/subprocess.html#subprocess-replacements
>>>
>>>
>>> 
[YOCTO #2454]
>>> 
>>> Signed-off-by: Robert Yang <liezhi.yang@windriver.com> --- 
>>> scripts/lib/bsp/kernel.py |    5 +++-- 1 files changed, 3
>>> insertions(+), 2 deletions(-)
>>> 
>>> diff --git a/scripts/lib/bsp/kernel.py
>>> b/scripts/lib/bsp/kernel.py index 8b3aa72..7c6da4e 100644 ---
>>> a/scripts/lib/bsp/kernel.py +++ b/scripts/lib/bsp/kernel.py @@
>>> -31,6 +31,7 @@ import os import shutil from tags import * 
>>> import glob +import subprocess
>>> 
>>> 
>>> def find_bblayers(scripts_path): @@ -678,7 +679,7 @@ def
>>> base_branches(context): print "Getting branches from remote
>>> repo %s..." % giturl
>>> 
>>> gitcmd = "git ls-remote %s *heads* 2>&1" % (giturl) -    tmp =
>>> os.popen(gitcmd).read() +    tmp = subprocess.Popen(gitcmd,
>>> shell=True, stdout=subprocess.PIPE).stdout.read()
>> 
>> Subprocess is right module to use here, but I believe the
>> recommended method would be:
>> 
>> subprocess.call(gitcmd...
>> 
>> According to: http://docs.python.org/library/subprocess.html
>> 
>>> 
>>> branches = []
>>> 
>>> @@ -708,7 +709,7 @@ def all_branches(context): print "Getting
>>> branches from remote repo %s..." % giturl
>>> 
>>> gitcmd = "git ls-remote %s *heads* 2>&1" % (giturl) -    tmp =
>>> os.popen(gitcmd).read() +    tmp = subprocess.Popen(gitcmd,
>>> shell=True, stdout=subprocess.PIPE).stdout.read()
>>> 
>>> branches = []
>>> 
>> 
>> And here I think subprocess.check_output(...) is preferred.
> 
> That's only in python 2.7 and newer, are distros with python-2.6 
> unsupported now?
> 
> I did the same mistake in opkg-utils (patch for it is on yocto
> ML). 
> https://lists.yoctoproject.org/pipermail/yocto/2012-May/009182.html

Ah,
> 
thanks for catching that. What is the minimum python requirement?

I thought we had something in place to allow for older distributions
to work with more modern python syntax.


- -- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iQEcBAEBAgAGBQJP0hyPAAoJEKbMaAwKp364hJAIAJ3w30/C6dJoGzCpy14qVZtq
3EouInWZEjIkckztbbkrh9LCJbU8WEiGFd1/yXFlG8TpApF7FPmjY89uDVN7seai
Mh9sKzrCIbkS2R1pT8/Ubr7RWL+YGIs4a1hVQbxqZA4PCLPKpxmIe5fDcVBaVm9B
k3p328RM0ff5ycos414T4hTcjf3//yI36LESFCBuj133veUwhStwdtDjuz5aMEVj
G4TG3SWlPymD0L4hrcMaWyjv7d69BydcKbQm20OOnqVz1BqsS6zlVrCjwPlgq2oe
rNqvb96YAWwbReKvPuKXMQmQOaYRubMk9lkXJYrA2+6Z7sV+S5Lu41/yne6pBDY=
=9TgZ
-----END PGP SIGNATURE-----

