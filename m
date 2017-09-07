Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F85CE00CC6; Thu,  7 Sep 2017 10:31:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CADAE00C62
	for <poky@yoctoproject.org>; Thu,  7 Sep 2017 10:31:36 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga104.jf.intel.com with ESMTP; 07 Sep 2017 10:31:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,359,1500966000"; 
	d="scan'208,217";a="1012089014"
Received: from pfigue1x-mobl.amr.corp.intel.com (HELO [10.252.248.94])
	([10.252.248.94])
	by orsmga003.jf.intel.com with ESMTP; 07 Sep 2017 10:31:35 -0700
To: "Burton, Ross" <ross.burton@intel.com>
References: <20170905220812.1852-1-alejandro.hernandez@linux.intel.com>
	<CAJTo0LYXvZRTHVp3bubbMK0r_dCwmYR4=a+tTZnaidw3NnDW2w@mail.gmail.com>
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
Message-ID: <237f6e19-0a30-6cb9-6c18-36193957bf7e@linux.intel.com>
Date: Thu, 7 Sep 2017 12:31:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYXvZRTHVp3bubbMK0r_dCwmYR4=a+tTZnaidw3NnDW2w@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] qemu conf: Fix kernel module autoloading for uvesafb on genericx86
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
X-List-Received-Date: Thu, 07 Sep 2017 17:31:38 -0000
Content-Type: multipart/alternative;
	boundary="------------D5A240BE3D04098D2D91002A"
Content-Language: en-US

--------------D5A240BE3D04098D2D91002A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hey Ross,


On 09/07/2017 11:19 AM, Burton, Ross wrote:
> I think this is causing the failures I'm seeing on the autobuilder 
> with generix86 machine:
>
> ERROR: linux-yocto-4.12.7+gitAUTOINC+42965d664f_d09f2ce584-r0 
> do_package: Please ensure module uvesafb is listed in 
> KERNEL_MODULE_PROBECONF since module_conf_uvesafb is set
>
> Ross

Yeah, seems likely, although it didn't happen when I was testing it, I 
didnt want to duplicate lines of code, and I thought moving these 2 
would be enough, but it looks like it wasnt, I'll send a v2 in a bit.

Thanks!

