Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4CCF74C80FA4
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 11:06:42 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0HH6fHL028014;
	Mon, 17 Jan 2011 09:06:41 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 17 Jan 2011 09:06:41 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 17 Jan 2011 09:06:41 -0800
Message-ID: <4D347720.5090102@windriver.com>
Date: Mon, 17 Jan 2011 11:06:40 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>
References: <4D2FD707.4080509@windriver.com>
	<4D30A632.707@intel.com>	<4D30A67B.2070004@windriver.com>
	<4D30BD51.7030305@windriver.com> <4D33FF53.2090103@intel.com>
In-Reply-To: <4D33FF53.2090103@intel.com>
X-OriginalArrivalTime: 17 Jan 2011 17:06:41.0155 (UTC)
	FILETIME=[E8F70D30:01CBB668]
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Mon, 17 Jan 2011 17:06:42 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 1/17/11 2:35 AM, Saul Wold wrote:
> On 01/14/2011 01:17 PM, Mark Hatle wrote:
>> A potential solution to this problem has been pushed to the poky-contrib
>> mhatle/pseudo tree.
>>
>> If anyone is interested in trying this, I'd appreciate it.  I've so far not been
>> able to reproduce the original problem locally, but based on the symptoms I
>> believe we've got a likely fix in place.
>>
> Mark,
> 
> I have this patch in a distro/master right now, it fixes the original 
> problem, but I am seeing another problem with the poky-image-sdk target 
> where I am getting a load of permission denied during the tar of the 
> do_populate_sdk task.

If it's taring "target" files, then yes, it looks like it's not being properly
run under pseudo control and that will need to be updated.  [or there is another
defect we're unaware of].

What are the steps to reproduce the issue and I'll see what I can do here.

I'll pass along that the exec problem seems to be correct to the pseudo maintainer.

--Mark

> Maybe this need to be added to the pseudo.
> 
> Sau!
> 
>> --Mark
>>
>> On 1/14/11 1:39 PM, Mark Hatle wrote:
>>> On 1/14/11 1:38 PM, Saul Wold wrote:
>>>> On 01/13/2011 08:54 PM, Mark Hatle wrote:
>>>>> Update pseudo to the latest version to resolve a number of optimization defects.
>>>>>
>>>>> The problems were present on both 64-bit and 32-bit systems, but generally only
>>>>> caused issues on 32-bit hosts.
>>>>>
>>>>> Note: once you upgrade you need to be sure to clean out pseudo.  In order to do
>>>>> this ../bitbake/bin/bitbake -c cleanall pseudo-native
>>>>>
>>>>> Followed by ../bitbake/bin/bitbake pseudo-native
>>>>>
>>>>> Otherwise you can end up in a wierd situation where the old pseudo is being
>>>>> used to build the new one.
>>>>>
>>>>>
>>>>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>>>>     Branch: mhatle/pseudo
>>>>>     Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/pseudo
>>>>>
>>>>> Thanks,
>>>>>       Mark Hatle<mark.hatle@windriver.com>
>>>>> ---
>>>>>
>>>>>
>>>>> Mark Hatle (1):
>>>>>     pseudo: Update to the latest upstream version
>>>>>
>>>>>    .../conf/distro/include/poky-default-revisions.inc |    2 +-
>>>>>    .../895fa7e359e8026a608fba052c2994e42901e45f.patch |  235 --------------------
>>>>>    meta/recipes-devtools/pseudo/pseudo_git.bb         |    2 +-
>>>>>    3 files changed, 2 insertions(+), 237 deletions(-)
>>>>>    delete mode 100644
>>>>> meta/recipes-devtools/pseudo/pseudo/895fa7e359e8026a608fba052c2994e42901e45f.patch
>>>>>
>>>> Mark,
>>>>
>>>> I did not pull this because of a failure seen on the autobuilder, the
>>>> failure was in eglibc-initial trying to compile.
>>>>
>>>> The error was:
>>>>
>>>> arm-poky-linux-gnueabi-gcc: error trying to exec 'cc1': execvp: No such
>>>> file or directory
>>>
>>> pseudo does capture execvp.  So it's possible something is going wrong there.
>>> I'm investigating...
>>>
>>> --Mark
>>>
>>>> I know that this seems strange for pseudo to cause, but I removed the
>>>> psuedo change and this problem went away.  It could be a build timing
>>>> issue or an install location issue.
>>>>
>>>> Check the autobuilder log at:
>>>> http://autobuilder.pokylinux.org:8010/builders/distro-testing/builds/44/steps/shell_1/logs/stdio
>>>>
>>>> Unfortunately because I rebuild distro-testing the individual logs are
>>>> gone.  Let me know if we need to rebuild with the error for further
>>>> diagnoses.
>>>>
>>>> Thanks
>>>>      Sau!
>>>
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
> 


