Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9179EE00576; Tue, 22 Jul 2014 04:37:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0865E0054C
	for <poky@yoctoproject.org>; Tue, 22 Jul 2014 04:37:30 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s6MBb2CB019986
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 22 Jul 2014 04:37:02 -0700 (PDT)
Received: from [128.224.162.181] (128.224.162.181) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.169.1;
	Tue, 22 Jul 2014 04:37:02 -0700
Message-ID: <53CE4CDC.10308@windriver.com>
Date: Tue, 22 Jul 2014 19:37:00 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <cover.1406024955.git.liezhi.yang@windriver.com>
	<8f203e49c4ecfc92eb09b175707f8dd7a6f0b546.1406024955.git.liezhi.yang@windriver.com>
	<20140722104852.GP22875@jama>
In-Reply-To: <20140722104852.GP22875@jama>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/2] local.conf.sample: qemu-native DEPENDS libxext-naive
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
X-List-Received-Date: Tue, 22 Jul 2014 11:37:35 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit



On 07/22/2014 06:48 PM, Martin Jansa wrote:
> On Tue, Jul 22, 2014 at 03:31:25AM -0700, Robert Yang wrote:
>> Fixed do_configure error:
>>
>> ERROR: User requested feature sdl
>>         configure was not able to find it.
>>         Install SDL devel
>>
>> This is error from log.do_configure, and if we check config.log, the error is:
>>
>> sysroots/x86_64-linux/usr/lib/libXext.so.6: undefined reference to `_XEatDataWords'
>>
>> The _XEatDataWords is provided by libX11.so, the dependencies are:
>>
>> qemu-native -> sdl(from the host) -> libXext.so(maybe host or native) -> libX11.so (maybe host or native)
>>
>> We may meet the error if host's libX11.so doesn't provide _XEatDataWords, and native's
>> libX11.so has been removed (for example, rebuild).
>>
>> Another way to fix is: let qemu-native depend on libxext-naive when sdl is
>> enabled, for example:
>>
>> PACKAGECONFIG[sdl] = "--enable-sdl,--disable-sdl,libsdl libxext-native,"
>>
>> But this might be incorrect since target sdl or qemu may not require X11, so
>> set:
>>
>> DEPENDS_pn-qemu-native += "libxext-naive"
>>
>> in local.conf.sample to fix problem.
>>
>> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
>> ---
>>   meta-yocto/conf/local.conf.sample |    1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
>> index bcb0864..742eb1a 100644
>> --- a/meta-yocto/conf/local.conf.sample
>> +++ b/meta-yocto/conf/local.conf.sample
>> @@ -243,6 +243,7 @@ BB_DISKMON_DIRS = "\
>>   # seen. The two lines below enable the SDL backend too. This assumes there is a
>>   # libsdl library available on your build system.
>>   PACKAGECONFIG_pn-qemu-native = "sdl"
>> +DEPENDS_pn-qemu-native += "libxext-naive"
>
> Doesn't this belong in qemu-native's PACKAGECONFIG definition for sdl?

Yes, but I don't know how to do it, what I know is:

PACKAGECONFIG[sdl] = "--enable-sdl,--disable-sdl,libsdl libxext,"

That would affect the target qemu, too, for example, when the user defines:

PACKAGECONFIG = "sdl" for target qemu, then the depends would be:

"libsdl libxext"

But the target sdl or qemu may not require X11.

Do you know how to define it for qemu-native only, please ?

// Robert

>
>>   PACKAGECONFIG_pn-nativesdk-qemu = "sdl"
>>   ASSUME_PROVIDED += "libsdl-native"
>>
>> --
>> 1.7.9.5
>>
>> --
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>

