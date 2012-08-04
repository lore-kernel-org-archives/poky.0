Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53A32E01454
	for <poky@yoctoproject.org>; Sat,  4 Aug 2012 14:15:33 -0700 (PDT)
Received: by eaab14 with SMTP id b14so531211eaa.35
	for <poky@yoctoproject.org>; Sat, 04 Aug 2012 14:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=rsnlApzQkXyEFs+QV1vl5YxizZOq1tr2rpHP27ytJ8c=;
	b=Q1Sr4GkIktnDWSZjYUbLwGczieRLNafozMwTrMIz4aJTpmZxM1lbCXr3gVAZl4YGKo
	QI5QupY4LgpnxiWlqzIk8TtOk5FV1N6WJusRKvN9grZK23OpRyQA03rmA2T4dgK++V5Q
	waqOvcwg3KWW5gr/x5h4tNve2p+G8tZbAN0Vvhjyt6OVfohsCrLGikYsf3X4smCShjB7
	McbZUXmJJIg03icQjdyw7an2hkU4dzlZBR9me57c5vD0VTj9c/66Om3E5SY/GS+LWCpr
	RwkH9sNkSZJRMHWCYfPuOXS4qwvZQ/h8YiRD61pxp74OKHoXKhtkrV81AQvJphUwiw7a
	u0mQ==
Received: by 10.14.180.67 with SMTP id i43mr7257523eem.23.1344114933023; Sat,
	04 Aug 2012 14:15:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.97.141 with HTTP; Sat, 4 Aug 2012 14:15:02 -0700 (PDT)
In-Reply-To: <CAMKF1spxaMS60nL4erLK1JaxHOJZOBhsuabs1V3O91mCfgU83Q@mail.gmail.com>
References: <CAMKF1spxaMS60nL4erLK1JaxHOJZOBhsuabs1V3O91mCfgU83Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 4 Aug 2012 14:15:02 -0700
Message-ID: <CAMKF1soaei9wyzPH60HnyA8RVafYXNoyghi_j=sBWiCM9mk+uw@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Re: llvm build regression caused by [71cc9de357484c469cc3a46f013b11c84c924aa0] bitbake: Fix script location after mishandled merge
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
X-List-Received-Date: Sat, 04 Aug 2012 21:15:34 -0000
Content-Type: text/plain; charset=UTF-8

Actually I pasted wrong commit

Problem is due to


commit 9df0a20d9562322162676ed2606bf4b0a1bd6726
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Fri Aug 3 10:24:32 2012 +0100

    bitbake: data_smart: Fix unanchored regexp causing strange parsing issue

    If this regular expression is unanchored, it would accept strings like:

    do_install_append1
    do_install_appendsomelongstring

    and treat them like they were do_install_append. Clearly this
isn't desirable.
    Only one instance of this type of issue was found in OE-Core and
has been fixed
    so correcting the regexp should be safe to do.

    (Bitbake rev: 23bd5300b4a99218a15f4f6b0ab4091d63a602a5)

    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>


On Sat, Aug 4, 2012 at 1:15 PM, Khem Raj <raj.khem@gmail.com> wrote:
> Hi Richard
>
> I am seeing compile failure in llvm
>
> | ../../lib/libLLVMTransformUtils.so: undefined reference to
> `llvm::CallGraphNode::removeCallEdgeFor(llvm::CallSite)'
> | ../../lib/libLLVMTransformUtils.so: undefined reference to
> `llvm::CallGraph::getOrInsertFunction(llvm::Function const*)'
> | ../../lib/libLLVMTransformUtils.so: undefined reference to
> `llvm::CallGraphLinkVar'
> | ../../lib/libLLVMScalarOpts.so: undefined reference to
> `llvm::createInstructionCombiningPass()'
> | collect2: error: ld returned 1 exit status
> | make[2]: *** [bin/llc] Error 1
> | make[2]: Leaving directory
> `/work/yocto/poky/build/tmp/work/x86_64-poky-linux/llvm2.8-2.8-r2.1/llvm-2.8/build'
> | make[1]: *** [tools/llc/CMakeFiles/llc.dir/all] Error 2
> | make[1]: *** Waiting for unfinished jobs....
>
>
> which is actually weird since nothing changed there and it wasnt
> making much sense so I decided to bisect poky and it turns out to be
> this commit
>
>
>
> commit 71cc9de357484c469cc3a46f013b11c84c924aa0
> Author: Richard Purdie <richard.purdie@linuxfoundation.org>
> Date:   Fri Aug 3 09:04:07 2012 +0100
>
>     bitbake: Fix script location after mishandled merge
>
>     (Bitbake rev: 0f3293c2196a30bc52bf1eebfae87d8477880572)
>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