Alejandro
>
> On 5 September 2017 at 23:08, Alejandro Hernandez 
> <alejandro.hernandez@linux.intel.com 
> <mailto:alejandro.hernandez@linux.intel.com>> wrote:
>
>     After commit e8b1c653946ef921b65d47e52aea0dc530ef4286, we started
>     seeing
>     errors like the following during boot on genericx86 machines:
>
>     uvesafb: failed to execute /sbin/v86d
>     uvesafb: probe of uvesafb.0 failed with error -22
>     uvesafb: vbe_init() failed with -22
>     uvesafb: Getting VBE info block failed (eax=0x4f00, err=-2)
>
>     These were caused because the uvesa module was being loaded during
>     boot,
>     when it is only meant to be loaded on qemu according to:
>     6af89812e8a9931ffed63768ed85367519bf7aef
>
>     Since genericx86-common.inc includes qemuboot-x86, the module also
>     tries
>     to be loaded on genericx86 machines, this patch removes the
>     instruction from
>     qemuboot-x86 and adds it in specific to both qemux86 machines confs so
>     it is correctly loaded only on those.
>
>     [YOCTO #11879]
>
>     Signed-off-by: Alejandro Hernandez
>     <alejandro.hernandez@linux.intel.com
>     <mailto:alejandro.hernandez@linux.intel.com>>
>     ---
>      meta/conf/machine/include/qemuboot-x86.inc | 2 --
>      meta/conf/machine/qemux86-64.conf          | 3 +++
>      meta/conf/machine/qemux86.conf             | 3 +++
>      3 files changed, 6 insertions(+), 2 deletions(-)
>
>     diff --git a/meta/conf/machine/include/qemuboot-x86.inc
>     b/meta/conf/machine/include/qemuboot-x86.inc
>     index 0596e2ed3fb..100d0ccfd1f 100644
>     --- a/meta/conf/machine/include/qemuboot-x86.inc
>     +++ b/meta/conf/machine/include/qemuboot-x86.inc
>     @@ -14,7 +14,5 @@ QB_KERNEL_CMDLINE_APPEND = "vga=0
>     uvesafb.mode_option=${UVESA_MODE} oprofile.tim
>      # Add the 'virtio-rng-pci' device otherwise the guest may run out
>     of entropy
>      QB_OPT_APPEND = "-vga vmware -show-cursor -usb -device usb-tablet
>     -device virtio-rng-pci"
>
>     -KERNEL_MODULE_AUTOLOAD += "uvesafb"
>     -KERNEL_MODULE_PROBECONF += "uvesafb"
>      UVESA_MODE ?= "640x480-32"
>      module_conf_uvesafb = "options uvesafb mode_option=${UVESA_MODE}"
>     diff --git a/meta/conf/machine/qemux86-64.conf
>     b/meta/conf/machine/qemux86-64.conf
>     index ff6e5491bbc..a270d6698f3 100644
>     --- a/meta/conf/machine/qemux86-64.conf
>     +++ b/meta/conf/machine/qemux86-64.conf
>     @@ -29,5 +29,8 @@ MACHINE_FEATURES += "x86 pci"
>
>      MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "v86d"
>
>     +KERNEL_MODULE_AUTOLOAD += "uvesafb"
>     +KERNEL_MODULE_PROBECONF += "uvesafb"
>     +
>      WKS_FILE ?= "directdisk.wks"
>      do_image_wic[depends] += "syslinux:do_populate_sysroot
>     syslinux-native:do_populate_sysroot
>     mtools-native:do_populate_sysroot
>     dosfstools-native:do_populate_sysroot"
>     diff --git a/meta/conf/machine/qemux86.conf
>     b/meta/conf/machine/qemux86.conf
>     index f8b09c37f29..5c6539b95f3 100644
>     --- a/meta/conf/machine/qemux86.conf
>     +++ b/meta/conf/machine/qemux86.conf
>     @@ -28,5 +28,8 @@ MACHINE_FEATURES += "x86 pci"
>
>      MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "v86d"
>
>     +KERNEL_MODULE_AUTOLOAD += "uvesafb"
>     +KERNEL_MODULE_PROBECONF += "uvesafb"
>     +
>      WKS_FILE ?= "directdisk.wks"
>      do_image_wic[depends] += "syslinux:do_populate_sysroot
>     syslinux-native:do_populate_sysroot
>     mtools-native:do_populate_sysroot
>     dosfstools-native:do_populate_sysroot"
>     --
>     2.12.3
>
>     --
>     _______________________________________________
>     poky mailing list
>     poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/poky
>     <https://lists.yoctoproject.org/listinfo/poky>
>
>


--------------D5A240BE3D04098D2D91002A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hey Ross,<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 09/07/2017 11:19 AM, Burton, Ross
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJTo0LYXvZRTHVp3bubbMK0r_dCwmYR4=a+tTZnaidw3NnDW2w@mail.gmail.com">
      <div dir="ltr">I think this is causing the failures I'm seeing on
        the autobuilder with generix86 machine:<br>
        <br>
        ERROR: linux-yocto-4.12.7+gitAUTOINC+42965d664f_d09f2ce584-r0
        do_package: Please ensure module uvesafb is listed in
        KERNEL_MODULE_PROBECONF since module_conf_uvesafb is set
        <div><br>
        </div>
        <div>Ross</div>
      </div>
    </blockquote>
    <br>
    Yeah, seems likely, although it didn't happen when I was testing it,
    I didnt want to duplicate lines of code, and I thought moving these
    2 would be enough, but it looks like it wasnt, I'll send a v2 in a
    bit.<br>
    <br>
    Thanks!<br>
    <br>
    Alejandro<br>
    <blockquote type="cite"
cite="mid:CAJTo0LYXvZRTHVp3bubbMK0r_dCwmYR4=a+tTZnaidw3NnDW2w@mail.gmail.com">
      <div class="gmail_extra"><br>
        <div class="gmail_quote">On 5 September 2017 at 23:08, Alejandro
          Hernandez <span dir="ltr">&lt;<a
              href="mailto:alejandro.hernandez@linux.intel.com"
              target="_blank" moz-do-not-send="true">alejandro.hernandez@linux.intel.com</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">After
            commit e8b1c653946ef921b65d47e52aea0d<wbr>c530ef4286, we
            started seeing<br>
            errors like the following during boot on genericx86
            machines:<br>
            <br>
            uvesafb: failed to execute /sbin/v86d<br>
            uvesafb: probe of uvesafb.0 failed with error -22<br>
            uvesafb: vbe_init() failed with -22<br>
            uvesafb: Getting VBE info block failed (eax=0x4f00, err=-2)<br>
            <br>
            These were caused because the uvesa module was being loaded
            during boot,<br>
            when it is only meant to be loaded on qemu according to:<br>
            6af89812e8a9931ffed63768ed8536<wbr>7519bf7aef<br>
            <br>
            Since genericx86-common.inc includes qemuboot-x86, the
            module also tries<br>
            to be loaded on genericx86 machines, this patch removes the
            instruction from<br>
            qemuboot-x86 and adds it in specific to both qemux86
            machines confs so<br>
            it is correctly loaded only on those.<br>
            <br>
            [YOCTO #11879]<br>
            <br>
            Signed-off-by: Alejandro Hernandez &lt;<a
              href="mailto:alejandro.hernandez@linux.intel.com"
              moz-do-not-send="true">alejandro.hernandez@linux.<wbr>intel.com</a>&gt;<br>
            ---<br>
             meta/conf/machine/include/<wbr>qemuboot-x86.inc | 2 --<br>
             meta/conf/machine/qemux86-64.<wbr>conf          | 3 +++<br>
             meta/conf/machine/qemux86.conf             | 3 +++<br>
             3 files changed, 6 insertions(+), 2 deletions(-)<br>
            <br>
            diff --git a/meta/conf/machine/include/<wbr>qemuboot-x86.inc
            b/meta/conf/machine/include/<wbr>qemuboot-x86.inc<br>
            index 0596e2ed3fb..100d0ccfd1f 100644<br>
            --- a/meta/conf/machine/include/<wbr>qemuboot-x86.inc<br>
            +++ b/meta/conf/machine/include/<wbr>qemuboot-x86.inc<br>
            @@ -14,7 +14,5 @@ QB_KERNEL_CMDLINE_APPEND = "vga=0
            uvesafb.mode_option=${UVESA_<wbr>MODE} oprofile.tim<br>
             # Add the 'virtio-rng-pci' device otherwise the guest may
            run out of entropy<br>
             QB_OPT_APPEND = "-vga vmware -show-cursor -usb -device
            usb-tablet -device virtio-rng-pci"<br>
            <br>
            -KERNEL_MODULE_AUTOLOAD += "uvesafb"<br>
            -KERNEL_MODULE_PROBECONF += "uvesafb"<br>
             UVESA_MODE ?= "640x480-32"<br>
             module_conf_uvesafb = "options uvesafb
            mode_option=${UVESA_MODE}"<br>
            diff --git a/meta/conf/machine/qemux86-<wbr>64.conf
            b/meta/conf/machine/qemux86-<wbr>64.conf<br>
            index ff6e5491bbc..a270d6698f3 100644<br>
            --- a/meta/conf/machine/qemux86-<wbr>64.conf<br>
            +++ b/meta/conf/machine/qemux86-<wbr>64.conf<br>
            @@ -29,5 +29,8 @@ MACHINE_FEATURES += "x86 pci"<br>
            <br>
             MACHINE_ESSENTIAL_EXTRA_<wbr>RDEPENDS += "v86d"<br>
            <br>
            +KERNEL_MODULE_AUTOLOAD += "uvesafb"<br>
            +KERNEL_MODULE_PROBECONF += "uvesafb"<br>
            +<br>
             WKS_FILE ?= "directdisk.wks"<br>
             do_image_wic[depends] += "syslinux:do_populate_sysroot
            syslinux-native:do_populate_<wbr>sysroot
            mtools-native:do_populate_<wbr>sysroot
            dosfstools-native:do_populate_<wbr>sysroot"<br>
            diff --git a/meta/conf/machine/qemux86.<wbr>conf
            b/meta/conf/machine/qemux86.<wbr>conf<br>
            index f8b09c37f29..5c6539b95f3 100644<br>
            --- a/meta/conf/machine/qemux86.<wbr>conf<br>
            +++ b/meta/conf/machine/qemux86.<wbr>conf<br>
            @@ -28,5 +28,8 @@ MACHINE_FEATURES += "x86 pci"<br>
            <br>
             MACHINE_ESSENTIAL_EXTRA_<wbr>RDEPENDS += "v86d"<br>
            <br>
            +KERNEL_MODULE_AUTOLOAD += "uvesafb"<br>
            +KERNEL_MODULE_PROBECONF += "uvesafb"<br>
            +<br>
             WKS_FILE ?= "directdisk.wks"<br>
             do_image_wic[depends] += "syslinux:do_populate_sysroot
            syslinux-native:do_populate_<wbr>sysroot
            mtools-native:do_populate_<wbr>sysroot
            dosfstools-native:do_populate_<wbr>sysroot"<br>
            <span class="HOEnZb"><font color="#888888">--<br>
                2.12.3<br>
                <br>
                --<br>
                ______________________________<wbr>_________________<br>
                poky mailing list<br>
                <a href="mailto:poky@yoctoproject.org"
                  moz-do-not-send="true">poky@yoctoproject.org</a><br>
                <a href="https://lists.yoctoproject.org/listinfo/poky"
                  rel="noreferrer" target="_blank"
                  moz-do-not-send="true">https://lists.yoctoproject.<wbr>org/listinfo/poky</a><br>
              </font></span></blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------D5A240BE3D04098D2D91002A--
