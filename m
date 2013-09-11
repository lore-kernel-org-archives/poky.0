Return-Path: <srifenbark@gmail.com>
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CE59E015AD
	for <poky@yoctoproject.org>; Wed, 11 Sep 2013 07:39:18 -0700 (PDT)
Received: by mail-ob0-f178.google.com with SMTP id ef5so8542460obb.37
	for <poky@yoctoproject.org>; Wed, 11 Sep 2013 07:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=XGEBqr764vHAim1YOK+U9Ty4LShRCeOJ2eBVYC0CwYY=;
	b=IPkUgIbgJWzFnmqFqGV+NtOxDOXwZIjyvD55poqJiOYBvZtKBzq/F3QrdUYp9NR2v6
	2gkpM5ZUfMLQu0JH0A+BjJtKZ3SjO4exM+4doIo/Bm0TLRxEdWI60mvOBQlv5sYJmZY9
	6Oz7S4CJcJsSAMEDwh7PFf55Yq9usIlRO2DsfGQqNPN1TxNIMlpwoDszadm5087DfQcn
	3yLjEfij7LPCMVJk4fiS+jcy5MwV0pZrHCPJf73mHuxcxtxIhw3Nu/wYzmQ7RwOzrZ1M
	Oj5hGx5VC8KQRpVXpvQeZiFAUjIosYDTLkmYTnd1SGagM5aYsRr1IF1+7ShvP1FXYjrA
	alZg==
MIME-Version: 1.0
X-Received: by 10.182.29.198 with SMTP id m6mr636692obh.105.1378910357689;
	Wed, 11 Sep 2013 07:39:17 -0700 (PDT)
Received: by 10.182.129.51 with HTTP; Wed, 11 Sep 2013 07:39:17 -0700 (PDT)
In-Reply-To: <CAJTo0LYcMKuFsw+GKFPfdt6dbgbpRjiOgLPARJGEvV5eJaUhmg@mail.gmail.com>
References: <1378906988-15025-1-git-send-email-ross.burton@intel.com>
	<CAOMwXhMuBKMnWXej2VJux7ev-5cZS1hwviOs+a-ra2mq+_a0mg@mail.gmail.com>
	<CAJTo0LYcMKuFsw+GKFPfdt6dbgbpRjiOgLPARJGEvV5eJaUhmg@mail.gmail.com>
Date: Wed, 11 Sep 2013 07:39:17 -0700
Message-ID: <CAFNP8OssYdzwZF3oHaMD594HZPWDukLphBaspo9B4sjpEYNvMw@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] bblayers.conf.sample: use ##OEROOT## instead of ##COREBASE##
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
X-List-Received-Date: Wed, 11 Sep 2013 14:39:19 -0000
Content-Type: text/plain; charset=ISO-8859-1

Patch applied and pushed to yocto-docs/master branch.

Thanks,
Scott

On Wed, Sep 11, 2013 at 7:06 AM, Burton, Ross <ross.burton@intel.com> wrote:
> On 11 September 2013 14:56, Laszlo Papp <lpapp@kde.org> wrote:
>> Do you have an url where this change is explained?
>
> commit 70a16efaa662a95646e82c88d3295986e1db416f
> Author: Ross Burton <ross.burton@intel.com>
> Date:   Mon Aug 12 11:41:49 2013 +0100
>
>     oe-setup-builddir: substitute ##OEROOT## when using templates
>
>     oe-setup-builddir substitutes ##COREBASE## which seems like it
> should have the
>     same value as the variable ${COREBASE}.  In reality it doesn't as
> ##COREBASE##
>     is substituted with the value of $OEROOT (the location of the
> oe-init-build-env
>     script), whereas ${COREBASE} is set by oe-core to the parent
> directory of meta/.
>     If oe-core's meta/ isn't a top-level directory then ##COREBASE##
> and ${COREBASE}
>     have different values, which can lead to confusion.
>
>     To resolve this, deprecate (but still substitute) ##COREBASE## and
> substitute
>      ##OEROOT# for $OEROOT.
>
>     (From OE-Core rev: 1890783928dd1c73105fae32fb6c588afc287ff6)
>
>     Signed-off-by: Ross Burton <ross.burton@intel.com>
>     Signed-off-by: Saul Wold <sgw@linux.intel.com>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

