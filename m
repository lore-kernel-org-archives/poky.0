Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web10.7907.1616502187175796706
 for <poky@lists.yoctoproject.org>;
 Tue, 23 Mar 2021 05:23:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@argentum-systems.co.uk header.s=google header.b=AnaSoZpl;
 spf=pass (domain: argentum-systems.co.uk, ip: 209.85.208.172, mailfrom: attie.grande@argentum-systems.co.uk)
Received: by mail-lj1-f172.google.com with SMTP id 184so25314156ljf.9
        for <poky@lists.yoctoproject.org>; Tue, 23 Mar 2021 05:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=argentum-systems.co.uk; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CQ+91AWEl/hilYmCbo7TANZgtGIQvnD8t0LCW8lOU7s=;
        b=AnaSoZplDleSelGAVcbphb59I2sSG53o9o0YFdYrD8PKcDa8vps3pN/eC6FV4TLUHZ
         Kr1cZR9Bc3a9y3whNymWPvep+37CdETR1CZbl3GViVeg8pLW/KW7bY6ZLB2+8zbZS9Op
         GKLx+Q9fE9AaChXxM8kfZ4u+fOMXRzu15F2LUYWUAByRPjjqlrYBvxAVa+qucB9PYXqw
         DueEsKkJuM8LsNJAVthvIT5XvW1SCvyYUCs/lTKEIrg4s7XUZjIZpqCLl70j5G3u/Gig
         fU90FIEGRatNzZ7Mcl3PJWlTouX30p9g3XLtTsft4nFQ1gW927yw4XgA0+iOqOq57L09
         nb7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CQ+91AWEl/hilYmCbo7TANZgtGIQvnD8t0LCW8lOU7s=;
        b=Gr2MJM0ctgB6oJ/6DT6yTCOE/ctGkhYZYG8NQSBkVoY3GhEyapqa9gTO94v4Ee9lOB
         qNIE1e22pit6vE9K/YA49oU44nH5JUij8KnIwcllmPKI2dT80mu1BKhXWpr8hQTaRhPB
         3RiTpyRtbK1T3cdYbp+ZCK7kh/hDmGSy5icdFgkmdH9LNjNsprmUomqL6BWPU3ekIhTc
         VvWEyelN8WZF1ew1QqtUozcJSSfTQFNJ/vBKPBNASkNDVCP9HvnASV5MM7qc3jFkLUBd
         n7L50fwh1ZJnti1NCuj3H1nznU4oJmQkCeNlAysckZcpOVXOlgLAJh5dCK5bBEfgIB/Z
         qagw==
X-Gm-Message-State: AOAM533wkgPQQGzmq5/Luj19bAJ6VBxioHKxqqc6Pjzk13/e6rv8YovB
	dvU1FPklEhHsyqapVobFFKv76o58ZtbMlwvG8NwXFQ==
X-Google-Smtp-Source: ABdhPJyroEYnQYDMOR8DBOwXKM/VtQc3cshTc9Igd2MUE7jPt2NbjmpKNBSpn7qduRAWBI5fsypmEdAYbz22Cr216Tc=
X-Received: by 2002:a2e:6816:: with SMTP id c22mr2991386lja.59.1616502184984;
 Tue, 23 Mar 2021 05:23:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAAsqSTfbHeVt9jyrw12Xkrpj_+-kUXHHwVRQGCe0jD2k_R1o=A@mail.gmail.com>
 <02fc39f148aa309f0e99f08f2e107ea2a9a666af.camel@linuxfoundation.org>
In-Reply-To: <02fc39f148aa309f0e99f08f2e107ea2a9a666af.camel@linuxfoundation.org>
From: "Attie Grande" <attie.grande@argentum-systems.co.uk>
Date: Tue, 23 Mar 2021 12:22:54 +0000
Message-ID: <CAAsqSTcd22B-wgTCmBPXNFHyeuiyizThQP3a5Lo8t0RN01aW_g@mail.gmail.com>
Subject: Re: [poky] image.bbclass - get_rootfs_size
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org, Ross Burton <ross@burtonini.com>
Content-Type: text/plain; charset="UTF-8"

> Unfortunately this is a really hard problem

Yes indeed, I've written about it a couple of times on superuser.com
[1][2], linked to add context / details.

> Ross did look into this and has some historical work on a branch

Thanks for linking!

