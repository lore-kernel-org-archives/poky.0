Return-Path: <ke.yu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0703C4C80228
	for <poky@yoctoproject.org>; Tue, 24 May 2011 21:15:04 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 May 2011 19:15:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,264,1304319600"; 
   d="scan'208";a="1053690"
Received: from kyu3-desk.ccr.corp.intel.com (HELO [10.238.154.142])
	([10.238.154.142])
	by azsmga001.ch.intel.com with ESMTP; 24 May 2011 19:15:03 -0700
Message-ID: <4DDC6627.3070908@intel.com>
Date: Wed, 25 May 2011 10:15:03 +0800
From: Yu Ke <ke.yu@intel.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1306220205.git.ke.yu@intel.com>	<e2bf7f2c627346574195eba57b665f4de4757c8a.1306220205.git.ke.yu@intel.com>
	<20110524171702.GB18086@sakrah.homelinux.org>
In-Reply-To: <20110524171702.GB18086@sakrah.homelinux.org>
Subject: Re: [PATCH 1/1] fetcher2/git: add document for git fetcher supported options
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
X-List-Received-Date: Wed, 25 May 2011 02:15:05 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

on 2011-5-25 1:17, Khem Raj wrote:
> On (24/05/11 14:58), Yu Ke wrote:
>> CC: Khem Raj<raj.khem@gmail.com>
>> CC: Darren Hart<dvhart@linux.intel.com>
>>
>> Signed-off-by: Yu Ke<ke.yu@intel.com>
>> ---
>>   bitbake/lib/bb/fetch2/git.py |   37 ++++++++++++++++++++++++++++++++++---
>>   1 files changed, 34 insertions(+), 3 deletions(-)
>>
>> diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
>> index 82721c6..b07298d 100644
>> --- a/bitbake/lib/bb/fetch2/git.py
>> +++ b/bitbake/lib/bb/fetch2/git.py
>> @@ -3,6 +3,40 @@
>>   """
>>   BitBake 'Fetch' git implementation
>>
>> +git fetcher support the SRC_URI with format of:
>> +SRC_URI = "git://some.host/somepath;OptionA=xxx;OptionB=xxx;..."
>> +
>> +Supported SRC_URI options are:
>> +
>> +- branch
>> +   The git branch to retrieve from. The default is "master"
>> +
>> +   this option also support multiple branches fetching, branches
>> +   are seperated by comma. in multiple branches case, the name option
>> +   must have the same number of names to match the branches, which is
>> +   used to specify the SRC_REV for the branch
>> +   e.g:
>> +   SRC_URI="git://some.host/somepath;branch=branchX,branchY;name=nameX,nameY"
>> +   SRCREV_nameX = "xxxxxxxxxxxxxxxxxxxx"
>> +   SRCREV_nameY = "YYYYYYYYYYYYYYYYYYYY"
>> +
>> +- tag
>> +    The git tag to retrieve. The default is "master"
>> +
>> +- protocol
>> +   The method to use to access the repository. Common options are "git",
>> +   "http", "file" and "rsync". The default is "rsync"
>> +
>> +- rebaseable
>> +   rebaseable indicates that the upstream git repo may rebase in the future,
>> +   and current revision may disappear from upstream repo. This option will
>> +   reminder fetcher to preserve local cache carefully for future use.
>> +   The default value is "0", set rebaseable=1 for rebaseable git repo
>
> for consistency why not make rebaseable=true/false as well ?
>
>> +
>> +- nocheckout
>> +   Don't checkout source code when unpacking. set this option for the recipe
>> +   who has its own routine to checkout code. The default is false
>                                                                  ^^^^
> may be it should be in '' or quotes

Good catch. my description is not 100% accurate here. Actually this 
parameter has no default value. According to the nocheckout handling code:
"
         ud.nocheckout = False
         if 'nocheckout' in ud.parm:
             ud.nocheckout = True
"
the value does not matter, what matters is that if the SRC_URI have this 
option set. In another word, "nocheckout=0" also lead to ud.nocheckout=True.

So I am thinking if it is better to make the nocheckout format the same 
as rebaseable, e.g.
"
	ud.nocheckout = ud.parm.get("nocheckout","0") == "1"
"
i.e. the default value is "0", and set nocheckout=1 for nocheckout 
recipe. In this case, we have consistency format. And this format also 
consist with other bitbake variable, for example, 
BB_GENERATE_MIRROR_TARBALLS. Also the current existing recipes are 
already using the "nocheckout=1" format, so this change require no 
recipe change.

Comments?

Regards
Ke

