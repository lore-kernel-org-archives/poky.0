Return-Path: <Qi.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40B00E013CB
	for <poky@yoctoproject.org>; Wed, 10 Jul 2013 02:12:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r6A9CMMd019932
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 10 Jul 2013 02:12:22 -0700 (PDT)
Received: from [128.224.162.233] (128.224.162.233) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Wed, 10 Jul 2013 02:12:22 -0700
Message-ID: <51DD2574.7060608@windriver.com>
Date: Wed, 10 Jul 2013 17:12:20 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1373438138.git.Qi.Chen@windriver.com>
	<9915990f3fb2466fb2146394f65154e21b35890d.1373438138.git.Qi.Chen@windriver.com>
	<5822283.x6sXiXjJIc@helios>
In-Reply-To: <5822283.x6sXiXjJIc@helios>
X-Originating-IP: [128.224.162.233]
Cc: qingtao.cao@windriver.com, "Hart, Darren" <dvhart@linux.intel.com>,
	poky@yoctoproject.org
Subject: Re: [PATCH 1/2] poky-tiny.conf: add extra libc features
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
X-List-Received-Date: Wed, 10 Jul 2013 09:12:24 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 07/10/2013 04:30 PM, Paul Eggleton wrote:
> Hi Qi / Darren,
>
> On Wednesday 10 July 2013 14:37:12 Qi.Chen@windriver.com wrote:
>> From: Chen Qi <Qi.Chen@windriver.com>
>>
>> Add two extra libc features, libc-spawn and libc-rcmd, as they are
>> needed to successfully compile the shadow package which is needed
>> if we set USER_GROUP_SETTIGNS in some configuration file.
>>
>> [YOCTO #4074]
>>
>> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
>> ---
>>   meta-yocto/conf/distro/poky-tiny.conf |    2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/meta-yocto/conf/distro/poky-tiny.conf
>> b/meta-yocto/conf/distro/poky-tiny.conf index 755667f..9d9ea3c 100644
>> --- a/meta-yocto/conf/distro/poky-tiny.conf
>> +++ b/meta-yocto/conf/distro/poky-tiny.conf
>> @@ -62,7 +62,7 @@ ASSUME_PROVIDED += "pkgconfig$"
>>
>>   # Reconfigure eglibc for a smaller installation
>>   # Comment out any of the lines below to disable them in the build
>> -DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"
>> +DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt libc-spawn libc-rcmd"
>>   DISTRO_FEATURES_LIBC_TINY_append_x86-64 = " libc-libm-big"
>>
>>   # Required for "who"
> Is this really appropriate for poky-tiny? It seems to me it might be
> orthogonal to the point of poky-tiny which is to be pretty much as light as
> possible.
>
> Cheers,
> Paul
>
I added these two extra libc features because I wanted 
USER_GROUP_SETTINGS to have effect for poky-tiny.

For now, because of lack of libc features, adding packages to poky-tiny 
is likely to fail.
So the question here is, are we deciding that poky-tiny equals to 
'limited-featured libc + tiny init + busybox"? If so, maybe we need to a 
mechanism to warn user when they try to add packages to poky-tiny.

Besides, removing the libc features doesn't seem to have significant 
effects on the size of the image.

chenqi@pek-qchen1-d1:~/poky$ ls -lh 
build-tiny/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/lib/libc-2.17.so 

-rwxr-xr-x 1 chenqi chenqi 1.1M Jul 10 13:49 
build-tiny/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/lib/libc-2.17.so
chenqi@pek-qchen1-d1:~/poky$ ls -lh 
build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/lib/libc-2.17.so 

-rwxr-xr-x 1 chenqi chenqi 1.5M Jul  3 11:23 
build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/lib/libc-2.17.so

Best Regards,
Chen Qi

