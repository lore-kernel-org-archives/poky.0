Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B09A84C80BD4
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 16:29:59 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 30 Dec 2010 14:29:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,251,1291622400"; d="scan'208";a="873146273"
Received: from unknown (HELO [10.255.13.238]) ([10.255.13.238])
	by fmsmga001.fm.intel.com with ESMTP; 30 Dec 2010 14:29:59 -0800
Message-ID: <4D1D07E7.7010000@linux.intel.com>
Date: Thu, 30 Dec 2010 14:29:59 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <cover.1293731824.git.dvhart@linux.intel.com>	<a01f0a62cfa9dfd7d3c9809f9cb439100a9eb61d.1293731824.git.dvhart@linux.intel.com>
	<AANLkTi=HVSpVxnx9QbU++mRMMW=csPz13PyT+vVX28b7@mail.gmail.com>
In-Reply-To: <AANLkTi=HVSpVxnx9QbU++mRMMW=csPz13PyT+vVX28b7@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/3] trace-cmd: fix cross-compilation
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
X-List-Received-Date: Thu, 30 Dec 2010 22:30:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/30/2010 01:02 PM, Bruce Ashfield wrote:
> On Tue, Dec 28, 2010 at 8:17 PM, Darren Hart<dvhart@linux.intel.com>  wrote:
>> The trace-cmd Makefile forces certain variables, such as CC and AR.
>> It was using the host gcc and loader, fix it to use the poky-built
>> cross-compiler and linker.
>>
>> inherit pkgconfig to ensure we don't use the host pkg-config.
>>
>> Remove unecessary variables from the oemake commands, such as ARCH
>> and LD which aren't used by the Makefile.
>>
>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>> CC: Tom Zanussi<tom.zanussi@intel.com>
>
> I actually hacked up the original of this one .. ;)

Right, sorry, forgot to check git blame on this one.

>
>
>> ---
>>   meta/recipes-kernel/trace-cmd/trace-cmd_git.bb |   12 +++++-------
>>   1 files changed, 5 insertions(+), 7 deletions(-)
>>
>> diff --git a/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb b/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
>> index e375afc..a7eca5f 100644
>> --- a/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
>> +++ b/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
>> @@ -2,18 +2,16 @@ DESCRIPTION = "User interface to Ftrace"
>>   LICENSE = "GPL"
>>   LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
>>
>> -PR = r1
>> +PR = r2
>>   PV = "1.0.4+git${SRCPV}"
>>
>> +inherit pkgconfig
>> +
>>   SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git;protocol=git"
>>   S = "${WORKDIR}/git"
>>
>> -
>> -do_compile() {
>> -       oe_runmake ARCH="${ARCH}" CC="${CC}" LD="${LD}" prefix=${prefix}
>> -}
>> +EXTRA_OEMAKE = "'CC=${CC}' 'AR=${AR}' 'prefix=${prefix}'"
>
> So we've determined that we don't need ARCH anymore ? At one point
> this did. Or is it coming from the pkgconfig inheritance now ?

Good question. My understanding of setting these variables here was to 
override whatever the Makefile was using. This makefile doesn't use ARCH 
at all. Am I missing something about how this is used?

--
Darren

>
> Bruce
>
>>
>>   do_install() {
>> -       oe_runmake ARCH="${ARCH}" CC="${CC}" LD="${LD}" \
>> -                   prefix=${prefix} DESTDIR=${D} install
>> +       oe_runmake CC="${CC}" AR="${AR}" prefix="${prefix}" DESTDIR="${D}" install
>>   }
>> --
>> 1.7.1
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>
>
>


-- 
Darren Hart
Yocto Linux Kernel

