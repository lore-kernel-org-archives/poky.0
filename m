Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0429E01454
	for <poky@yoctoproject.org>; Sat,  4 Aug 2012 13:15:42 -0700 (PDT)
Received: by eaab14 with SMTP id b14so524777eaa.35
	for <poky@yoctoproject.org>; Sat, 04 Aug 2012 13:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc:content-type;
	bh=tO5qNNA+dADJXamJNSApTY8HFfTAvI7ooq3Y8wOTnHE=;
	b=U3l3jjlTF/UmIWwU14fDWtMnTq0wuxUtE/RKyWc8LN3UVGGQtBHyJZ1IwnI9moNwR0
	kkwPhlrFRHYG7yFKRGZyhOTQusXDNPKj0vRLYexiOB7RE7ggVoZ3b1z0zbuX3LPqVbm1
	h+WmoyL5VmdEYS69bg/61DMpNPH9Ks7QH9EuZB64bx27lpxDNDYQj12/oKF5eMTU9zwx
	hrY8eUNUkBVqIzN7a63iKyEdWwjailtBsxwdJSSExzuAGnLe37EN93gf5OMoH8lh037j
	mhUCAVpd9e5UWHRFUEVSTON/Yhn0y31B5YxJ3hpl+XnE9fq5qkIjmRGCUU79XBuQ0tMt
	tSJA==
Received: by 10.14.175.7 with SMTP id y7mr7041071eel.29.1344111341803; Sat, 04
	Aug 2012 13:15:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.97.141 with HTTP; Sat, 4 Aug 2012 13:15:11 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 4 Aug 2012 13:15:11 -0700
Message-ID: <CAMKF1spxaMS60nL4erLK1JaxHOJZOBhsuabs1V3O91mCfgU83Q@mail.gmail.com>
To: poky@yoctoproject.org
Subject: llvm build regression caused by [71cc9de357484c469cc3a46f013b11c84c924aa0] bitbake: Fix script location after mishandled merge
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
X-List-Received-Date: Sat, 04 Aug 2012 20:15:43 -0000
Content-Type: text/plain; charset=UTF-8

Hi Richard

I am seeing compile failure in llvm

| ../../lib/libLLVMTransformUtils.so: undefined reference to
`llvm::CallGraphNode::removeCallEdgeFor(llvm::CallSite)'
| ../../lib/libLLVMTransformUtils.so: undefined reference to
`llvm::CallGraph::getOrInsertFunction(llvm::Function const*)'
| ../../lib/libLLVMTransformUtils.so: undefined reference to
`llvm::CallGraphLinkVar'
| ../../lib/libLLVMScalarOpts.so: undefined reference to
`llvm::createInstructionCombiningPass()'
| collect2: error: ld returned 1 exit status
| make[2]: *** [bin/llc] Error 1
| make[2]: Leaving directory
`/work/yocto/poky/build/tmp/work/x86_64-poky-linux/llvm2.8-2.8-r2.1/llvm-2.8/build'
| make[1]: *** [tools/llc/CMakeFiles/llc.dir/all] Error 2
| make[1]: *** Waiting for unfinished jobs....


which is actually weird since nothing changed there and it wasnt
making much sense so I decided to bisect poky and it turns out to be
this commit



commit 71cc9de357484c469cc3a46f013b11c84c924aa0
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Fri Aug 3 09:04:07 2012 +0100

    bitbake: Fix script location after mishandled merge

    (Bitbake rev: 0f3293c2196a30bc52bf1eebfae87d8477880572)

    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

