Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web10.9136.1677155318710734762
 for <poky@lists.yoctoproject.org>;
 Thu, 23 Feb 2023 04:28:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=X3hxuhNF;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id h3so4619440lja.12
        for <poky@lists.yoctoproject.org>; Thu, 23 Feb 2023 04:28:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4hKjqijYYpDZJkANBpmMsPCDjGFEcdRX9nKcXnOkpQ0=;
        b=X3hxuhNFecmix+Or++0SXSFTptR66xxxkUbJP9huu44ipAX096hdGW7fAAuP6/erzm
         Yqgd3P2K13zKQpZHSaVh1jZZyIQ169NfmSwF3wWLfY0CcfBcfB57KCwe0omnE8EHb574
         cSKhuEroEPaN0NI92aARKWk4gFE0Ap1FAFy0T/UaFLcHTmb/+Xx7ERNim8Ps0FhYk8rX
         0omqq4BtknZQjvwq0yN/70zm6O5aIC5pQAomEqGF6svZwBn1EzOqqyql7AGq9mcmTKcS
         beu+86ZhZVHurr3NHclyFKI7QENMH+FBuSF2xGAIyVVpkwDicEiOXSHHTymiT3YbqCrf
         +PTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4hKjqijYYpDZJkANBpmMsPCDjGFEcdRX9nKcXnOkpQ0=;
        b=e+3G/D9hvNldWgkFUiJZcS7vWVZpnik6exri5EmgNSt9ZXDZ5yLN9GOKTrwhWJ/VsY
         NXbcQ5z7FeVw6j2IhfqA4Y2NIGowrFFKWqYSI73XvOikVyQ68OAVvTbfoyfFcXdZ1SnZ
         elf8BOUp7r7YFo0gSsetT8HLASesgl6NJjYJlC6WRCARO6zxR1wWs3tiMX0zIcu6fCaM
         wwkY8+/GzfeHXpzagAvX3Ahlo66UHzRho+zrcdpAPtP/yhEee6qKnjPYzAPKb10WPvu3
         T9PSvePg9ZIz4CLu9SyX0U9ApjOTLoweUTnG3064i2rNQFTgUVsnscYTSrtGJJcHtcbk
         LhbQ==
X-Gm-Message-State: AO0yUKWjkr77EMqXItoLJQ7z5mBTXWPoPplH6svjslB1/DtWjlXBsLL0
	QS/b0ZrKL6rPx6yIbgFU3N8RF0Da4IDmJZj3XMI=
X-Google-Smtp-Source: AK7set93X3Wvh2Fw0/sVdoOVu8Z2N5ElkbdHPJb9AwoIFwx+sMAF7li1e9tc3rzSVUUaIJxE3LTLMy6FmGRKHB1Bid8=
X-Received: by 2002:a2e:bc16:0:b0:294:69ba:6288 with SMTP id
 b22-20020a2ebc16000000b0029469ba6288mr4383289ljf.4.1677155316777; Thu, 23 Feb
 2023 04:28:36 -0800 (PST)
MIME-Version: 1.0
References: <cover.1677071966.git.anna-lena.marx@inovex.de> <447adb5dc9f54eb3f697810b83dd9d049a76b0b3.1677071966.git.anna-lena.marx@inovex.de>
In-Reply-To: <447adb5dc9f54eb3f697810b83dd9d049a76b0b3.1677071966.git.anna-lena.marx@inovex.de>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 23 Feb 2023 13:28:25 +0100
Message-ID: <CANNYZj_SX4m1Fty01CPsvmj8AMbAY88qtNbcMD1VK=G5tkiQ5Q@mail.gmail.com>
Subject: Re: [poky] [PULL][PATCH 1/1] wic: Add support for F2FS in WIC rootfs plugin
To: anna-lena.marx@inovex.de
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hello Anna-Lena,

the correct mailing list is openembedded-core. Also, if you add
features to wic, you should also included tests for those features -
you can find existing tests in meta/lib/oeqa/selftest/cases/wic.py

