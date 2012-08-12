Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F5FBE0049A
	for <poky@yoctoproject.org>; Sat, 11 Aug 2012 22:41:51 -0700 (PDT)
Received: by eekd41 with SMTP id d41so809667eek.35
	for <poky@yoctoproject.org>; Sat, 11 Aug 2012 22:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=rhcSNsiTfdtG9F0Nub181tVO6YMQX63qjxOIE9+CiwQ=;
	b=gQdQ0UnAco0cCiHmZDcmHqfbjLoWVVgurEZS+cTJCaaZvPJirC6mnSAPP4GgPmX+9z
	ih4S8qdlbMjPtyEMbDQigtpSv5UZNAWCHRNBCeDCllS0pSOLdapGk94Xorx8CTKOTPCp
	j/GR0npHaTiDUYaiT8V1M6Okh6ayZMhdUxXultqM0lIgJW0Or3shaCOCpxjvYVjVUhnw
	Q+hcxRa1ICGF1VMlmp/njOBMVXyqAyAvIAsDSD9zRHRC/EkzdmvVX6gePz0kjQNGKbKr
	tp/Udgb2srZGz6L7yKvFyM7AWRToYHJj+taW2Ut6t4drnja61vQ5uy1uOjvR5XhB3Kkc
	XOQQ==
Received: by 10.14.1.9 with SMTP id 9mr9435759eec.9.1344750110426; Sat, 11 Aug
	2012 22:41:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.225.6 with HTTP; Sat, 11 Aug 2012 22:41:20 -0700 (PDT)
In-Reply-To: <1344697718.4828.32.camel@rogue>
References: <1344533174.4828.29.camel@rogue> <5023F425.1090801@mlbassoc.com>
	<1344610399.4828.31.camel@rogue> <502521A9.5030700@mlbassoc.com>
	<1344697718.4828.32.camel@rogue>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 11 Aug 2012 22:41:20 -0700
Message-ID: <CAMKF1srBJN6SYgCFY+KJzDo7pMPdyBrf484VvgHK3CLXEKARjA@mail.gmail.com>
To: "Luke A. Guest" <laguest@archeia.com>
Cc: poky@yoctoproject.org
Subject: Re: [denzil][meta-ti] Problems building compiler for Pandaboard
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
X-List-Received-Date: Sun, 12 Aug 2012 05:41:51 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Aug 11, 2012 at 8:08 AM, Luke A. Guest <laguest@archeia.com> wrote:
> On Fri, 2012-08-10 at 08:58 -0600, Gary Thomas wrote:
>> On 2012-08-10 08:53, Luke A. Guest wrote:
>> > On Thu, 2012-08-09 at 11:32 -0600, Gary Thomas wrote:
>> >
>> >> Try cleaning out your build tree (remove sstate-cache/ and tmp/) and run
>> >> it again.  The error you are seeing is related to reusing the same tree
>> >> with [somewhat] different target machines.
>> >
>> > I did this and did it get further, failed somewhere else though.
>> >
>>
>> Without more information, it will be hard for anyone to help you out :-(
>>
>
> Yup, well I wanted to do a search first. I did come across the issue as
> it's already known, but I thought it would be patched already.
>
> | Compiling deb/deblistparser.cc
> to /home/laguest/src/others/poky/poky-build/tmp/work/x86_64-linux/apt-native-0.7.14-r7/apt-0.7.14/obj/apt-pkg/deblistparser.opic
> | deb/deblistparser.cc: In member function 'virtual short unsigned int
> debListParser::VersionHash()':
> | deb/deblistparser.cc:212:13: error: redeclaration of 'char* I'
> | deb/deblistparser.cc:202:22: error: 'const char** I' previously
> declared here
> | make[2]: ***
> [/home/laguest/src/others/poky/poky-build/tmp/work/x86_64-linux/apt-native-0.7.14-r7/apt-0.7.14/obj/apt-pkg/deblistparser.opic] Error 1
> | make[2]: *** Waiting for unfinished jobs....
> | make[1]: *** [all] Error 2
> | make: *** [all] Error 2
> | ERROR: oe_runmake failed
> NOTE: package apt-native-0.7.14-r7: task do_compile: Failed
> ERROR: Task 74
> (/home/laguest/src/others/poky/poky/meta/recipes-devtools/apt/apt-native_0.7.14.bb, do_compile) failed with exit code '1'
> Waiting for 1 running tasks to finish:
> 0: busybox-1.19.4-r6 do_compile (pid 30279)
> NOTE: package busybox-1.19.4-r6: task do_compile: Succeeded
> NOTE: Tasks Summary: Attempted 1744 tasks of which 162 didn't need to be
> rerun and 1 failed.


Do you have following patch applied ? If not then I guess you need
some backports.

commit fae7fc49052720f037bac128084851c09d420381
Author: Robert Yang <liezhi.yang@windriver.com>
Date:   Thu Jun 7 16:37:09 2012 -0700

    apt 0.7.14: do_compile failed with gcc 4.7

    apt do_compile failed with gcc 4.7:

    deb/deblistparser.cc: In member function 'virtual short unsigned
int debListParser::VersionHash()':
    deb/deblistparser.cc:212:13: error: redeclaration of 'char* I'
    deb/deblistparser.cc:202:22: error: 'const char** I' previously
declared here



>
> Summary: 1 task failed:
>   /home/laguest/src/others/poky/poky/meta/recipes-devtools/apt/apt-native_0.7.14.bb, do_compile
> Summary: There were 57 WARNING messages shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit
> code.
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

