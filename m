Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 231204C80052
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 16:43:19 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Nov 2010 14:43:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,226,1288594800"; d="scan'208";a="628553487"
Received: from unknown (HELO [10.255.13.99]) ([10.255.13.99])
	by fmsmga002.fm.intel.com with ESMTP; 19 Nov 2010 14:43:18 -0800
Message-ID: <4CE6FD86.1020101@intel.com>
Date: Fri, 19 Nov 2010 14:43:18 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1289982751.git.qing.he@intel.com>	<4CE41D36.8010207@intel.com>
	<4CE41E5B.3080205@intel.com>
In-Reply-To: <4CE41E5B.3080205@intel.com>
Subject: Re: [PATCH 0/1] curl-native build fix
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
X-List-Received-Date: Fri, 19 Nov 2010 22:43:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/17/2010 10:26 AM, Scott Garman wrote:
> On 11/17/2010 10:21 AM, Saul Wold wrote:
>> On 11/17/2010 12:32 AM, Qing He wrote:
>>>
>>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>>      Branch: qhe/fix
>>>      Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix
>>>
>>> Thanks,
>>>        Qing He
>>> ---
>>>
>>>
>>> Qing He (1):
>>>      curl: fix native dependency
>> Can you give more details about why this change was needed at this point?
>
> Saul,
>
> This was a problem I had reported to Qing off-list. It causes
> curl-native to fail on my Ubuntu 10.10 hosts.
>
Scott,

So we root-caused this to be because you had the gnutls-dev package 
installed on your system, so I am still not conviced that disabling 
gnutls on the native side is correct.  We might need to look at adding 
gnutls as a native dependency of curl-native.

I will investigate this further.

Sau!

> Scott
>


