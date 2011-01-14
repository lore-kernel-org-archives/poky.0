Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 90F524C8109B
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 13:40:03 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0EJdfZe021176;
	Fri, 14 Jan 2011 11:39:41 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 14 Jan 2011 11:39:40 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 14 Jan 2011 11:39:40 -0800
Message-ID: <4D30A67B.2070004@windriver.com>
Date: Fri, 14 Jan 2011 13:39:39 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>
References: <4D2FD707.4080509@windriver.com> <4D30A632.707@intel.com>
In-Reply-To: <4D30A632.707@intel.com>
X-OriginalArrivalTime: 14 Jan 2011 19:39:40.0681 (UTC)
	FILETIME=[C9264F90:01CBB422]
Cc: poky <poky@yoctoproject.org>
Subject: Re: [PATCH 0/1] pseudo: Update to the latest upstream version
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
X-List-Received-Date: Fri, 14 Jan 2011 19:40:08 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 1/14/11 1:38 PM, Saul Wold wrote:
> On 01/13/2011 08:54 PM, Mark Hatle wrote:
>> Update pseudo to the latest version to resolve a number of optimization defects.
>>
>> The problems were present on both 64-bit and 32-bit systems, but generally only
>> caused issues on 32-bit hosts.
>>
>> Note: once you upgrade you need to be sure to clean out pseudo.  In order to do
>> this ../bitbake/bin/bitbake -c cleanall pseudo-native
>>
>> Followed by ../bitbake/bin/bitbake pseudo-native
>>
>> Otherwise you can end up in a wierd situation where the old pseudo is being
>> used to build the new one.
>>
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>    Branch: mhatle/pseudo
>>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/pseudo
>>
>> Thanks,
>>      Mark Hatle<mark.hatle@windriver.com>
>> ---
>>
>>
>> Mark Hatle (1):
>>    pseudo: Update to the latest upstream version
>>
>>   .../conf/distro/include/poky-default-revisions.inc |    2 +-
>>   .../895fa7e359e8026a608fba052c2994e42901e45f.patch |  235 --------------------
>>   meta/recipes-devtools/pseudo/pseudo_git.bb         |    2 +-
>>   3 files changed, 2 insertions(+), 237 deletions(-)
>>   delete mode 100644
>> meta/recipes-devtools/pseudo/pseudo/895fa7e359e8026a608fba052c2994e42901e45f.patch
>>
> Mark,
> 
> I did not pull this because of a failure seen on the autobuilder, the 
> failure was in eglibc-initial trying to compile.
> 
> The error was:
> 
> arm-poky-linux-gnueabi-gcc: error trying to exec 'cc1': execvp: No such 
> file or directory

pseudo does capture execvp.  So it's possible something is going wrong there.
I'm investigating...

--Mark

> I know that this seems strange for pseudo to cause, but I removed the 
> psuedo change and this problem went away.  It could be a build timing 
> issue or an install location issue.
> 
> Check the autobuilder log at:
> http://autobuilder.pokylinux.org:8010/builders/distro-testing/builds/44/steps/shell_1/logs/stdio
> 
> Unfortunately because I rebuild distro-testing the individual logs are 
> gone.  Let me know if we need to rebuild with the error for further 
> diagnoses.
> 
> Thanks
>     Sau!