Alex

On Thu, 23 Feb 2023 at 13:12, Anna-Lena Marx via
lists.yoctoproject.org
<anna-lena.marx=inovex.de@lists.yoctoproject.org> wrote:
>
> Building F2FS rootfs is supported in Yocto - see
> image_types.bbclass, but not in WIC.
> This adds it as a nice convenience feature.
>
> F2FS needs a minimum size of ~500M to operate correctly due to
> an overprovision functionality.
>
> Signed-off-by: Anna-Lena Marx <anna-lena.marx@inovex.de>
> ---
>  meta/classes-recipe/image_types_wic.bbclass |  2 +-
>  meta/recipes-core/meta/wic-tools.bb         |  2 +-
>  scripts/lib/wic/help.py                     |  1 +
>  scripts/lib/wic/ksparser.py                 |  2 +-
>  scripts/lib/wic/misc.py                     |  1 +
>  scripts/lib/wic/partition.py                | 32 ++++++++++++++++++++-
>  6 files changed, 36 insertions(+), 4 deletions(-)
>
> diff --git a/meta/classes-recipe/image_types_wic.bbclass b/meta/classes-recipe/image_types_wic.bbclass
> index c339b9bdfb..8ae5ecca4d 100644
> --- a/meta/classes-recipe/image_types_wic.bbclass
> +++ b/meta/classes-recipe/image_types_wic.bbclass
> @@ -89,7 +89,7 @@ do_image_wic[recrdeptask] += "do_deploy"
>  do_image_wic[deptask] += "do_image_complete"
>
>  WKS_FILE_DEPENDS_DEFAULT = '${@bb.utils.contains_any("BUILD_ARCH", [ 'x86_64', 'i686' ], "syslinux-native", "",d)}'
> -WKS_FILE_DEPENDS_DEFAULT += "bmap-tools-native cdrtools-native btrfs-tools-native squashfs-tools-native e2fsprogs-native erofs-utils-native"
> +WKS_FILE_DEPENDS_DEFAULT += "bmap-tools-native cdrtools-native btrfs-tools-native squashfs-tools-native e2fsprogs-native erofs-utils-native f2fs-tools-native"
>  # Unified kernel images need objcopy
>  WKS_FILE_DEPENDS_DEFAULT += "virtual/${MLPREFIX}${TARGET_PREFIX}binutils"
>  WKS_FILE_DEPENDS_BOOTLOADERS = ""
> diff --git a/meta/recipes-core/meta/wic-tools.bb b/meta/recipes-core/meta/wic-tools.bb
> index 9282d36a4d..d30ce66b56 100644
> --- a/meta/recipes-core/meta/wic-tools.bb
> +++ b/meta/recipes-core/meta/wic-tools.bb
> @@ -7,7 +7,7 @@ DEPENDS = "\
>             mtools-native bmap-tools-native grub-native cdrtools-native \
>             btrfs-tools-native squashfs-tools-native pseudo-native \
>             e2fsprogs-native util-linux-native tar-native erofs-utils-native \
> -           virtual/${TARGET_PREFIX}binutils \
> +           f2fs-tools-native virtual/${TARGET_PREFIX}binutils \
>             "
>  DEPENDS:append:x86 = " syslinux-native syslinux grub-efi systemd-boot"
>  DEPENDS:append:x86-64 = " syslinux-native syslinux grub-efi systemd-boot"
> diff --git a/scripts/lib/wic/help.py b/scripts/lib/wic/help.py
> index 73e3380cde..0094065931 100644
> --- a/scripts/lib/wic/help.py
> +++ b/scripts/lib/wic/help.py
> @@ -931,6 +931,7 @@ DESCRIPTION
>               btrfs
>               squashfs
>               erofs
> +             f2fs
>               swap
>
>           --fsoptions: Specifies a free-form string of options to be
> diff --git a/scripts/lib/wic/ksparser.py b/scripts/lib/wic/ksparser.py
> index d1e546b12d..e10ce6581d 100644
> --- a/scripts/lib/wic/ksparser.py
> +++ b/scripts/lib/wic/ksparser.py
> @@ -159,7 +159,7 @@ class KickStart():
>          part.add_argument('--fstype', default='vfat',
>                            choices=('ext2', 'ext3', 'ext4', 'btrfs',
>                                     'squashfs', 'vfat', 'msdos', 'erofs',
> -                                   'swap', 'none'))
> +                                   'f2fs', 'swap', 'none'))
>          part.add_argument('--mkfs-extraopts', default='')
>          part.add_argument('--label')
>          part.add_argument('--use-label', action='store_true')
> diff --git a/scripts/lib/wic/misc.py b/scripts/lib/wic/misc.py
> index 2b90821b30..dc84a37423 100644
> --- a/scripts/lib/wic/misc.py
> +++ b/scripts/lib/wic/misc.py
> @@ -41,6 +41,7 @@ NATIVE_RECIPES = {"bmaptool": "bmap-tools",
>                    "mkfs.ext3": "e2fsprogs",
>                    "mkfs.ext4": "e2fsprogs",
>                    "mkfs.vfat": "dosfstools",
> +                  "mkfs.f2fs": "f2fs-tools",
>                    "mksquashfs": "squashfs-tools",
>                    "mkswap": "util-linux",
>                    "mmd": "mtools",
> diff --git a/scripts/lib/wic/partition.py b/scripts/lib/wic/partition.py
> index 382afa44bc..6adcaa041f 100644
> --- a/scripts/lib/wic/partition.py
> +++ b/scripts/lib/wic/partition.py
> @@ -208,7 +208,7 @@ class Partition():
>          Prepare content for a rootfs partition i.e. create a partition
>          and fill it from a /rootfs dir.
>
> -        Currently handles ext2/3/4, btrfs, vfat and squashfs.
> +        Currently handles ext2/3/4, btrfs, vfat, squashfs and f2fs.
>          """
>
>          rootfs = "%s/rootfs_%s.%s.%s" % (cr_workdir, self.label,
> @@ -351,6 +351,36 @@ class Partition():
>               self.mkfs_extraopts, self.fsuuid, rootfs)
>          exec_native_cmd(mkfs_cmd, native_sysroot, pseudo=pseudo)
>
> +    def prepare_rootfs_f2fs(self, rootfs, cr_workdir, oe_builddir, rootfs_dir,
> +                            native_sysroot, pseudo):
> +        """
> +        Prepare content for a f2fs rootfs partition.
> +        """
> +        du_cmd = "du -ks %s" % rootfs_dir
> +        out = exec_cmd(du_cmd)
> +        actual_rootfs_size = int(out.split()[0])
> +
> +        min_f2fs_size = 524288
> +        rootfs_size = self.get_rootfs_size(actual_rootfs_size)
> +        if rootfs_size < min_f2fs_size:
> +            rootfs_size = min_f2fs_size
> +
> +        with open(rootfs, 'w') as sparse:
> +            os.ftruncate(sparse.fileno(), rootfs_size * 1024)
> +
> +        extraopts = self.mkfs_extraopts or "-O extra_attr,compression"
> +
> +        label_str = ""
> +        if self.label:
> +            label_str = "-l %s" % self.label
> +
> +        mkfs_f2fs_cmd = "mkfs.f2fs %s %s %s" % \
> +                        (label_str, extraopts, rootfs)
> +        exec_native_cmd(mkfs_f2fs_cmd, native_sysroot, pseudo=pseudo)
> +
> +        sload_f2fs_cmd = "sload.f2fs -f %s %s" % (rootfs_dir, rootfs)
> +        exec_native_cmd(sload_f2fs_cmd, native_sysroot, pseudo=pseudo)
> +
>      def prepare_rootfs_msdos(self, rootfs, cr_workdir, oe_builddir, rootfs_dir,
>                               native_sysroot, pseudo):
>          """
> --
> 2.39.2
>
>
> 
>
