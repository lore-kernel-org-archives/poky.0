Return-Path: <jonathan.richardson@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02066E00BAF; Fri, 12 Apr 2019 13:35:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
	[209.85.166.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B3F8E00754
	for <poky@yoctoproject.org>; Fri, 12 Apr 2019 13:35:38 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id x7so9666115ioh.4
	for <poky@yoctoproject.org>; Fri, 12 Apr 2019 13:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=from:mime-version:thread-index:date:message-id:subject:to;
	bh=MmSFkMcrhMLw7INbge+t6ywQe5iO5YFGx6VIOMo6OwI=;
	b=NeaMu74+jdTk7cj6OniBlXQdTicLToci+KC/D2mMjiG8eMeJKsRqRzvKwW6QKwIDWt
	Rm7g+U4oGuCEbkDIBLtU1DOYT0vTv/9obCNTgM/EmO5FF9hF2yuUI2ZF4Ip2eYMmqNr0
	5ky4d31SQq11d59ZTY7i26v/tBAZlI362bM84=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:thread-index:date:message-id
	:subject:to;
	bh=MmSFkMcrhMLw7INbge+t6ywQe5iO5YFGx6VIOMo6OwI=;
	b=uAh62ryLBQaZKDxZU0lUd8WbEat22AJQ7UuIEEKgOgrw1N0omwXIe06n0XU0+c59WJ
	LZ9WcyhBe8dgcldufd+qhEVNmHW6afY8Mm8JPMs/KcAdjV+YyQpy3SfRlIDEPe2qzXiw
	H5GOozyTcStIXK39A+QAA7M1JIlISmx59FNpfMG7eZEoNI6/qg7LFrDy+NKUW0QiE+Lw
	2BDmVbe5W11Daaljsp6OpWKXc2K65uwJ/e5Z39iqYV+o5MkkAuYtPUAxVjqzrFdahW9J
	Pu2AlaUQx+QZMGPbnX8vwTwjxA75V/Ntx0Z1N/ryCSPO0PFE+3Z8fFbhqwOAfYr6mVzs
	y2vg==
X-Gm-Message-State: APjAAAW85wor5th7qOOIAHZqGrNKs1UsKCXNC38/nIThUgxz9WdEGMkh
	o3Xe26E8Nm0szKgHc/85HVm09x49LLi7wirC1sPh1VIs
X-Google-Smtp-Source: APXvYqxzgEoXCcDH5VwEvcfOyvl8nB9YlL3fhbahu1KC1r/46gErGPRjSqn/qpRC8DsgvYAJGEt1sBQJq4yGSMwINe4=
X-Received: by 2002:a6b:6e0f:: with SMTP id d15mr5389679ioh.111.1555101337836; 
	Fri, 12 Apr 2019 13:35:37 -0700 (PDT)
From: Jonathan Richardson <jonathan.richardson@broadcom.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdTxbu72Vv7X01QZT7Cip9gsQPBS5g==
Date: Fri, 12 Apr 2019 13:35:36 -0700
Message-ID: <8c6201f9a7d14b56c3129fa9b0c80d44@mail.gmail.com>
To: poky@yoctoproject.org
Subject: libc configuration of multilib config
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
X-List-Received-Date: Fri, 12 Apr 2019 20:35:39 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

We have a cortex-A72 tuning defined as our default tuning based on armv8.
We also have some bare metal code that runs on a cortex M0. Yocto allows
you to set a default tune for that multilib config so we call it softfp
but it's an armv6 architecture with soft floating point:

MULTILIB_GLOBAL_VARIANTS += "softfp"
MULTILIBS += "multilib:softfp"
DEFAULTTUNE_virtclass-multilib-softfp = "armv6t-novfp"

Since we only have 1 recipe for code running on that processor (the SOC
contains armv8 and an M0) we compile it as softp-recipe_name, add it to
EXTRA_IMAGEDEPENDS along with other bootloaders and have everything in the
same deploy/machine when we create our image.

Now we want to use newlib instead of glibc for the softfp multilib config
only. I don't see a way of configuring this. At this point should we put
it in a different MACHINE? Are there any guidelines on when to use
multilib and when to put it in a new machine?

Thanks.

