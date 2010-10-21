Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD4174C80054
	for <poky@pokylinux.org>; Thu, 21 Oct 2010 12:27:52 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id o9LHRpdY006813
	for <poky@pokylinux.org>; Thu, 21 Oct 2010 10:27:51 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 21 Oct 2010 10:27:51 -0700
Received: from Macintosh-5.local ([172.25.36.230]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 21 Oct 2010 10:27:50 -0700
Message-ID: <4CC07816.3040908@windriver.com>
Date: Thu, 21 Oct 2010 12:27:50 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.11) Gecko/20101013 Thunderbird/3.1.5
MIME-Version: 1.0
To: poky@pokylinux.org
References: <749B9D3DBF0F054390025D9EAFF47F222FE8FA5E@shsmsx501.ccr.corp.intel.com><1287489755.1720.1284.camel@rex><749B9D3DBF0F054390025D9EAFF47F222FE8FF87@shsmsx501.ccr.corp.intel.com><1287566700.16386.33.camel@rex><749B9D3DBF0F054390025D9EAFF47F222FE902E6@shsmsx501.ccr.corp.intel.com>
	<1287665502.16386.455.camel@rex>
In-Reply-To: <1287665502.16386.455.camel@rex>
X-OriginalArrivalTime: 21 Oct 2010 17:27:51.0347 (UTC)
	FILETIME=[49B4F830:01CB7145]
Subject: [PULL] Fix at -- was Re: [PULL] at: Non root install patch is not necessary (Bug246)
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
X-List-Received-Date: Thu, 21 Oct 2010 17:27:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

This commit introduced a bug, the following fixes the issue:

Pull request follows....

The following changes since commit f1a209b142d2319d2594b051c01d9997184bfcb4:

   busybox/sysklogd: syslog.conf files (2010-10-21 14:05:57 +0100)

are available in the git repository at:
   git://git.pokylinux.org/poky-contrib.git mhatle/at

Mark Hatle (1):
       at: Fix nonstripbinaries.patch

  .../at/files/nonstripbinaries.patch                |    6 +++---
  1 files changed, 3 insertions(+), 3 deletions(-)


On 10/21/10 7:51 AM, Richard Purdie wrote:
> On Thu, 2010-10-21 at 13:17 +0800, Mei, Lei wrote:
>> Hi Richard,
>>      I have added the description to the nonstripbinaries.patch, please check it, thank you~
>>
>>   meta/recipes-extended/at/at_3.1.12.bb                 |    2
>>   meta/recipes-extended/at/files/nonrootinstall.patch   |   75 ------------------
>>   meta/recipes-extended/at/files/nonstripbinaries.patch |   25 ++++++
>>   3 files changed, 26 insertions(+), 76 deletions(-)
>>
>> Mei Lei (1):
>>        at: remove nonrootinstall patch and modify some relevant files
>>
>> Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/distro
>
> Merged to master, thanks.
>
> As a note for future, no # to comment lines is needed in a patch header.
>
> Cheers,
>
> Richard
>
> _______________________________________________
> poky mailing list
> poky@pokylinux.org
> https://lists.pokylinux.org/listinfo/poky


