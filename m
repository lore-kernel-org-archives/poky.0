Return-Path: <srinivasan.rns@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A5E8E00C6D; Wed, 16 Jan 2019 21:19:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srinivasan.rns[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
	[209.85.167.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFDE1E00C46;
	Wed, 16 Jan 2019 21:19:49 -0800 (PST)
Received: by mail-oi1-f181.google.com with SMTP id w13so5187865oiw.9;
	Wed, 16 Jan 2019 21:19:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=qDM9Xal/lVg5S6EnP8CVCBG5l/x6dm8tujFCLcWYCcM=;
	b=TwYh8akSsB3CGbQBsSq+XY4XSJN8ntyiqjwKlJtO0Xcd2pAUip8wgFnx5PTU98gFyJ
	7f19ATvoLK9GD5wwxNG/se5Sj323vbAPgYDrDAlrok6yVlLBFC7OY44xjchdhBAt9Ptv
	R1ciY066gHLy8P1OwqLeaZ7aYAajE+GEdUcDNir6qrzOsf1uRsnZyCqBEjkngjfNHFkM
	Vca6GqcwOlUJYBi59o7jhjPPIoWHaZ39m4z62RXKxtaq664gKmSf5sEmKgZFxhe6Lznw
	q4ly6TwRz8EXNLzp/bnehV8xJyq0A7FQKFpl2dCrpCfpS9IvTRLVvelV1jh/fPRjnOFw
	PQew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=qDM9Xal/lVg5S6EnP8CVCBG5l/x6dm8tujFCLcWYCcM=;
	b=B2NdQCVNg1dwYnsy4HDa5SYr0Eib8ccsnjzIDwiVonw3vns0JTIGGADLAPOQuIwNpT
	HYBfrbs+f//8RXbNoVgeL7LooJFP4EpvGpNPVewUE8CQPhTIc8LyBBwbgC2HgnrwXsfG
	Yb/ZzY3vPTszEB+BuAv0B+FogwTv28NGdrkwKcA0/+NU/sNNQKGyWTiIigSK6hVcf+gH
	YQDMDysVAb8oHesCyrUa9oKKLEdEgQxGWLxsZ6hifQhSzNNZCzlv2sgjAfGxTubtdzU4
	BCrzV3XeWepZlW/PGY0xl9ufHluqy+PRW3d5OfS4rpU84eKhbSri04lk52y2TZL5UzE2
	Oghw==
X-Gm-Message-State: AJcUukfI4oWZWJjNQYSGmlQZRu3+fHQAxDOHbVBIGT0Ba5rMKEVPVOcm
	oS1X6MR1zqoqqSdNrvRALY5EM1qlG+H3Y2jedFs=
X-Google-Smtp-Source: ALg8bN4zmtVoUyuZpxFYHwC9KNhYaulKss03NHfBiQRg49+QbNw/1/hYpUTZPWTtMa4MuyUP0IOsk1fBFfE9kP1I9RE=
X-Received: by 2002:aca:a11:: with SMTP id 17mr4288188oik.15.1547702388786;
	Wed, 16 Jan 2019 21:19:48 -0800 (PST)
MIME-Version: 1.0
References: <CAFsTbWeONMCr4grfkWvG5A2EqP11ZMOwvnwOTmWF-fXCsc4r4w@mail.gmail.com>
	<CAJTo0LYW=Sj_2H+R9hUHrq3q1qaAj5FRAKAKsCAV+h-k0Hj95A@mail.gmail.com>
In-Reply-To: <CAJTo0LYW=Sj_2H+R9hUHrq3q1qaAj5FRAKAKsCAV+h-k0Hj95A@mail.gmail.com>
From: srinivasan <srinivasan.rns@gmail.com>
Date: Thu, 17 Jan 2019 06:19:36 +0100
Message-ID: <CAFsTbWfBRCZFP+pDsoB=jNPaFTDoQRLjGJc2gSEeh982G1rGZw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailman-Approved-At: Sat, 19 Jan 2019 10:25:18 -0800
Cc: yocto-bsp@yoctoproject.org,
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>, yocto-infrastructure@yoctoproject.org,
	yocto-builds@yoctoproject.org, Yocto-mailing-list <yocto@yoctoproject.org>,
	meta-freescale-request@yoctoproject.org, meta-intel@yoctoproject.org,
	meta-freescale Mailing List <meta-freescale@yoctoproject.org>,
	Poky Project <poky@yoctoproject.org>
Subject: Re: [meta-intel] ERROR: - package networkmanager-1.10.6-r0.aarch64 conflicts with connman provided by connman-1.35-r0.aarch64
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
X-List-Received-Date: Thu, 17 Jan 2019 05:19:51 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks a ton Ross, your inputs really worked :)

On Tue, Jan 15, 2019 at 11:34 AM Burton, Ross <ross.burton@intel.com> wrote:
>
> You'll have to not install either connman or network manager.
>
> Ross
>
> On Tue, 15 Jan 2019 at 05:18, srinivasan <srinivasan.rns@gmail.com> wrote:
> >
> > Dear Yocto experts,
> >
> > I am seeing the below error when I am trying to integrate the
> > "fsl-image-validation-imx.bb" into my custom yocto build and trigger
> > the build using "bitbake custom-image-debug-imx8.bb", I somewhat feel
> > networkmanager is conflicting with conman, could you please let me
> > know how this issue can be resolved?
> >
> > I have attached the recipe files for your information
> >
> > Error:
> >
> > ERROR: custom-image-debug-imx8-1.0-r0 do_rootfs: Could not invoke dnf.
> > Command '/home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/recipe-sysroot-native/usr/bin/dnf
> > -y -c /home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/rootfs/etc/dnf/dnf.conf
> > --setopt=reposdir=/home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/rootfs/etc/yum.repos.d
> > --repofrompath=oe-repo,/home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/oe-rootfs-repo
> > --installroot=/home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/rootfs
> > --setopt=logdir=/home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/temp
> > --nogpgcheck install alsa-server alsa-tools alsa-utils apt apt-repo
> > bash basicquick bc binutils binutils-symlinks bmap-tools-git
> > build-config bzip2 cmake coreutils crashme crda dfu-util diffutils dnf
> > dnsmasq ethtool file libfreetype6 gdb gdbserver gettext git
> > glibc-gconv-utf-32 gnupg libharfbuzz0 hidapi hostapd htop iperf3 iw
> > kernel-dev kernel-devsrc kernel-modules ldd libasound liberation-fonts
> > libfftw libfftwf libjack libjpeg62 libpng16-16 libtool libxerces-c
> > libsensors4 lmsensors-sensors lsof lttng-modules make memtester
> > merge-files nano networkmanager ni-isolcpus ninja openssl
> > packagegroup-base-extended packagegroup-core-boot
> > packagegroup-core-full-cmdline packagegroup-core-sdk
> > packagegroup-core-ssh-dropbear packagegroup-core-standalone-sdk-target
> > packagegroup-core-tools-debug packagegroup-core-tools-profile
> > packagegroup-core-tools-testapps packagegroup-fsl-optee-imx
> > packagegroup-fsl-tools-audio packagegroup-fsl-tools-gpu-external
> > packagegroup-tools-bluetooth pbzip2 pciutils perf pkgconfig procps
> > psplash python python-dbus python-modules python-pandas python-pip
> > python3 python3-dbus python3-misc python3-modules python3-pip
> > python3-psutil python3-robotframework python3-six qt3d qt3d-dev
> > qt3d-mkspecs qtbase qtbase-dev qtbase-mkspecs qtbase-plugins
> > qtbase-tools libqt5charts5 libqt5charts-dev libqt5charts-mkspecs
> > qtconnectivity-dev qtconnectivity-mkspecs qtdeclarative
> > qtdeclarative-dev qtdeclarative-mkspecs qtgraphicaleffects
> > qtgraphicaleffects-dev qtquickcontrols qtquickcontrols-dev
> > qtquickcontrols-qmlplugins qtquickcontrols2 qtquickcontrols2-dev
> > qtquickcontrols2-mkspecs libqt5svg5 libqt5svg-dev libqt5svg-mkspecs
> > rpm rt-tests rtirq run-postinsts screen ssh-keys-server strace stress
> > sysstat tar tmux trace-cmd ttf-bitstream-vera udev udev-automount
> > unzip usbreset usbutils util-linux valgrind wget wireless-tools
> > wpa-supplicant zip libz1 locale-base-en-us' returned 1:
> > Added oe-repo repo from
> > /home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/oe-rootfs-repo
> > Last metadata expiration check: 0:00:00 ago on Mon 14 Jan 2019 04:06:18 PM UTC.
> > Error:
> >  Problem: package connman-tools-1.35-r0.aarch64 requires connman, but
> > none of the providers can be installed
> >   - package packagegroup-core-tools-testapps-1.0-r2.imx8mmevk requires
> > connman-tools, but none of the providers can be installed
> >   - package networkmanager-1.10.6-r0.aarch64 conflicts with connman
> > provided by connman-1.35-r0.aarch64
> >   - conflicting requests
> > (try to add '--allowerasing' to command line to replace conflicting
> > packages or '--skip-broken' to skip uninstallable packages)
> >
> > ERROR: custom-image-debug-imx8-1.0-r0 do_rootfs: Function failed: do_rootfs
> > ERROR: Logfile of failure stored in:
> > /home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/temp/log.do_rootfs.56617
> > ERROR: Task (/home/user/test/os/sources/meta-custom-imx8/recipes-core/images/custom-image-debug-imx8.bb:do_rootfs)
> > failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 8016 tasks of which 7974 didn't need to
> > be rerun and 1 failed.
> >
> > Many Thanks in advance,
> > --
> > _______________________________________________
> > meta-intel mailing list
> > meta-intel@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/meta-intel