Ross' patches look like a good step in the right direction.
Despite the commit message, I'm not immediately sure about the
handling of hard links... but I don't know the details of how files
are put into the filesystem image... (i.e: are hard links maintained,
what about filesystems that don't support them?)

If this task is growing, it might also be sensible to consider
performing some sanity checks as well (e.g: inode count).

Given that IMAGE_OVERHEAD_FACTOR defaults to 1.3x, I would expect /
hope that "counting the bytes" will address most situations, and Ross'
approach with block-size round-up is even better.

Attie

  [1]: https://superuser.com/a/1568600/707676
  [2]: https://superuser.com/a/1555769/707676


On Tue, 23 Mar 2021 at 11:59, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Tue, 2021-03-23 at 11:46 +0000, Attie Grande wrote:
> > Hi all,
> >
> > I've run into this issue a few times, and have probably worked around
> > it in a different way each time. Today I went digging.
> >
> > The top-level issue is as follows:
> >
> >     | DEBUG: Actual Rootfs size:  28893
> > /proj/build/tmp-glibc/work/rockchip_rk3328_evb-oe-linux/core-image-minimal/1.0-r0/rootfs
> >     [...]
> >     | mke2fs 1.45.6 (20-Mar-2020)
> >     | Discarding device blocks: done
> >     | Creating filesystem with 41656 1k blocks and 10416 inodes
> >     | Filesystem UUID: bad8bdcd-750e-474f-9927-5efde8c23229
> >     | Superblock backups stored on blocks:
> >     |       8193, 24577, 40961
> >     |
> >     | Allocating group tables: done
> >     | Writing inode tables: done
> >     | Creating journal (4096 blocks): done
> >     | Copying files into the device: __populate_fs: Could not allocate
> > block in ext2 filesystem while writing file "libkmod.so.2.3.5"
> >     | mkfs.ext4: Could not allocate block in ext2 filesystem while
> > populating file system
> >     | WARNING: exit code 1 from a shell command.
> >     |
> >     ERROR: Task
> > (/proj/sources/poky/meta/recipes-core/images/core-image-minimal.bb:do_image_ext4)
> > failed with exit code '1'
> >
> > There doesn't appear to be any reference to this, and the root cause
> > is down to an incorrect estimation of the space requirements.
> >
> > I'm running on ZFS, with compression enabled - the compression being
> > the fundamental issue here.
> > `df` by default will report the space used on-disk, not the actual
> > size of the contents of these files.
> > Adding the `--apparent-size` flag will produce the correct figures,
> > and the task completes successfully.
> >
> >     $ du -ks ./rootfs
> >     28893   ./rootfs
> >     $ du -ks --apparent-size ./rootfs
> >     37831   ./rootfs
> >
> > If there's any backstory or reasoning behind not doing this, please
> > let me know, and apologies for not finding it.
> > An alternative approach could be to use `-b` (which implies
> > `--apparent-size`) instead of `-k`, but this would require a larger
> > patch.
> >
> > This fix will also likely resolve any issues with sparse files that
> > might make it into the rootfs:
> >
> >     $ truncate -s $(( 10 * 1024 * 1024 )) x
> >     $ du -ks x
> >     0       x
> >     $ du -ks --apparent-size x
> >     10240   x
> >
> > I have included a patch below that can be applied on top of master / 22931ae.
> > This patch also applies on top of gatesgarth / 6ed895d, which is where
> > I'm currently working.
> >
> > Regards,
> > Attie
> >
> >
> >
> > From: Attie Grande <attie.grande@argentum-systems.co.uk>
> > Date: Tue, 23 Mar 2021 10:54:30 +0000
> > Subject: [PATCH] image.bbclass: Use apparent size of files, instead of on-disk
> >  size
> >
> > While building on a filesystem with compression enabled, the output of
> > `du` might (will on ZFS) produce the compressed size of the data
> > on-disk, not the actual size of the data held within.
> >
> > This will also resolve any issues with sparse files that may be
> > present.
> >
> > When estimating the size for a filesystem, this incorrect figure will
> > often cause the task to fail due to insufficient space, for example:
> >
> >   Copying files into the device: __populate_fs: Could not allocate
> >   block in ext2 filesystem while writing file "libkmod.so.2.3.5"
> > ---
> >  meta/classes/image.bbclass | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/meta/classes/image.bbclass b/meta/classes/image.bbclass
> > index b558653..905ab50 100644
> > --- a/meta/classes/image.bbclass
> > +++ b/meta/classes/image.bbclass
> > @@ -518,7 +518,7 @@ def get_rootfs_size(d):
> >      initramfs_fstypes = d.getVar('INITRAMFS_FSTYPES') or ''
> >      initramfs_maxsize = d.getVar('INITRAMFS_MAXSIZE')
> >
> > -    output = subprocess.check_output(['du', '-ks',
> > +    output = subprocess.check_output(['du', '-ks', '--apparent-size',
> >                                        d.getVar('IMAGE_ROOTFS')])
> >      size_kb = int(output.split()[0])
> >
>
> Unfortunately this is a really hard problem. The issue is that the
> size depends on the target filesystem type as well as that from the
> host. On an extX filesystem, a 1 byte file will still need a block
> size amount of space.
>
> Ross did look into this and has some historical work on a branch:
>
> http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=ross/du&id=46dc6a18c2d8813a1e6b5b70a723730f0d7702fa
> http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=ross/du&id=c36e01c617f199969432570c74ded0208fa180ff
>
> I think we found this caused a different set of issues, I don't remember
> what those were though.
>
> I am wondering if we should merge the above patches.
>
> Cheers,
>
> Richard
>
