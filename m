Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5510A4C80578
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 14:48:56 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Apr 2011 12:48:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,266,1301900400"; d="scan'208";a="738226854"
Received: from doubt.jf.intel.com (HELO [10.7.199.56]) ([10.7.199.56])
	by orsmga001.jf.intel.com with ESMTP; 25 Apr 2011 12:48:55 -0700
Message-ID: <4DB5D028.1060604@linux.intel.com>
Date: Mon, 25 Apr 2011 12:48:56 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <cover.1303462728.git.xiaofeng.yan@windriver.com>
	<4DB4FC30.10406@linux.intel.com>
In-Reply-To: <4DB4FC30.10406@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Rename creat-lsb-image and improve some	functions in script
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
X-List-Received-Date: Mon, 25 Apr 2011 19:48:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Xiaofeng,

Thanks for accepting all the feedback you received and working through
another patch.

As a matter of process (for the future) please remember to:

1) make sure people who influenced a patch rewrite are CC'd on it
2) Separate patches into logical blocks
   o white space fixes
   o renames
   o contained functional changes

#1 gives the reviewers an opportunity to perform a follow-up review and
   ensure the feedback was communicated and received correctly.

#2 is important as with the patch below, the rename and the functional
   changes are merged into a single patch, so important changes are
   invisible, making it very difficult to review. Also, if a problem
   is detected with this file, it is now impossible to revert the
   functional change without also renaming the file.

Thanks,

Darren Hart

On 04/24/2011 09:44 PM, Saul Wold wrote:
> On 04/22/2011 02:04 AM, Xiaofeng Yan wrote:
>> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>>
>> Thank Darren Hart and Robert to give me suggestions which make this script more professional.
>> The function for this script is to create a 8G lsb image with lsb test suite.
>> Changes for this script:
>> 1 Correct name of this script
>> 2 Improve some function
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>    Branch: xiaofeng/Modify_creat-lsb-image
>>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/Modify_creat-lsb-image
>>
>> Thanks,
>>      Xiaofeng Yan<xiaofeng.yan@windriver.com>
>> ---
>>
>>
>> Xiaofeng Yan (1):
>>    create-lsb-image:Rename creat-lsb-image and improve some function
>>
>>   scripts/creat-lsb-image  |  198 ----------------------------------------
>>   scripts/create-lsb-image |  228 ++++++++++++++++++++++++++++++++++++++++++++++
>>   2 files changed, 228 insertions(+), 198 deletions(-)
>>   delete mode 100755 scripts/creat-lsb-image
>>   create mode 100755 scripts/create-lsb-image
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
> Pulled into oe-core and poky/master
> 
> Thanks
> 	Sau!
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

