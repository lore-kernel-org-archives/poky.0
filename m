Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B1F484C810A8
	for <poky@pokylinux.org>; Thu,  4 Nov 2010 13:21:39 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA4ILdKB005353
	for <poky@pokylinux.org>; Thu, 4 Nov 2010 11:21:39 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 4 Nov 2010 11:21:38 -0700
Received: from Macintosh-5.local ([172.25.36.228]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 4 Nov 2010 11:21:38 -0700
Message-ID: <4CD2F9B1.3040903@windriver.com>
Date: Thu, 04 Nov 2010 13:21:37 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: poky@pokylinux.org
References: <20101020085626.GA14696@qhe2-db><1865303E0DED764181A9D882DEF65FB674E057FB47@shsmsx502.ccr.corp.intel.com><1865303E0DED764181A9D882DEF65FB677CE107452@shsmsx502.ccr.corp.intel.com>	<1865303E0DED764181A9D882DEF65FB67A65C6F4B3@shsmsx502.ccr.corp.intel.com><4CD2CD9F.70501@windriver.com>
	<4CD2F717.3090306@intel.com>
In-Reply-To: <4CD2F717.3090306@intel.com>
X-OriginalArrivalTime: 04 Nov 2010 18:21:38.0997 (UTC)
	FILETIME=[1F51C650:01CB7C4D]
Subject: Re: [PULL] fixes to eglibc and busybox
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Nov 2010 18:21:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/4/10 1:10 PM, Saul Wold wrote:
> On 11/04/2010 08:13 AM, Mark Hatle wrote:
>> On 11/3/10 7:55 PM, Cui, Dexuan wrote:
>>> BTW: The fix to busybox is a RESEND since looks it was neglected. :-)
>>>
>>> $ scripts/create-pull-request -r 2ecf311fbca970f6ea2d80accc3f925b097b664e -b dcui/master
>>> Note:<commit_id>    parameter assumed as 'HEAD'
>>>
>>>     meta/recipes-core/busybox/busybox-1.16.2/defconfig |   14 +++++++-------
>>>     meta/recipes-core/eglibc/eglibc-package.inc        |    2 +-
>>>     meta/recipes-core/eglibc/eglibc_2.12.bb            |    2 +-
>>>     3 files changed, 9 insertions(+), 9 deletions(-)
>>>
>>> Dexuan Cui (2):
>>>          busybox: enable more options for tar to support more file formats.
>>>          eglibc: install the missing /etc/ld.so.conf into target
>>>
>>> Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/master
>>>
>>>
>>> commit 61e77cb2e9a240110c50925d1b3f908d14b02f24
>>> Author: Dexuan Cui<dexuan.cui@intel.com>
>>> Date:   Tue Nov 2 15:42:09 2010 +0800
>>>
>>>        eglibc: install the missing /etc/ld.so.conf into target
>>
>> My preference is that /etc/ld.so.conf not always be installed onto the target.
>> It's not required for anything to function, and as long as only default library
>> directories are used, even ldconfig will run properly with it not existing (or
>> empty).
>>
>> If we do install it, we need to make sure it's empty.  I don't think it's
>> appropriate to advocate alternative library directories on an embedded platform.
>>
> Mark,
>
> The default one that we are installing contains entries for
> /usr/local/lib and /usr/X11R6/lib
>
> I understand you would rather it be empty, is that correct?

Generally speaking, we should not be placing software into /usr/local/lib as 
part of the Yocto work.  That location, and /opt/* are reserved for system 
administrators to place their own software...  So that location, if necessary, 
should be done by the system admin.

The /usr/X11R6/lib location should be a symlink to /usr/lib.  As all of the X 
libraries are installed into /usr/lib... so there is no reason to have this 
location in the ld.so.conf.  (Note I have not verified that that is a symlink... 
or if the directory is empty -- but it should be...)

So yes, my preference is that it's either absent or empty for embedded systems.

--Mark

>
> Sau!
>
>
>>>        ${sysconfdir} should be added into FILES_${PN}.
>>>
>>>        Fixes [BUGID #511]
>>>
>>>        Signed-off-by: Dexuan Cui<dexuan.cui@intel.com>
>>>
>>> commit b952fae48c45e39a14ec9c24b0ee544a741c3f69
>>> Author: Dexuan Cui<dexuan.cui@intel.com>
>>> Date:   Tue Oct 26 15:10:26 2010 +0800
>>>
>>>        busybox: enable more options for tar to support more file formats.
>>>
>>>        Fixes [BUGID #495]
>>>
>>>        Signed-off-by: Dexuan Cui<dexuan.cui@intel.com>
>>> _______________________________________________
>>> poky mailing list
>>> poky@pokylinux.org
>>> https://lists.pokylinux.org/listinfo/poky
>>
>> _______________________________________________
>> poky mailing list
>> poky@pokylinux.org
>> https://lists.pokylinux.org/listinfo/poky
>>
>
> _______________________________________________
> poky mailing list
> poky@pokylinux.org
> https://lists.pokylinux.org/listinfo/poky


