Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80BDFE00CF4; Tue, 15 Jan 2019 02:34:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f180.google.com (mail-it1-f180.google.com
	[209.85.166.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70B57E00D1B
	for <poky@yoctoproject.org>; Tue, 15 Jan 2019 02:34:37 -0800 (PST)
Received: by mail-it1-f180.google.com with SMTP id w18so4270020ite.1
	for <poky@yoctoproject.org>; Tue, 15 Jan 2019 02:34:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=4qDuNXuLV7yMZOri9ZAsOIzrFxP2H7RZunmRdHRZioY=;
	b=hEs60z08qrFjMFDfXq93NJTS4Bft/pBdC/+85PHbMUkJ26owNDeKLY9Drywd07pGgB
	QyMsvEAK/dnsUXVZxZ+buVxDEFy54H2dB9m7ORmaxDQSXt3YMoI/trvkHDf2/qwxeeNu
	sBi1sk7rPA7jrEBmFB6qhvNNkzvixGEiPeZa7/iLNmq+uu3MGAUGPkOHD35wOUfyOc78
	+U+U6iT1dSJkotGPxecJ/u7zaPS4KBZ0iiKnFMVb6gbT3C/Gt8EFrJbnUPr+CIIJZgOa
	1JWVs3XtSOe3WrBc7/uhmq+ySJGToqCS3HSx7FJYtq5eA9amcOYcvjEif48AbTS08NQu
	sbqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=4qDuNXuLV7yMZOri9ZAsOIzrFxP2H7RZunmRdHRZioY=;
	b=qAc7l6dldxJbStZS0QDPEicMuSN8fmb7rVQJbGrOrbFiRWwM+9NFI21JMRYUQAXHdm
	1V7iGIYEY4MG5ByBiCIlfJ0zzp1joJ36CKl5x0RSw3AF/AGidb+5XuIp5gGXTjDzNRix
	GUrfwMwRwW8ZOTbiZuUui1oPOWML9jy6BBTxBmHk7RC9+woZZc4RlUWRPY2bzCZeLzvD
	AcpGPTvH24uux5W3h6Oa/OQp9NXqPSXTrPyL2yE0VF+HYWhcUKyA5CKdUpL2eUsLlpu0
	kwaRZ/1Y6PTpeWqElaZZAECVV+GbD1q8Loju2XJi6lE4eqwIKwF5ZG3Ze6/x8xm4/l7k
	1iLQ==
X-Gm-Message-State: AJcUukd80MXVHbuUhz/yiebrLDTesHLSjUnFJnus0de6/1qrgA362ha/
	mNZSJS9e4tgD3WOqZzQ3MuzR3I6A1i+hhPV+umWZ/Q==
X-Google-Smtp-Source: ALg8bN5jjb4iLyGa7qvFzLbwZkVAXJzoWID3BPVOeq+qlzTgJN/xZyeuhBC6Ulx2002WdfvBclFED+17tMWTr32gyso=
X-Received: by 2002:a24:c601:: with SMTP id j1mr2282008itg.130.1547548477041; 
	Tue, 15 Jan 2019 02:34:37 -0800 (PST)
MIME-Version: 1.0
References: <CAFsTbWeONMCr4grfkWvG5A2EqP11ZMOwvnwOTmWF-fXCsc4r4w@mail.gmail.com>
In-Reply-To: <CAFsTbWeONMCr4grfkWvG5A2EqP11ZMOwvnwOTmWF-fXCsc4r4w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 15 Jan 2019 10:34:26 +0000
Message-ID: <CAJTo0LYW=Sj_2H+R9hUHrq3q1qaAj5FRAKAKsCAV+h-k0Hj95A@mail.gmail.com>
To: srinivasan <srinivasan.rns@gmail.com>
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
X-List-Received-Date: Tue, 15 Jan 2019 10:34:40 -0000
Content-Type: text/plain; charset="UTF-8"

You'll have to not install either connman or network manager.

Ross

On Tue, 15 Jan 2019 at 05:18, srinivasan <srinivasan.rns@gmail.com> wrote:
>
> Dear Yocto experts,
>
> I am seeing the below error when I am trying to integrate the
> "fsl-image-validation-imx.bb" into my custom yocto build and trigger
> the build using "bitbake custom-image-debug-imx8.bb", I somewhat feel
> networkmanager is conflicting with conman, could you please let me
> know how this issue can be resolved?
>
> I have attached the recipe files for your information
>
> Error:
>
> ERROR: custom-image-debug-imx8-1.0-r0 do_rootfs: Could not invoke dnf.
> Command '/home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/recipe-sysroot-native/usr/bin/dnf
> -y -c /home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/rootfs/etc/dnf/dnf.conf
> --setopt=reposdir=/home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/rootfs/etc/yum.repos.d
> --repofrompath=oe-repo,/home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/oe-rootfs-repo
> --installroot=/home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/rootfs
> --setopt=logdir=/home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/temp
> --nogpgcheck install alsa-server alsa-tools alsa-utils apt apt-repo
> bash basicquick bc binutils binutils-symlinks bmap-tools-git
> build-config bzip2 cmake coreutils crashme crda dfu-util diffutils dnf
> dnsmasq ethtool file libfreetype6 gdb gdbserver gettext git
> glibc-gconv-utf-32 gnupg libharfbuzz0 hidapi hostapd htop iperf3 iw
> kernel-dev kernel-devsrc kernel-modules ldd libasound liberation-fonts
> libfftw libfftwf libjack libjpeg62 libpng16-16 libtool libxerces-c
> libsensors4 lmsensors-sensors lsof lttng-modules make memtester
> merge-files nano networkmanager ni-isolcpus ninja openssl
> packagegroup-base-extended packagegroup-core-boot
> packagegroup-core-full-cmdline packagegroup-core-sdk
> packagegroup-core-ssh-dropbear packagegroup-core-standalone-sdk-target
> packagegroup-core-tools-debug packagegroup-core-tools-profile
> packagegroup-core-tools-testapps packagegroup-fsl-optee-imx
> packagegroup-fsl-tools-audio packagegroup-fsl-tools-gpu-external
> packagegroup-tools-bluetooth pbzip2 pciutils perf pkgconfig procps
> psplash python python-dbus python-modules python-pandas python-pip
> python3 python3-dbus python3-misc python3-modules python3-pip
> python3-psutil python3-robotframework python3-six qt3d qt3d-dev
> qt3d-mkspecs qtbase qtbase-dev qtbase-mkspecs qtbase-plugins
> qtbase-tools libqt5charts5 libqt5charts-dev libqt5charts-mkspecs
> qtconnectivity-dev qtconnectivity-mkspecs qtdeclarative
> qtdeclarative-dev qtdeclarative-mkspecs qtgraphicaleffects
> qtgraphicaleffects-dev qtquickcontrols qtquickcontrols-dev
> qtquickcontrols-qmlplugins qtquickcontrols2 qtquickcontrols2-dev
> qtquickcontrols2-mkspecs libqt5svg5 libqt5svg-dev libqt5svg-mkspecs
> rpm rt-tests rtirq run-postinsts screen ssh-keys-server strace stress
> sysstat tar tmux trace-cmd ttf-bitstream-vera udev udev-automount
> unzip usbreset usbutils util-linux valgrind wget wireless-tools
> wpa-supplicant zip libz1 locale-base-en-us' returned 1:
> Added oe-repo repo from
> /home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/oe-rootfs-repo
> Last metadata expiration check: 0:00:00 ago on Mon 14 Jan 2019 04:06:18 PM UTC.
> Error:
>  Problem: package connman-tools-1.35-r0.aarch64 requires connman, but
> none of the providers can be installed
>   - package packagegroup-core-tools-testapps-1.0-r2.imx8mmevk requires
> connman-tools, but none of the providers can be installed
>   - package networkmanager-1.10.6-r0.aarch64 conflicts with connman
> provided by connman-1.35-r0.aarch64
>   - conflicting requests
> (try to add '--allowerasing' to command line to replace conflicting
> packages or '--skip-broken' to skip uninstallable packages)
>
> ERROR: custom-image-debug-imx8-1.0-r0 do_rootfs: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
> /home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/temp/log.do_rootfs.56617
> ERROR: Task (/home/user/test/os/sources/meta-custom-imx8/recipes-core/images/custom-image-debug-imx8.bb:do_rootfs)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 8016 tasks of which 7974 didn't need to
> be rerun and 1 failed.
>
> Many Thanks in advance,
> --
> _______________________________________________
> meta-intel mailing list
> meta-intel@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/meta-intel

