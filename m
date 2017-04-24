Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 836E0E0094C; Mon, 24 Apr 2017 09:31:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7A8DE00839
	for <poky@yoctoproject.org>; Mon, 24 Apr 2017 09:31:25 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	v3OGVILd008237
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Mon, 24 Apr 2017 17:31:19 +0100
Message-ID: <1493051478.19076.117.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Martin Kelly <mkelly@xevo.com>, poky@yoctoproject.org
Date: Mon, 24 Apr 2017 17:31:18 +0100
In-Reply-To: <1492820479-2808-1-git-send-email-mkelly@xevo.com>
References: <1492820479-2808-1-git-send-email-mkelly@xevo.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.1 
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.11
	(dan.rpsys.net [192.168.3.1]);
	Mon, 24 Apr 2017 17:31:19 +0100 (BST)
X-Virus-Scanned: clamav-milter 0.99.2 at dan
X-Virus-Status: Clean
Subject: Re: [PATCH] qemuboot.conf: make cpus match built artifacts
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
X-List-Received-Date: Mon, 24 Apr 2017 16:31:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2017-04-21 at 17:21 -0700, Martin Kelly wrote:
> Currently, the qemu CPUs for are specified as generic, but the built
> artifacts are not. For example, we build x86-64 artifacts targeting
> core2duo but run them in qemu with generic qemu/kvm CPUs. This causes
> some packages that take advantage of the host architecture to crash
> because they try to use CPU features not advertised by qemu. As an
> example, Qt uses ssse3. When artifacts linked against Qt and built
> targeting core2duo attempt to run on a generic qemu/kvm CPU, we get
> the following crash:
> 
> Incompatible processor. This Qt build requires the following
> features:
>      ssse3
> 
> We could fix this by making packages like Qt not take advantage of
> CPU
> features. However, we will probably keep facing similar issues over
> time, so it's better to resolve them in a more enduring way.
> 
> Fix this by making the qemu -cpu arguments match the built artifacts.
> 
> Signed-off-by: Martin Kelly <mkelly@xevo.com>
> ---
>  meta/conf/machine/include/qemuboot-x86.inc | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/meta/conf/machine/include/qemuboot-x86.inc
> b/meta/conf/machine/include/qemuboot-x86.inc
> index 06ac983..acd03a1 100644
> --- a/meta/conf/machine/include/qemuboot-x86.inc
> +++ b/meta/conf/machine/include/qemuboot-x86.inc
> @@ -1,12 +1,12 @@
>  # For runqemu
>  IMAGE_CLASSES += "qemuboot"
>  QB_SYSTEM_NAME_x86 = "qemu-system-i386"
> -QB_CPU_x86 = "-cpu qemu32"
> -QB_CPU_KVM_x86 = "-cpu kvm32"
> +QB_CPU_x86 = "-cpu pentium2"
> +QB_CPU_KVM_x86 = "-cpu pentium2"
> 
>  QB_SYSTEM_NAME_x86-64 = "qemu-system-x86_64"
>  QB_CPU_x86-64 = "-cpu core2duo"
> -QB_CPU_KVM_x86-64 = "-cpu kvm64"
> +QB_CPU_KVM_x86-64 = "-cpu core2duo"
>  
>  QB_AUDIO_DRV = "alsa"
>  QB_AUDIO_OPT = "-soundhw ac97,es1370"

We've had problems here in the past:

http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=b8819b02dc4ff29d678cc55887dfe6c2d109a67d
http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=a2a20adbfd03ed9f07a3aa38ee2c9a8d962d4bf9

so we once did use core2duo and had to switch away from it after kernel
issues. Admittedly that was some time ago and I don't know if those
issues were resolved. I do remember other debates about qemu32 verses
pentium2 and other tunes as well so I'm a little nervous about changes
in this area as the issues were subtle to track down and fix,
particularly given the range of host distro kernels we need to run kvm
against :(.

Cheers,

Richard
> 

