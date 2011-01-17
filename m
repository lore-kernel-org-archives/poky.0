Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7519F4C811D2
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 02:35:32 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Jan 2011 00:35:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,332,1291622400"; d="scan'208";a="647662307"
Received: from unknown (HELO [10.255.14.85]) ([10.255.14.85])
	by fmsmga002.fm.intel.com with ESMTP; 17 Jan 2011 00:35:32 -0800
Message-ID: <4D33FF53.2090103@intel.com>
Date: Mon, 17 Jan 2011 00:35:31 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <4D2FD707.4080509@windriver.com>
	<4D30A632.707@intel.com>	<4D30A67B.2070004@windriver.com>
	<4D30BD51.7030305@windriver.com>
In-Reply-To: <4D30BD51.7030305@windriver.com>
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
X-List-Received-Date: Mon, 17 Jan 2011 08:35:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/14/2011 01:17 PM, Mark Hatle wrote:
> A potential solution to this problem has been pushed to the poky-contrib
> mhatle/pseudo tree.
>
> If anyone is interested in trying this, I'd appreciate it.  I've so far not been
> able to reproduce the original problem locally, but based on the symptoms I
> believe we've got a likely fix in place.
>
Mark,

I have this patch in a distro/master right now, it fixes the original 
problem, but I am seeing another problem with the poky-image-sdk target 
where I am getting a load of permission denied during the tar of the 
do_populate_sdk task.

Maybe this need to be added to the pseudo.

Sau!

> --Mark
>
> On 1/14/11 1:39 PM, Mark Hatle wrote:
>> On 1/14/11 1:38 PM, Saul Wold wrote:
>>> On 01/13/2011 08:54 PM, Mark Hatle wrote:
>>>> Update pseudo to the latest version to resolve a number of optimization defects.
>>>>
>>>> The problems were present on both 64-bit and 32-bit systems, but generally only
>>>> caused issues on 32-bit hosts.
>>>>
>>>> Note: once you upgrade you need to be sure to clean out pseudo.  In order to do
>>>> this ../bitbake/bin/bitbake -c cleanall pseudo-native
>>>>
>>>> Followed by ../bitbake/bin/bitbake pseudo-native
>>>>
>>>> Otherwise you can end up in a wierd situation where the old pseudo is being
>>>> used to build the new one.
>>>>
>>>>
>>>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>>>     Branch: mhatle/pseudo
>>>>     Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/pseudo
>>>>
>>>> Thanks,
>>>>       Mark Hatle<mark.hatle@windriver.com>
>>>> ---
>>>>
>>>>
>>>> Mark Hatle (1):
>>>>     pseudo: Update to the latest upstream version
>>>>
>>>>    .../conf/distro/include/poky-default-revisions.inc |    2 +-
>>>>    .../895fa7e359e8026a608fba052c2994e42901e45f.patch |  235 --------------------
>>>>    meta/recipes-devtools/pseudo/pseudo_git.bb         |    2 +-
>>>>    3 files changed, 2 insertions(+), 237 deletions(-)
>>>>    delete mode 100644
>>>> meta/recipes-devtools/pseudo/pseudo/895fa7e359e8026a608fba052c2994e42901e45f.patch
>>>>
>>> Mark,
>>>
>>> I did not pull this because of a failure seen on the autobuilder, the
>>> failure was in eglibc-initial trying to compile.
>>>
>>> The error was:
>>>
>>> arm-poky-linux-gnueabi-gcc: error trying to exec 'cc1': execvp: No such
>>> file or directory
>>
>> pseudo does capture execvp.  So it's possible something is going wrong there.
>> I'm investigating...
>>
>> --Mark
>>
>>> I know that this seems strange for pseudo to cause, but I removed the
>>> psuedo change and this problem went away.  It could be a build timing
>>> issue or an install location issue.
>>>
>>> Check the autobuilder log at:
>>> http://autobuilder.pokylinux.org:8010/builders/distro-testing/builds/44/steps/shell_1/logs/stdio
>>>
>>> Unfortunately because I rebuild distro-testing the individual logs are
>>> gone.  Let me know if we need to rebuild with the error for further
>>> diagnoses.
>>>
>>> Thanks
>>>      Sau!
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


