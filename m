Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 828854C800A2
	for <poky@yoctoproject.org>; Wed,  6 Apr 2011 01:00:16 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3660FhT027771
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 5 Apr 2011 23:00:15 -0700 (PDT)
Received: from [128.224.163.157] (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 5 Apr 2011 23:00:14 -0700
Message-ID: <4D9C015F.20403@windriver.com>
Date: Wed, 6 Apr 2011 13:59:59 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>
References: <cover.1300874241.git.kai.kang@windriver.com>
	<4D9A0A8B.1000003@intel.com>
In-Reply-To: <4D9A0A8B.1000003@intel.com>
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] libjpeg-turbo: add libjpeg-turbo for LSB lib test
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
X-List-Received-Date: Wed, 06 Apr 2011 06:00:16 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2011年04月05日 02:14, Saul Wold wrote:
> On 03/23/2011 06:43 PM, Kang Kai wrote:
>> From: Kang Kai<kai.kang@windriver.com>
>>
>> LSB 4.1 library test will check libjpeg.so.62, and
>> libjpeg-turbo provide it.
>>

Hi Saul,
>
> We already have a libjpeg recipe, what is wrong with that version?
Current libjpeg doesn't provide libjpeg.so.62, and I search Fedora and 
find libjpeg.so.62 provided by libjpeg-turbo, so added it.

Maybe the direct way to provide libjpeg.so.62 is make it link to 
libjpeg.so.8.0.2.
With your permit I will add a patch to jpeg_8b instead of add 
libjpeg-turbo. How about this solution?

Thanks and Regards,
Kai

> It seems that the -turbo version is based on v8b, which is the current 
> version for poky.
>
> I think more information is needed. Also, this looks like it will only 
> work with x86.
>
> Sau!
>
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>> Branch: kangkai/distro
>> Browse: 
>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro
>>
>> Thanks,
>> Kang Kai<kai.kang@windriver.com>
>> ---
>>
>>
>> Kang Kai (1):
>> libjpeg-turbo: add libjpeg-turbo for LSB lib test
>>
>> .../libjpeg-turbo/libjpeg-turbo_1.1.0.bb | 23 ++++++++++++++++++++
>> 1 files changed, 23 insertions(+), 0 deletions(-)
>> create mode 100644 
>> meta/recipes-extended/libjpeg-turbo/libjpeg-turbo_1.1.0.bb
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>


