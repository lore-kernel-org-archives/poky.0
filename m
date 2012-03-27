Return-Path: <Andreas.Zoufal@ait.ac.at>
Received: from mail.ait.ac.at (arcss01.ait.ac.at [62.218.164.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAE72E0137D
	for <poky@yoctoproject.org>; Tue, 27 Mar 2012 01:13:17 -0700 (PDT)
Received: from [172.20.31.175] (172.20.31.175) by S0HCN2.arc.local
	(172.30.249.20) with Microsoft SMTP Server (TLS) id 8.3.213.0;
	Tue, 27 Mar 2012 10:13:16 +0200
Message-ID: <4F71769C.9020307@ait.ac.at>
Date: Tue, 27 Mar 2012 10:13:16 +0200
From: Andreas Zoufal <andreas.zoufal@ait.ac.at>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.28) Gecko/20120313 Thunderbird/3.1.20
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
References: <9F69795E29C890408AC2DAF646C89BB379D69623E5@MAILBOX.arc.local>
	<CAMKF1sqHunoqyc_qodHKGqV-fFyYevpOs9nHma+cfZXSZ91+Cg@mail.gmail.com>
In-Reply-To: <CAMKF1sqHunoqyc_qodHKGqV-fFyYevpOs9nHma+cfZXSZ91+Cg@mail.gmail.com>
Subject: Re: gcc -print-file-name option without path?
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
X-List-Received-Date: Tue, 27 Mar 2012 08:13:18 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

I can only say that this part of the Makefile, here is the grep output:
./arch/arm/boot/compressed/Makefile:    $(shell $(CC) $(KBUILD_CFLAGS) 
--print-libgcc-file-name) -T
We use the TI PSP.03.XX.00.37 Kernel. I checked the source code for the 
current stable kernel release, the usage of '-print-libgcc-file-name' 
vanished for the ARM architecture, but is still used for some others.

On 03/26/2012 11:44 PM, Khem Raj wrote:
> On Mon, Mar 26, 2012 at 8:57 AM, Zoufal Andreas
> <Andreas.Zoufal@ait.ac.at>  wrote:
>> Hello,
>> We am starting to use the Yocto/Poky toolchain as replacement for ELDK5. Trying to compile our existing kernel fails, but it worked fine with ELDK5. Doing some investigation we recognized a different behavior which I guess is the reason for the problem: using the cross compiler to show the path of the libgcc.a with the option "-print-libgcc-file-name" doesn't show the full path, only the filename itself! But ELDK5 does.
>> I'm using poky-1.2_M3.final for arm, and the build folder is in my home directory, like:
>> /home/user/path/to/project/poky/build/tmp/sysroots   ...and so on
>> Am I doing something wrong? gcc --help says that the -print-file-name should return the full path, which is even not true.
>> Kind regards, Andi
>
> while the problem is not passing --sysroot option I wonder why do you query for
> libgcc when you are building kernel ? kernel should not need libgcc as
> it provides any function needed from libgcc in a library of its own.
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky


