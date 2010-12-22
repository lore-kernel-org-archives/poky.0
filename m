Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id D6F1A4C808B0
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 09:21:53 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 22 Dec 2010 07:21:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,213,1291622400"; d="scan'208";a="870915257"
Received: from unknown (HELO [10.255.13.77]) ([10.255.13.77])
	by fmsmga001.fm.intel.com with ESMTP; 22 Dec 2010 07:21:52 -0800
Message-ID: <4D121768.5080108@linux.intel.com>
Date: Wed, 22 Dec 2010 07:21:12 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Lu Jingdong <jingdong.lu@windriver.com>
References: <cover.1292925066.git.jingdong.lu@windriver.com>
	<4D11493C.6050207@linux.intel.com> <4D11CAA8.1020106@windriver.com>
In-Reply-To: <4D11CAA8.1020106@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] Fix failures of LSB.
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
X-List-Received-Date: Wed, 22 Dec 2010 15:21:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/22/2010 01:53 AM, Lu Jingdong wrote:
> On 12/22/2010 08:41 AM, Saul Wold wrote:
>> On 12/21/2010 01:54 AM, Jingdong Lu wrote:
>>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>> Branch: jingdonglu/distro
>>> Browse:
>>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro
>>>
>>> Thanks,
>>> Jingdong Lu<jingdong.lu@windriver.com>
>>> ---
>>>
>>
>> Jingdong,
>>
>>
>>
>> Why do you need the do_install? Can the standard do_install not work
>> correctly for this recipe?
> Because we need add some options to make install, eg,
> UCBINSTALL=install, I didn't use standard do_install.
>
>> meta/recipes-extended/mailx/mailx_12.4.bb | 18 ++++++++++++++++++
>> Can you please add a SUMMARY and SRC_URI checksums to the mailx recipe.
>>
Jingdong,

You added SRC_URI Checksums, but not the SUMMARY, also see Richard's 
comments about using ${prefix}, please re-submit a v3 of this patch.

Sau!

>> Is the PREFIX=/usr correct? I note in other there is a ${D} or
>> ${D}${prefix}, please make sure you have the correct location here.
> Because the default value of PREFIX is /usr/local in Makefile, I change
> it into /usr and give this option.
>>
>> Please re-sumbit a v2 patch set.
> I re-submit patch set.
> Thank you!
>>
>>
>
>

