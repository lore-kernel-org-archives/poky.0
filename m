Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBD7DE006B5; Tue, 22 Jul 2014 06:29:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qg0-f54.google.com (mail-qg0-f54.google.com
	[209.85.192.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B145BE0054C
	for <poky@yoctoproject.org>; Tue, 22 Jul 2014 06:29:16 -0700 (PDT)
Received: by mail-qg0-f54.google.com with SMTP id z60so6982179qgd.27
	for <poky@yoctoproject.org>; Tue, 22 Jul 2014 06:29:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=NTwh8QLcARWs1fva1RU7CQRbeCm5eoyDFAmPD1RMb58=;
	b=DnhpPRbqmvpqKWn9Uql0MJxlLgFfEOD0SQ6ZWZhgqnUIsqw8qpq3xzLgqZ3G7V2DMH
	kps4lrSos+OEF9f4kmaetuJTyGDdZgLKL6E4V9UkyJuroqRCCbpuCZ3DMIKoOLTmT5T6
	ipmFk2J73P8p/34gHLPvPoSwLpGKLq+ekKd6fbMnJro0RfTYxUzB6wLqX0YvzCXhBrAM
	5F3Wme6fjw/EpS9FW3Hvcu/+Trz79HUWgRgRXsi/KJThBBnDQB3LRwY62GLT/zzWkv5T
	cUOGc8yTVCoWjtLOSgxvh0e8H8OfVZdXuq5eMuiEB8YEKwsisWJaP4da54q7UruE1Ldo
	lPGw==
X-Gm-Message-State: ALoCoQmxj15ECPZygx7luwgeNtiP12ISjvs2psXSc8k+krXoJKVL268kjwkR9GisIVNstkBCvyml
X-Received: by 10.224.120.68 with SMTP id c4mr55785252qar.17.1406035756046;
	Tue, 22 Jul 2014 06:29:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.99 with HTTP; Tue, 22 Jul 2014 06:28:54 -0700 (PDT)
In-Reply-To: <53CE6626.70304@windriver.com>
References: <cover.1406024955.git.liezhi.yang@windriver.com>
	<8f203e49c4ecfc92eb09b175707f8dd7a6f0b546.1406024955.git.liezhi.yang@windriver.com>
	<CAJTo0La57nB9xrTNyo1vhQxea-CuC8di0pifYPVfy_rHc23MEw@mail.gmail.com>
	<53CE6626.70304@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 22 Jul 2014 14:28:54 +0100
Message-ID: <CAJTo0LbZ59C15pZF5tq23rsFEw4vfgk1htwmVPT3i3CVgi7hzA@mail.gmail.com>
To: Robert Yang <liezhi.yang@windriver.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 2/2] local.conf.sample: qemu-native DEPENDS libxext-naive
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
X-List-Received-Date: Tue, 22 Jul 2014 13:29:22 -0000
Content-Type: text/plain; charset=UTF-8

On 22 July 2014 14:24, Robert Yang <liezhi.yang@windriver.com> wrote:
> The link route is:
>
> qemu-native's do_configure sdl checking:
> /usr/lib/x86_64-linux-gnu/libSDL.so -->
> <sysroots>/x86_64-linux/usr/lib/libXext.so.6 -->
> /usr/lib/x86_64-linux-gnu/libX11.so
>
> So it is:
> host sdl -> sysroot libXext.so.6 -> host X11.so
>
> qemu-native doesn't depend on libxext-native, so the error would happen
> if the libx11-native is being rebuilding and the host's libX11.so doesn't
> have _XEatDataWords.
>
> Manually reproduce on Ubuntu 12.04 x86_64:
>
> $ bitbake qemu-native libx11-native libxext-native
> $ bitbake qemu-native libx11-native -ccleansstate && bitbake qemu-native

This is where I insert my moan that the sysroot needs to have locking
and not modified during builds...

Maybe qemu-native should have a wrapper script that removes the
sysroot from LD_LIBRARY_PATH?  It's a native binary that doesn't need
anything in the sysroot, so let's stop it even looking there.

Ross

