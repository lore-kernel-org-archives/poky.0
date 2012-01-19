Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2BD5E00599
	for <poky@yoctoproject.org>; Thu, 19 Jan 2012 03:57:42 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 19 Jan 2012 03:57:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="108656806"
Received: from unknown (HELO helios.localnet) ([10.252.122.198])
	by fmsmga001.fm.intel.com with ESMTP; 19 Jan 2012 03:57:40 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Kang Kai <Kai.Kang@windriver.com>
Date: Thu, 19 Jan 2012 11:57:40 +0000
Message-ID: <4677690.3hU1sHNFnX@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.3 (Linux/3.0.0-14-generic-pae; KDE/4.7.4; i686; ; )
In-Reply-To: <4F17E37B.7030506@windriver.com>
References: <4F17C7D9.10506@windriver.com> <4F17E37B.7030506@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Thu, 19 Jan 2012 11:57:42 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Kai,

On Thursday 19 January 2012 17:33:47 Kang Kai wrote:
> The attachment is the the design document V2 and implement.
> 
> The V2 document changes are:
> 1 remove patch_set from argument list
> 2 deb is not support right now
> 
> Any comment is welcome.
> And I will on vacation until Jan 30, so my reply may not in time.

Great work! I can see this being really useful to help people get started with 
new recipes. A few comments:

1) I tried it on hdparm and it worked very well. However, obexftp caused an 
error:

----------------
Downloading package:  
http://downloads.sourceforge.net/openobex/obexftp-0.23.tar.bz2  to  
/tmp/bitbake_createbb.5729
Traceback (most recent call last):
  File "./bitbake-createbb", line 643, in <module>
    process_configure(pkgdir)
  File "./bitbake-createbb", line 295, in process_configure
    if match and len(pkgname) == 0:
UnboundLocalError: local variable 'pkgname' referenced before assignment
----------------

2) If it is able to find license file(s) but unable to find any appropriate for 
LIC_FILES_CHKSUM, it would be nice if it would print a warning just so the 
user knows they will need to set this themselves (bonus points if you still 
list LIC_FILES_CHKSUM entries for license files that did not match the known 
checksums either in a comment in the output or in the warning message, to save 
the user work if they know the files are appropriate). If you prefer I can send 
a patch afterwards for this.

3) If you have an RPM spec file it is possible to extract PACKAGES and FILES 
and possibly even EXTRA_OECONF. Somewhere around here I have a very basic 
script to do this I think, I could send it to you if you like (or we can leave 
this for later).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

