Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2938D4C800D7
	for <poky@yoctoproject.org>; Wed,  1 Jun 2011 01:48:55 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p516mnTG007423
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 31 May 2011 23:48:49 -0700 (PDT)
Received: from [128.224.162.198] (128.224.162.198) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 31 May 2011 23:48:49 -0700
Message-ID: <4DE5E0C8.4070909@windriver.com>
Date: Wed, 1 Jun 2011 14:48:40 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <cover.1305963432.git.kai.kang@windriver.com>
	<4DE5CA77.3050907@linux.intel.com>
In-Reply-To: <4DE5CA77.3050907@linux.intel.com>
X-Originating-IP: [128.224.162.198]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1]ghostscript: add patches to make it run cross compile platform V2
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
X-List-Received-Date: Wed, 01 Jun 2011 06:48:55 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2011年06月01日 13:13, Saul Wold wrote:
> On 05/21/2011 01:24 AM, Kang Kai wrote:
>> From: Kang Kai<kai.kang@windriver.com>
>>
>> Hi Richard,
>>
>> I update the patches with your opinion, thanks!
>>
>> When test lsb on ppc find that gs can't run. The root cause is gs 
>> determines some target configuration
>> on build system. According to the document of ghostscript,
>> http://pages.cs.wisc.edu/~ghost/doc/cvs/Make.htm#Cross-compiling
>> when cross compile ghostscript need some manual work.
>> So import patches from WindRiver Linux to make sure ghostscript can 
>> be cross compiled, and spit the patches
>> into arch/[so]obj.h source files.
>>
>> The following changes since commit 
>> 7706d5d844db2725f4118207d90e302679eacdfe:
>>
>> linux-yocto/meta-yocto: fix gcc 4.6.0 compilation failures 
>> (2011-05-19 17:33:50 -0700)
>>
>
Hi Saul,

>
> I think I must have merged the working patch, when I started to test 
> with your enable ghostscipt patch I got a fetch error on ghostscript, 
> I think we some how missed the changes you made for obarch.h and 
> soobjarch.h
>
> I get the following error:ERROR: Logfile of failure stored in:
>
> /intel/poky/builds/world/tmp/work/i686-linux/ghostscript-native-9.02-r1/temp/log.do_fetch.11982 
>
> Log data follows:
> | ERROR: Function 'Fetcher failure for URL: 'file://objarch.h'. Unable 
> to fetch URL file://objarch.h from any source.' failed
> | ERROR: Function 'Fetcher failure for URL: 'file://objarch.h'. Unable 
> to fetch URL file://objarch.h from any source.' failed
> NOTE: package ghostscript-native-9.02-r1: task do_fetch: Failed
> ERROR: Task 343 
> (virtual:native:/intel/poky/distro/meta/recipes-extended/ghostscript/ghostscript_9.02.bb, 
> do_fetch) failed with exit code '1'
The reason cause failure is your build machine arch is "i686" not 
provided by ghostscript source files. And run 'cp i586 i686' will fix 
this issue.

But I am not sure this is the right solution, it should not be affected 
by build machine. For example, if somebody build yocto on a i486 
machine, it will fail too.

Maybe I need to remove the native package dependency just like what is 
done in oe's gs recipe and send it later.

Thanks & Regards,
Kai
>
>
> Please review your ghostscript and verify that it is correct.
>
> Thanks
> Sau!
>
>> are available in the git repository at:
>> git://git.pokylinux.org/poky-contrib.git kangkai/distro
>> http://git.pokylinux.org/cgit.cgi//log/?h=kangkai/distro
>>
>> Kang Kai (1):
>> ghostscript: fix run failure on mpc8315e
>>
>> meta/recipes-extended/ghostscript/arm/objarch.h | 40 +++++++++++++++++++
>> meta/recipes-extended/ghostscript/arm/soobjarch.h | 40 
>> +++++++++++++++++++
>> .../ghostscript/ghostscript-9.02-genarch.patch | 27 +++++++++++++
>> .../ghostscript/ghostscript_9.02.bb | 22 +++++++++-
>> meta/recipes-extended/ghostscript/i586/objarch.h | 41 
>> ++++++++++++++++++++
>> meta/recipes-extended/ghostscript/i586/soobjarch.h | 41 
>> ++++++++++++++++++++
>> meta/recipes-extended/ghostscript/mips/objarch.h | 40 
>> +++++++++++++++++++
>> meta/recipes-extended/ghostscript/mips/soobjarch.h | 40 
>> +++++++++++++++++++
>> .../recipes-extended/ghostscript/powerpc/objarch.h | 40 
>> +++++++++++++++++++
>> .../ghostscript/powerpc/soobjarch.h | 40 +++++++++++++++++++
>> meta/recipes-extended/ghostscript/x86_64/objarch.h | 40 
>> +++++++++++++++++++
>> .../ghostscript/x86_64/soobjarch.h | 40 +++++++++++++++++++
>> 12 files changed, 448 insertions(+), 3 deletions(-)
>> create mode 100644 meta/recipes-extended/ghostscript/arm/objarch.h
>> create mode 100644 meta/recipes-extended/ghostscript/arm/soobjarch.h
>> create mode 100644 
>> meta/recipes-extended/ghostscript/ghostscript/ghostscript-9.02-genarch.patch
>> create mode 100644 meta/recipes-extended/ghostscript/i586/objarch.h
>> create mode 100644 meta/recipes-extended/ghostscript/i586/soobjarch.h
>> create mode 100644 meta/recipes-extended/ghostscript/mips/objarch.h
>> create mode 100644 meta/recipes-extended/ghostscript/mips/soobjarch.h
>> create mode 100644 meta/recipes-extended/ghostscript/powerpc/objarch.h
>> create mode 100644 meta/recipes-extended/ghostscript/powerpc/soobjarch.h
>> create mode 100644 meta/recipes-extended/ghostscript/x86_64/objarch.h
>> create mode 100644 meta/recipes-extended/ghostscript/x86_64/soobjarch.h
>>


