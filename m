Return-Path: <Michel.Thebeau@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FC95E014D1
	for <poky@yoctoproject.org>; Tue, 23 Apr 2013 05:25:51 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r3NCPnNk010713
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 23 Apr 2013 05:25:49 -0700 (PDT)
Received: from [128.224.146.59] (128.224.146.59) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Tue, 23 Apr 2013 05:25:48 -0700
Message-ID: <51767DCC.7050105@windriver.com>
Date: Tue, 23 Apr 2013 08:25:48 -0400
From: Michel Thebeau <michel.thebeau@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121011 Thunderbird/16.0.1
MIME-Version: 1.0
To: Andrea Adami <andrea.adami@gmail.com>
References: <1366665616-24832-1-git-send-email-michel.thebeau@windriver.com>
	<1366665616-24832-3-git-send-email-michel.thebeau@windriver.com>
	<CAAQYJAt-wVghaptCaB9zk8qN7nFckPsF-ZTYQ7L0Z0_o6sF=wg@mail.gmail.com>
In-Reply-To: <CAAQYJAt-wVghaptCaB9zk8qN7nFckPsF-ZTYQ7L0Z0_o6sF=wg@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] kernel 3.8: routerstationpro: use KERNEL_IMAGE_MAXSIZE to test the image
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 23 Apr 2013 12:25:52 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit



On 13-04-23 04:16 AM, Andrea Adami wrote:
> On Mon, Apr 22, 2013 at 11:20 PM,  <michel.thebeau@windriver.com> wrote:
>> From: Michel Thebeau <michel.thebeau@windriver.com>
>>
>> routerstationpro is limited to 16mb flash size.  Exceeding that size may
>> not be noticed immediately, which we don't want.
>>
>> "The current latest kernel for the routerstationpro machine is far
>> beyond the 16MB of it's flash size [0]. I think it would be good to
>> [test if the size of the image is above that size]."
>>
>> Setting this variable will enable the do_sizecheck task and produce an
>> error when the image is too large:
>>
>> "ERROR: This kernel (size=90230265 > 16777216) is too big for your
>> device. Please reduce the size of the kernel by making more of it
>> modular."
>>
>> Taken from commit 83716e40edacfd20dec8ef41f415ad5828d4643b.
>>
>> [YOCTO #3514]
>>
>> Signed-off-by: Michel Thebeau <michel.thebeau@windriver.com>
>> ---
>>  .../recipes-kernel/linux/linux-yocto_3.8.bbappend  |    3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
>> index 479a386..769dcc0 100644
>> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
>> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
>> @@ -12,3 +12,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>>  COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
>>  COMPATIBLE_MACHINE_beagleboard = "beagleboard"
>>  COMPATIBLE_MACHINE_atom-pc = "atom-pc"
>> +
>> +# routerstationpro has a flash size of 16mb
>> +KERNEL_IMAGE_MAXSIZE_append_routerstationpro = "16777216"
> 
> Why would it need an _append_ ?
> KERNEL_IMAGE_MAXSIZE_routerstationpro = "16777216" should be enough.
> 
> And by the way such kernel sizes look really exaggerated.

Thanks Andrea,

I'll drop _append_.

I'm not sure what you mean mean by exaggerated.  I multiplied 16mb with
2^20 == 16777216.

M

> 
> Regards
> 
> Andrea
> 
> 
>> --
>> 1.7.9.7
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
> 

