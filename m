Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D94794C8016A
	for <poky@yoctoproject.org>; Sat, 21 May 2011 22:16:23 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 May 2011 20:16:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,250,1304319600"; 
   d="scan'208";a="6040486"
Received: from unknown (HELO [10.255.12.39]) ([10.255.12.39])
	by fmsmga001.fm.intel.com with ESMTP; 21 May 2011 20:16:23 -0700
Message-ID: <4DD88006.6040309@intel.com>
Date: Sat, 21 May 2011 20:16:22 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
References: <cover.1305972143.git.xiaofeng.yan@windriver.com>	<d448b57c57fec346230d40fadc08625bd8c83224.1305972143.git.xiaofeng.yan@windriver.com>	<20110521184855.1248D1499BF2@gemini.denx.de>
	<4DD87348.2070700@windriver.com>
In-Reply-To: <4DD87348.2070700@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] sudo: Modify ownership for directory	"/var/lib"
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
X-List-Received-Date: Sun, 22 May 2011 03:16:24 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 05/21/2011 07:22 PM, Xiaofeng Yan wrote:
> On 2011年05月22日 02:48, Wolfgang Denk wrote:
>> Dear Xiaofeng Yan,
>>
>> In message<d448b57c57fec346230d40fadc08625bd8c83224.1305972143.git.xiaofeng.yan@windriver.com>  you wrote:
>>> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>>>
>>> [YOCTO #1092]
>>> Solve access permission for directory "/var/lib".
>>> Makefile from package sudo change the ownership incorrectly.
>>>
>>> Signed-off-by: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>>> ---
>>>   meta/recipes-extended/sudo/sudo.inc |    1 +
>>>   1 files changed, 1 insertions(+), 0 deletions(-)
>>>
>>> diff --git a/meta/recipes-extended/sudo/sudo.inc b/meta/recipes-extended/sudo/sudo.inc
>>> index 6a04a9c..5ea089c 100644
>>> --- a/meta/recipes-extended/sudo/sudo.inc
>>> +++ b/meta/recipes-extended/sudo/sudo.inc
>>> @@ -30,4 +30,5 @@ pkg_postinst_${PN} () {
>>>
>>>   	chmod 4111 /usr/bin/sudo
>>>   	chmod 0440 /etc/sudoers
>>> +	chmod 0755 /var/lib
>> Sorry, but this commit message is misleading.  You don't change the
>> ownership here, but the file permissions.
>>
> Hi Wolfgang Denk,
> Thanks for your reply. I am make lsb test to pass LSB certification. LSB
> Test suite check /vat/lib, but failed with the following information.
> /tset/LSB.fhs/var/lib/lib-tc 1 	failed 	
>
>
>         Message from the test:
>
> Reference 5.8-1(A)
> The /var/lib directory exists and is searchable
> Unexpected output written to stdout, as shown below:
> stdout:lsb_test_dir: expected be able to search directory /var/lib, got an error
> stdout:ls: cannot open directory /var/lib: Permission denied
>

Xiaofeng,

This issue is that some other recipe or package is changing the 
permissions of /var/lib.  If you build a minimal image, the permissions 
are correct.  So some recipe is breaking them.

We need to investigate the cause, not just fix the problem.

Sau!

>
>
> emenlow$ls /var/lib -l
> drwx------ 10 root root 4096 May 20 19:21 lib
>
> For general machine, the ownership of this directory is as follow:
> ubuntu$ls /var/lib -l
> drwxr-xr-x 67 root root 4096 2010-12-15 23:30 lib
>
> In fact, many packages make a operation to directory "/var/lib". I find
> the Makefile from package "sudo" change the ownership. Please review the
> following patch.
>
> --- Makefile.orj 2011-05-21 16:32:35.392833427 +0800
> +++ Makefile 2011-05-21 16:36:47.979380106 +0800
> @@ -482,7 +482,7 @@
> $(DESTDIR)$(visudodir) $(DESTDIR)$(noexecdir) \
> $(DESTDIR)$(sudoersdir) $(DESTDIR)$(docdir) \
> $(DESTDIR)$(mandirsu) $(DESTDIR)$(mandirform)
> - $(SHELL) $(srcdir)/mkinstalldirs -m 0700 $(DESTDIR)$(timedir)
> + $(SHELL) $(srcdir)/mkinstalldirs -m 0755 $(DESTDIR)$(timedir)
>
> install-binaries: install-dirs $(PROGS)
> $(INSTALL) -b~ -O $(install_uid) -G $(install_gid) -M 04111 sudo
> $(DESTDIR)$(sudodir)/sudo
>
> So "0700" make this directory without access permission. Perhaps it
> could not be right method, I think you have a better method to solve
> this problem. If you have, Please share with me.
> Thanks for your suggestion again.
>
> Thanks
> Yan
>> Best regards,
>>
>> Wolfgang Denk
>>
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


