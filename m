Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20BD1E00DD9; Fri, 19 Jul 2019 14:36:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 957E9E00DAF
	for <poky@yoctoproject.org>; Fri, 19 Jul 2019 14:36:06 -0700 (PDT)
Received: by mail-io1-f67.google.com with SMTP id j6so29102851ioa.5
	for <poky@yoctoproject.org>; Fri, 19 Jul 2019 14:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=8Sb2Gr7vqC1OPewjeEPV8NGCIA9jDWAcxTD/nU0zc7A=;
	b=HYexsI+AXYN4liYh6VEwxdEuZIST5kSchBUBiyQrzuqgyfQj1aEm/+/JYV9BGdbAoi
	WID3ovpMhfhHfVaKH1iZ1zvhseSdVujTTQxLZHaqpc3JsvFu0oHTaWgXQgksUOMz2oPd
	C55/KDxDLOYhnYdptPIgS6/SKdYYOTR6jTzGS17wzapMRs7zL7CCxi9+55Y2312eNAGi
	rxncMntQl7kJ6H6vf+o7Kh/C7EOXDwNL17DNapxKMRbJMtG9h/sZz6ZHJ1yAW3boD26Y
	ItFTOEf4WzaB/NW3IS7sROGaqNfdEMa/qo6s8zkX6I8b2XVRd5k3HgfE2T/j3hlFHFle
	U71Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=8Sb2Gr7vqC1OPewjeEPV8NGCIA9jDWAcxTD/nU0zc7A=;
	b=aw48tJnnGQPYAlXWze7RFLEOrN7RI5hc4VFHK+rlzWNzZ95qIEdPqn9I1HOAjmu95z
	bxwzzfskxIk+4rPwDICSo9/mwwL7wgNvMqJec1KpldvZkJ0x0f6no/BOoAsuXtsM0ddG
	mWEFZJNvjDAcOeppbs/ymA6GwqEVUcflR2bTps1qiG8XLc2pMaOkyYpcApExxjXKlWZQ
	DFsMaBRSlJ+C7tgRTqwtxzQa8fyWxxXhjDnprVCFWE1j6l4TzuG19RTFuHHF4oWF02kI
	aFGDF8PCxilErUxiTKDj5b0McMVs2DsnU4YQVR1DJbbYbx5Ka06dv5sY66Y+t+0uilNs
	P1tw==
X-Gm-Message-State: APjAAAU3u/tLU7tcgrwL+1e0YHh0/CLtahrqG1rE2YX+JnMqtKCQjiRu
	S/3hXDvsW0mSab8z/ZmNdjW597y1yKvSd82yqUb/Dg==
X-Google-Smtp-Source: APXvYqwK8GjYN28Qyl4AMHbRxWH1Z/ZIrEcMzccKrh5QaDfZE3o5V79VHng3Q71ldBkmrz4OuaNhQ5oFQi4NBenPt6o=
X-Received: by 2002:a5e:c744:: with SMTP id g4mr49669648iop.187.1563572165949; 
	Fri, 19 Jul 2019 14:36:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190704134520.16320-1-kai.kang@windriver.com>
	<20190704134520.16320-2-kai.kang@windriver.com>
In-Reply-To: <20190704134520.16320-2-kai.kang@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 19 Jul 2019 22:35:54 +0100
Message-ID: <CAJTo0LbmYp-70L=Z_T0jE4xS1mR_vLXKQE18O_EpeEwD6wdroA@mail.gmail.com>
To: Kang Kai <kai.kang@windriver.com>
Cc: Poky Project <poky@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [oe-core][PATCH 1/2] defaultsetup.conf: enable select init manager
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
X-List-Received-Date: Fri, 19 Jul 2019 21:36:07 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 4 Jul 2019 at 15:40, <kai.kang@windriver.com> wrote:
> +++ b/meta/conf/distro/include/init-manager-systemd.inc
> @@ -0,0 +1,6 @@
> +# Use systemd for system initialization
> +DISTRO_FEATURES_append = " systemd"
> +DISTRO_FEATURES_BACKFILL_CONSIDERED_append = " sysvinit"
> +VIRTUAL-RUNTIME_init_manager = "systemd"
> +VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"
> +VIRTUAL-RUNTIME_login_manager = "shadow-base"
> diff --git a/meta/conf/distro/include/init-manager-sysvinit.inc b/meta/conf/distro/include/init-manager-sysvinit.inc
> new file mode 100644
> index 0000000000..7725b30e1e
> --- /dev/null
> +++ b/meta/conf/distro/include/init-manager-sysvinit.inc
> @@ -0,0 +1,6 @@
> +# Use sysvinit for system initialization
> +DISTRO_FEATURES_append = " sysvinit"
> +DISTRO_FEATURES_BACKFILL_CONSIDERED_append = " systemd"
> +VIRTUAL-RUNTIME_init_manager = "sysvinit"
> +VIRTUAL-RUNTIME_initscripts = "initscripts"
> +VIRTUAL-RUNTIME_login_manager = "busybox"

Back when I integrated systemd into oe-core one of the use cases was a
single distro that builds a main image using systemd, and a
rescue/update image using sysv/busybox.  How is this possible with
this system?

Personally, I'd prefer to see the DISTRO_FEATURE wrangling left out of
those files, and let the user ensure the right features are set.
After all, systemd will refuse to build unless the systemd feature is
enabled.

Ross

