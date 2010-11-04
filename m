Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 015AC4C81003
	for <poky@pokylinux.org>; Thu,  4 Nov 2010 13:10:40 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Nov 2010 11:10:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,297,1286175600"; d="scan'208";a="674375904"
Received: from unknown (HELO [10.255.12.198]) ([10.255.12.198])
	by orsmga001.jf.intel.com with ESMTP; 04 Nov 2010 11:10:32 -0700
Message-ID: <4CD2F717.3090306@intel.com>
Date: Thu, 04 Nov 2010 11:10:31 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@pokylinux.org
References: <20101020085626.GA14696@qhe2-db><1865303E0DED764181A9D882DEF65FB674E057FB47@shsmsx502.ccr.corp.intel.com><1865303E0DED764181A9D882DEF65FB677CE107452@shsmsx502.ccr.corp.intel.com>	<1865303E0DED764181A9D882DEF65FB67A65C6F4B3@shsmsx502.ccr.corp.intel.com>
	<4CD2CD9F.70501@windriver.com>
In-Reply-To: <4CD2CD9F.70501@windriver.com>
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
X-List-Received-Date: Thu, 04 Nov 2010 18:10:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/04/2010 08:13 AM, Mark Hatle wrote:
> On 11/3/10 7:55 PM, Cui, Dexuan wrote:
>> BTW: The fix to busybox is a RESEND since looks it was neglected. :-)
>>
>> $ scripts/create-pull-request -r 2ecf311fbca970f6ea2d80accc3f925b097b664e -b dcui/master
>> Note:<commit_id>   parameter assumed as 'HEAD'
>>
>>    meta/recipes-core/busybox/busybox-1.16.2/defconfig |   14 +++++++-------
>>    meta/recipes-core/eglibc/eglibc-package.inc        |    2 +-
>>    meta/recipes-core/eglibc/eglibc_2.12.bb            |    2 +-
>>    3 files changed, 9 insertions(+), 9 deletions(-)
>>
>> Dexuan Cui (2):
>>         busybox: enable more options for tar to support more file formats.
>>         eglibc: install the missing /etc/ld.so.conf into target
>>
>> Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/master
>>
>>
>> commit 61e77cb2e9a240110c50925d1b3f908d14b02f24
>> Author: Dexuan Cui<dexuan.cui@intel.com>
>> Date:   Tue Nov 2 15:42:09 2010 +0800
>>
>>       eglibc: install the missing /etc/ld.so.conf into target
>
> My preference is that /etc/ld.so.conf not always be installed onto the target.
> It's not required for anything to function, and as long as only default library
> directories are used, even ldconfig will run properly with it not existing (or
> empty).
>
> If we do install it, we need to make sure it's empty.  I don't think it's
> appropriate to advocate alternative library directories on an embedded platform.
>
Mark,

The default one that we are installing contains entries for 
/usr/local/lib and /usr/X11R6/lib

I understand you would rather it be empty, is that correct?


Sau!


>>       ${sysconfdir} should be added into FILES_${PN}.
>>
>>       Fixes [BUGID #511]
>>
>>       Signed-off-by: Dexuan Cui<dexuan.cui@intel.com>
>>
>> commit b952fae48c45e39a14ec9c24b0ee544a741c3f69
>> Author: Dexuan Cui<dexuan.cui@intel.com>
>> Date:   Tue Oct 26 15:10:26 2010 +0800
>>
>>       busybox: enable more options for tar to support more file formats.
>>
>>       Fixes [BUGID #495]
>>
>>       Signed-off-by: Dexuan Cui<dexuan.cui@intel.com>
>> _______________________________________________
>> poky mailing list
>> poky@pokylinux.org
>> https://lists.pokylinux.org/listinfo/poky
>
> _______________________________________________
> poky mailing list
> poky@pokylinux.org
> https://lists.pokylinux.org/listinfo/poky
>


