Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B757DE00D5F; Sat,  7 May 2016 08:41:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
Received: from mail-qk0-f182.google.com (mail-qk0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26347E00D5C
	for <poky@yoctoproject.org>; Sat,  7 May 2016 08:41:53 -0700 (PDT)
Received: by mail-qk0-f182.google.com with SMTP id x7so75140012qkd.3
	for <poky@yoctoproject.org>; Sat, 07 May 2016 08:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+dyHdPOS1wzsO6Uxkcm7n/dBa/bsW6HGtmX96wPpjYc=;
	b=DcOYOzgp7brW9FZxACbE6h0CFmX/1fbgMOfTgZJ7FbGhIiFSiJt0cum7DQkVJ/+4Zj
	F5dHw43Pxo/GqXZWntWnNAFCIviQbzETI43xlVrMiu6cd+/IRDshCmzeMqNiTUNbSGmH
	cS8i+FEJpaEs4eaHGX4lwAAzZS80ZwjYG9HEi+OUhGA14xWQLYwyJk4Jm02fP/CD3PKl
	JKyJ9j1TQyu7xQ9jTFdLCnCsvq3iSEq1YSSJeup1P3kjyCvqJ96rD01+8Fpprdok0xl8
	jHP2Tpbafv2kkxAJhORIYtSLNVEVeZOcSA0QsiDXbYEsAoVDX2SIqfic38+74IxB47M5
	vDFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+dyHdPOS1wzsO6Uxkcm7n/dBa/bsW6HGtmX96wPpjYc=;
	b=PZ0ll6bbsX6D49V6v4pAM7MO5xjYVaqq2Q6iZHlEpbN1mRAuhnZT+liENyDcf84dpO
	yVc5XatXP9xObnS22iDnxF+9wqC1NO7A1t0eGgcSAfzyaUy4Y1WCTYcCqUgWTOLG+PEg
	youvn/LXamo1+ZQLkgh9MAenAFxXjMT7SJDjhptzJZ2Au6pK0A1k/BqDJx2L3LDO1hkG
	G+gn22S1nTinP9yIbORPqh7JY85i8ud4R0NpOL6bRyf2a+mzgwutW4DHRc5ikN29/ADo
	gevKHMJqu6m3sdLO6gYTBG2/30dubdkbgDZtTz/Fr5vSdlyrSzzQCnhepFQEFYgMefIm
	/bnA==
X-Gm-Message-State: AOPr4FVxq9Rz0G5tg6z8nyqyV8MOdyfKsvVmEmOQYZtqSH2Gmfg9ZMCol/JoIZ+DIk9h2mT12xDqFlj5g7Nm+Q==
X-Received: by 10.55.96.197 with SMTP id u188mr27889826qkb.151.1462635712989; 
	Sat, 07 May 2016 08:41:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Sat, 7 May 2016 08:41:23 -0700 (PDT)
In-Reply-To: <1462610454.21674.149.camel@linuxfoundation.org>
References: <8760uq4yok.fsf@babayev.com>
	<1462610454.21674.149.camel@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 7 May 2016 08:41:23 -0700
Message-ID: <CAMKF1soZ-QeLO4V_50b_SF=FnA+QDgd7ApL2VmJxhCynGD4a0A@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Ruslan Babayev <ruslan@babayev.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: gcc cross-compiler hangs with musl libc
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
X-List-Received-Date: Sat, 07 May 2016 15:41:57 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, May 7, 2016 at 1:40 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Fri, 2016-05-06 at 15:19 -0700, Ruslan Babayev wrote:
>> Hi Richard,
>>
>> I recently noticed GCC in meta-toolchain misteriously hangs when
>> trying to build
>> anything. This is my config (with meta-intel layers added):
>>
>> MACHINE = "crystalforest"
>> TCLIBC = "musl"
>>
>> I narrowed it down to gcc not liking '-m64' flag followed by '
>> -mmusl'.
>>
>> $ x86_64-poky-linux-musl-gcc --sysroot=/opt/poky/2.1/sysroots/corei7
>> -64-poky-linux-musl hello.c -o hello -m64 #works
>> $ x86_64-poky-linux-musl-gcc --sysroot=/opt/poky/2.1/sysroots/corei7
>> -64-poky-linux-musl hello.c -o hello -mmusl #works
>>
>> $ x86_64-poky-linux-musl-gcc --sysroot=/opt/poky/2.1/sysroots/corei7
>> -64-poky-linux-musl hello.c -o hello -mmusl -m64 #works
>> $ x86_64-poky-linux-musl-gcc --sysroot=/opt/poky/2.1/sysroots/corei7
>> -64-poky-linux-musl hello.c -o hello -m64 -mmusl #hangs
>> ^C

Can you pass -v option and see where it hangs ?, secondly whats your SDK_HOST

>>
>> So it seems passing -mmusl is not required. Just to try this out I
>> commented out TARGET_CC_ARCH_append_libc-musl line in
>> meta/classes/toolchain-scripts.bbclass and rebuilt my meta-toolchain
>> to
>> make GCC happy.

OK thats a good datapoint, I can try to reproduce it.

>>
>> I have seen this with musl and x86_64 with -m64 but I am guessing the
>> issue might also affect other architechtures and tunes as well x86(
>> -m64,
>> -m32, -mx32), powerpc (-m64, -m32) etc.
>>
>> While this looks like a bug in GCC, is there a reason we need to pass
>> -mmusl flag?
>
> I'd imagine its telling gcc to link against the musl libc rather than
> the glibc one. Certainly, the order of the options shouldn't hang gcc,
> in fact gcc shouldn't ever hang due to the options passed so this
> sounds like a gcc bug.
>
> I've cc'd Khem who knows more about the musl patches.
>
> Cheers,
>
> Richard
>
>

