Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 489694C80A92
	for <poky@yoctoproject.org>; Wed, 25 May 2011 22:06:22 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4Q36KWI019617
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 25 May 2011 20:06:21 -0700 (PDT)
Received: from [128.224.162.178] (128.224.162.178) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 25 May 2011 20:06:20 -0700
Message-ID: <4DDDC343.7070008@windriver.com>
Date: Thu, 26 May 2011 11:04:35 +0800
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Thunderbird/3.1.10
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>
References: <cover.1306297759.git.xiaofeng.yan@windriver.com>
	<4DDD9185.3040400@intel.com>
In-Reply-To: <4DDD9185.3040400@intel.com>
X-Originating-IP: [128.224.162.178]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] libQtopenGL: Add this library to lsb image
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
X-List-Received-Date: Thu, 26 May 2011 03:06:22 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2011年05月26日 07:32, Saul Wold wrote:
> On 05/25/2011 12:03 AM, Xiaofeng Yan wrote:
>> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>>
>> Hi Saul,
>> [YOCTO #1020]
>> We make lsb test on the following platform with default "mesa-xlib" 
>> so far.
>> emenlow, mpc8315e, qemux86,qemux86-64,jasperforest
>> Perhaps some of them could have graphic hardware but lsb image can 
>> pass test by default "mesa-xlib" except mpc8315e because of its 
>> limited memory
>> we don't make lsb test on lsb image with "mesa-dri".
>> I submit two patches to fix bug [#YOCTO 1020]
>>
> Did you test this with mips or arm builds?
>
> Sau!
>
Hi Saul,

At the present time LSB Test Suite don't support arm and mips platform. 
It support amd64, i386,i486,ia64,ppc23 ppc64,s390,s390x,x86-64 now. So I 
didn't build lsb image for arm and mips ago. If you want to get an lsb 
image for arm and mips, I can try to build them but can't test them 
without LSB Test Suite.

Thanks
Yan
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>> Branch: xiaofeng/opengl
>> Browse: 
>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/opengl
>>
>> Thanks,
>> Xiaofeng Yan<xiaofeng.yan@windriver.com>
>> ---
>>
>>
>> Xiaofeng Yan (2):
>> poky-lsb: Compile library libQtOpenGL* for building a lsb image
>> task-core-lsb: Install libQtOpenGL* to lsb image
>>
>> meta-yocto/conf/distro/poky-lsb.conf | 2 +-
>> meta/recipes-extended/tasks/task-core-lsb.bb | 18 +-----------------
>> 2 files changed, 2 insertions(+), 18 deletions(-)
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>
>


