Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1280A4C80334
	for <poky@yoctoproject.org>; Fri, 27 May 2011 20:40:47 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 May 2011 18:40:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,284,1304319600"; 
   d="scan'208";a="3216745"
Received: from kyu3-desk.ccr.corp.intel.com (HELO [10.238.154.142])
	([10.238.154.142])
	by azsmga001.ch.intel.com with ESMTP; 27 May 2011 18:40:46 -0700
Message-ID: <4DE0529D.3010504@intel.com>
Date: Sat, 28 May 2011 09:40:45 +0800
From: Yu Ke <ke.yu@intel.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <cover.1306486223.git.ke.yu@intel.com>
	<BANLkTinAp6G=xhwmvfagDv2QdhzCo04Akw@mail.gmail.com>
In-Reply-To: <BANLkTinAp6G=xhwmvfagDv2QdhzCo04Akw@mail.gmail.com>
Cc: Richard Purdie <richard.purdie@intel.com>, poky@yoctoproject.org
Subject: Re: [PATCH 0/4] fetcher2 git cleanup
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
X-List-Received-Date: Sat, 28 May 2011 01:40:48 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

on 2011-5-28 1:12, Khem Raj wrote:
> On Fri, May 27, 2011 at 1:53 AM, Yu Ke<ke.yu@intel.com>  wrote:
>> This patch series is some clean up of the git fetcher according to the comment
>> from mailing list.
>>
>> The following changes since commit 9bccbc5fbc71b331911b558a2ba15e0a6d0046b4:
>>   Nitin A Kamble (1):
>>         tcmode-default: workaround for gcc 4.6.0 failure on beagleboard
>>
>> are available in the git repository at:
>>
>>   git://git.pokylinux.org/poky-contrib kyu3/git-cleanup
>>   http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=kyu3/git-cleanup
>>
>> Yu Ke (4):
>>   fetche2 git: change default protocol from rsync to git
>>   fetcher2 git: unify the nocheckout option format
>
> above patch has typo in commit message nocheckou is missing 't'
>
>>   fetcher2/git: add document for git fetcher supported options
>
> while the contents are ok there are grammatical corrections needed in the above

It is good reminder. Thank Khem and Richard. I will take care of it next 
time.

Regards
Ke

