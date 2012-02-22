Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A103E013A3
	for <poky@yoctoproject.org>; Tue, 21 Feb 2012 17:51:42 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q1M1pfoN003547
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 21 Feb 2012 17:51:41 -0800 (PST)
Received: from [128.224.162.202] (128.224.162.202) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 21 Feb 2012 17:51:41 -0800
Message-ID: <4F444A34.8030203@windriver.com>
Date: Wed, 22 Feb 2012 09:51:48 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <cover.1329470296.git.kai.kang@windriver.com>
	<4F43D09B.5000500@linux.intel.com>
In-Reply-To: <4F43D09B.5000500@linux.intel.com>
X-Originating-IP: [128.224.162.202]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Yocto 1656: Recipe creation/import script
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
X-List-Received-Date: Wed, 22 Feb 2012 01:51:42 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2012年02月22日 01:12, Saul Wold wrote:
> On 02/17/2012 01:25 AM, Kang Kai wrote:
>> Hi Saul,
>>
>> I send this patch version 2 one week ago, and no new comment received.
>> So would you like to give some comments or commit it?
>>
> Kai,
>
Hi Saul,

> Most of the team has been at the ELC conference this last week with no 
> time to review patches, we are catching up this week. Please have some 
> patience while we catch up.
OK.

Thanks,
Kai

>
> Thanks
> Sau!
>
>
>> Thanks a lot.
>>
>> The following changes since commit 
>> 41a83ccfe50ec69425a4828fb5836d38d3f99e67:
>>
>> guile: fix cross configure failure (2012-02-10 17:01:42 +0000)
>>
>> are available in the git repository at:
>> git://git.pokylinux.org/poky-contrib kangkai/distro
>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro
>>
>> Kang Kai (1):
>> create-recipe: create a recipe from source URI
>>
>> scripts/create-recipe | 769 
>> +++++++++++++++++++++++++++++++++++++++++++++++++
>> 1 files changed, 769 insertions(+), 0 deletions(-)
>> create mode 100755 scripts/create-recipe
>>


