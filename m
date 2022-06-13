Received: from smtp.hosts.co.uk (smtp.hosts.co.uk [85.233.160.19])
 by mx.groups.io with SMTP id smtpd.web12.3818.1655112603900446388
 for <poky@lists.yoctoproject.org>;
 Mon, 13 Jun 2022 02:30:04 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arkver.com, ip: 85.233.160.19, mailfrom: ian.dev@arkver.com)
Received: from [78.32.143.231] (helo=[192.168.19.10])
	by smtp.hosts.co.uk with esmtpa (Exim)
	(envelope-from <ian.dev@arkver.com>)
	id 1o0gOX-0004NV-8x;
	Mon, 13 Jun 2022 10:30:02 +0100
Message-ID: <6605ef49-cf02-4bda-0cc7-f77160be7873@arkver.com>
Date: Mon, 13 Jun 2022 10:29:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [poky] [PATCH] [honister] elfutils: Fix null pointer dereference with upstream patch.
To: Anuj Mittal <anuj.mittal@intel.com>,
 "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
References: <41b44b09b021a586723372c6ab8a5c12bb2f06ee.1655111663.git.ian.dev@arkver.com>
 <7d4c8c9b27d9f9c0b1f7564b897d471566c322ee.camel@intel.com>
From: "Ian Jamison" <ian.dev@arkver.com>
In-Reply-To: <7d4c8c9b27d9f9c0b1f7564b897d471566c322ee.camel@intel.com>
Content-Language: en-GB
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 13/06/2022 10:20, Anuj Mittal wrote:
> On Mon, 2022-06-13 at 10:14 +0100, Ian Jamison wrote:
>> Compilation with recent gcc flags a null pointer dereference warning
>> which is promoted to an error and causes failure to build.
>>
>> Fixed in upstream patch by Mark Wielaard:
>> 3d9f1288: [PATCH] elflint.c: Don't dereference databits if bad
>> This patch is included in 0.186 release but not in 0.185.
>>
>> Patchfile here has the Changelog blob removed to allow it to apply.
> honister branch is no longer maintained. This page has more information
> on supported branches:
>
> https://wiki.yoctoproject.org/wiki/Releases

Thanks for the info Anuj. On IRC yesterday Ross suggested I submit the 
patch, but never mind. EOL is EOL.

Since IMX/Freescale latest release is based on honister I'll just have 
to keep this as a local patch then.

Regards,
Ian

>
> Thanks,
>
> Anuj
>
>> Signed-off-by: Ian Jamison <ian.dev@arkver.com>
>> ---
>>   .../elfutils/elfutils_0.185.bb                |  1 +
>>   ...001-dont-dereference-databits-if-bad.patch | 39
>> +++++++++++++++++++
>>   2 files changed, 40 insertions(+)
>>   create mode 100644 meta/recipes-devtools/elfutils/files/0001-dont-
>> dereference-databits-if-bad.patch
>>
>> diff --git a/meta/recipes-devtools/elfutils/elfutils_0.185.bb
>> b/meta/recipes-devtools/elfutils/elfutils_0.185.bb
>> index f4769e3632..64a5038ed3 100644
>> --- a/meta/recipes-devtools/elfutils/elfutils_0.185.bb
>> +++ b/meta/recipes-devtools/elfutils/elfutils_0.185.bb
>> @@ -23,6 +23,7 @@ SRC_URI =
>> "https://sourceware.org/elfutils/ftp/${PV}/${BP}.tar.bz2 \
>>             
>> file://0001-tests-Makefile.am-compile-test_nlist-with-standard-C.patch
>>   \
>>             
>> file://0001-debuginfod-debuginfod-client.c-correct-string-format.patch
>>   \
>>              file://glibc-2.34-fix.patch \
>> +           file://0001-dont-dereference-databits-if-bad.patch \
>>              "
>>   SRC_URI:append:libc-musl = " \
>>              file://0002-musl-libs.patch \
>> diff --git a/meta/recipes-devtools/elfutils/files/0001-dont-
>> dereference-databits-if-bad.patch b/meta/recipes-
>> devtools/elfutils/files/0001-dont-dereference-databits-if-bad.patch
>> new file mode 100644
>> index 0000000000..d80c7acad8
>> --- /dev/null
>> +++ b/meta/recipes-devtools/elfutils/files/0001-dont-dereference-
>> databits-if-bad.patch
>> @@ -0,0 +1,39 @@
>> +From 3d9f12883d0c131bd4ab6045e1f60d3fe6d150ea Mon Sep 17 00:00:00
>> 2001
>> +From: Mark Wielaard <mark@klomp.org>
>> +Date: Wed, 6 Oct 2021 23:37:42 +0200
>> +Subject: [PATCH] elflint.c: Don't dereference databits if bad
>> +
>> +elflint.c: In function 'check_sections':
>> +elflint.c:4105:48: error: null pointer dereference [-Werror=null-
>> dereference]
>> +4105 |                                  idx < databits->d_size && !
>> bad;
>> +     |                                        ~~~~~~~~^~~~~~~~
>> +
>> +Fix this by testing for ! bad first.
>> +
>> +Reported-by: Jan-Benedict Glaw <jbglaw@lug-owl.de>
>> +Signed-off-by: Mark Wielaard <mark@klomp.org>
>> +---
>> +
>> +NB: Upstream patch with Changelog blob removed since it doesn't
>> apply cleanly.
>> +    Diffstat below is the original.
>> +
>> + src/ChangeLog | 4 ++++
>> + src/elflint.c | 2 +-
>> + 2 files changed, 5 insertions(+), 1 deletion(-)
>> +
>> +diff --git a/src/elflint.c b/src/elflint.c
>> +index 1ce756847..ef7725ce7 100644
>> +--- a/src/elflint.c
>> ++++ b/src/elflint.c
>> +@@ -4102,7 +4102,7 @@ section [%2zu] '%s' has type NOBITS but is
>> read from the file in segment of prog
>> +                           bad = (databits == NULL
>> +                                  || databits->d_size != shdr-
>>> sh_size);
>> +                           for (size_t idx = 0;
>> +-                               idx < databits->d_size && ! bad;
>> ++                               ! bad && idx < databits->d_size;
>> +                                idx++)
>> +                             bad = ((char *) databits->d_buf)[idx]
>> != 0;
>> +
>> +--
>> +2.31.1
>> +
>>
>>
>>
>
> 
>
