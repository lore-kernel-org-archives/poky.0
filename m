Return-Path: <scott.a.garman@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 249E34C80B71
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 12:26:42 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Nov 2010 10:26:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,212,1288594800"; d="scan'208";a="627754280"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by fmsmga002.fm.intel.com with ESMTP; 17 Nov 2010 10:26:41 -0800
Received: from [10.255.13.107] (10.255.13.107) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Wed, 17 Nov 2010 11:26:41 -0700
Message-ID: <4CE41E5B.3080205@intel.com>
Date: Wed, 17 Nov 2010 10:26:35 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Thunderbird/3.0.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <cover.1289982751.git.qing.he@intel.com>
	<4CE41D36.8010207@intel.com>
In-Reply-To: <4CE41D36.8010207@intel.com>
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
X-List-Received-Date: Wed, 17 Nov 2010 18:26:42 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/17/2010 10:21 AM, Saul Wold wrote:
> On 11/17/2010 12:32 AM, Qing He wrote:
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>     Branch: qhe/fix
>>     Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix
>>
>> Thanks,
>>       Qing He
>> ---
>>
>>
>> Qing He (1):
>>     curl: fix native dependency
> Can you give more details about why this change was needed at this point?

Saul,

This was a problem I had reported to Qing off-list. It causes 
curl-native to fail on my Ubuntu 10.10 hosts.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

