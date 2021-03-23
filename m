Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web10.7542.1616500024827517443
 for <poky@lists.yoctoproject.org>;
 Tue, 23 Mar 2021 04:47:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@argentum-systems.co.uk header.s=google header.b=NLqhQ7dB;
 spf=pass (domain: argentum-systems.co.uk, ip: 209.85.208.179, mailfrom: attie.grande@argentum-systems.co.uk)
Received: by mail-lj1-f179.google.com with SMTP id u20so25149577lja.13
        for <poky@lists.yoctoproject.org>; Tue, 23 Mar 2021 04:47:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=argentum-systems.co.uk; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=N90To4/t2h2/6ejPOJlZrCVm1jJTvAVCOl81pre4/Tc=;
        b=NLqhQ7dBoo+vYSIfTcN6BLvqH9V9BaC9YPNisLLZvs69yjlB8WuvzJX+MOvPmIbIEs
         JnqqqOlBd6y+PiyZ2Mia+HrEYCRnETYk4ieQzPd3WpkSqlmiO1N7GNThXUEvVF3kjEhq
         EE41DbqHjUxuBbZQbx8gOLg+qsdHTO+IUGb15JCriqG3AbSo5C07SG1fsLUYz2QceYkR
         U8rCiynpPyEuNRaGq15RZ0ca434v5pj5Y//7/t9dmlTNPjLTTeXflfjjuYcL2m0Pt+Ye
         hcKbtCOyskekbw9/YwoH/osAvccz8oQvrhKSJC3qWzpyosWVZkHUZqdoUEYm4bSiaXG4
         c35Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=N90To4/t2h2/6ejPOJlZrCVm1jJTvAVCOl81pre4/Tc=;
        b=MmHoSioH6E2UxEX5yj5KZ8itY7SmQp8OxS6D2w9tCTtYVPBcP1Hq6EdxXlXMk9ZnP/
         +5AA7snPBUVTEfWqRzDkElyD6cDtehJFpfcJ7mknMFDjCQl40txtCJJnVIKvxXt08Bfg
         cxyn9k0RmJ/2x3tMjnD8szKhkGByQYpzGKEp6p7xkThAgIgtVK4JtfAC7Gn3crqesJ1N
         ZbSC3hFZmK+2gYC6uTDFygVCGRiMzxZKpz2xCc0CJfeTyQ61lYDIIE0FA/lAOh1STguQ
         CrOAxrcq4npbvBmuMBll7EJSRs7sHFciZIHelPR2PIsH19B6EZNTWvjP6/LqmpfhvCsr
         BqQA==
X-Gm-Message-State: AOAM5325nWIZbrqJhUJDU8gONPKrsG8nKGdSYvz5pwwxi6AJ25wnBNWd
	45TgwdHYry24syRSf/V73SpeFUkhG9tlnBQMgNlOL8C4B1PhmKuh
X-Google-Smtp-Source: ABdhPJy6lOqdC3JSSLVwYhSezIPHIkbsWphcB2HEoBm45mrSWEgrwEwPl1VSVya33NYoVvDiFuwcs/fvgpt5wamxcCQ=
X-Received: by 2002:a05:651c:103a:: with SMTP id w26mr2878914ljm.273.1616500022592;
 Tue, 23 Mar 2021 04:47:02 -0700 (PDT)
MIME-Version: 1.0
From: "Attie Grande" <attie.grande@argentum-systems.co.uk>
Date: Tue, 23 Mar 2021 11:46:52 +0000
Message-ID: <CAAsqSTfbHeVt9jyrw12Xkrpj_+-kUXHHwVRQGCe0jD2k_R1o=A@mail.gmail.com>
Subject: image.bbclass - get_rootfs_size
To: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi all,

I've run into this issue a few times, and have probably worked around
it in a different way each time. Today I went digging.

The top-level issue is as follows:

    | DEBUG: Actual Rootfs size:  28893
/proj/build/tmp-glibc/work/rockchip_rk3328_evb-oe-linux/core-image-minimal/1.0-r0/rootfs
    [...]
    | mke2fs 1.45.6 (20-Mar-2020)
    | Discarding device blocks: done
    | Creating filesystem with 41656 1k blocks and 10416 inodes
    | Filesystem UUID: bad8bdcd-750e-474f-9927-5efde8c23229
    | Superblock backups stored on blocks:
    |       8193, 24577, 40961
    |
    | Allocating group tables: done
    | Writing inode tables: done
    | Creating journal (4096 blocks): done
    | Copying files into the device: __populate_fs: Could not allocate
block in ext2 filesystem while writing file "libkmod.so.2.3.5"
    | mkfs.ext4: Could not allocate block in ext2 filesystem while
populating file system
    | WARNING: exit code 1 from a shell command.
    |
    ERROR: Task
(/proj/sources/poky/meta/recipes-core/images/core-image-minimal.bb:do_image_ext4)
failed with exit code '1'

There doesn't appear to be any reference to this, and the root cause
is down to an incorrect estimation of the space requirements.

I'm running on ZFS, with compression enabled - the compression being
the fundamental issue here.
`df` by default will report the space used on-disk, not the actual
size of the contents of these files.
Adding the `--apparent-size` flag will produce the correct figures,
and the task completes successfully.

    $ du -ks ./rootfs
    28893   ./rootfs
    $ du -ks --apparent-size ./rootfs
    37831   ./rootfs

If there's any backstory or reasoning behind not doing this, please
let me know, and apologies for not finding it.
An alternative approach could be to use `-b` (which implies
`--apparent-size`) instead of `-k`, but this would require a larger
patch.

This fix will also likely resolve any issues with sparse files that
might make it into the rootfs:

    $ truncate -s $(( 10 * 1024 * 1024 )) x
    $ du -ks x
    0       x
    $ du -ks --apparent-size x
    10240   x

I have included a patch below that can be applied on top of master / 22931ae.
This patch also applies on top of gatesgarth / 6ed895d, which is where
I'm currently working.

Regards,
Attie



From: Attie Grande <attie.grande@argentum-systems.co.uk>
Date: Tue, 23 Mar 2021 10:54:30 +0000
Subject: [PATCH] image.bbclass: Use apparent size of files, instead of on-disk
 size

While building on a filesystem with compression enabled, the output of
`du` might (will on ZFS) produce the compressed size of the data
on-disk, not the actual size of the data held within.

This will also resolve any issues with sparse files that may be
present.

When estimating the size for a filesystem, this incorrect figure will
often cause the task to fail due to insufficient space, for example:

  Copying files into the device: __populate_fs: Could not allocate
  block in ext2 filesystem while writing file "libkmod.so.2.3.5"
---
 meta/classes/image.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/classes/image.bbclass b/meta/classes/image.bbclass
index b558653..905ab50 100644
--- a/meta/classes/image.bbclass
+++ b/meta/classes/image.bbclass
@@ -518,7 +518,7 @@ def get_rootfs_size(d):
     initramfs_fstypes = d.getVar('INITRAMFS_FSTYPES') or ''
     initramfs_maxsize = d.getVar('INITRAMFS_MAXSIZE')

-    output = subprocess.check_output(['du', '-ks',
+    output = subprocess.check_output(['du', '-ks', '--apparent-size',
                                       d.getVar('IMAGE_ROOTFS')])
     size_kb = int(output.split()[0])

-- 
2.7.4
