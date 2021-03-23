Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web09.7743.1616500775261203226
 for <poky@lists.yoctoproject.org>;
 Tue, 23 Mar 2021 04:59:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=S9ChJ5GM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id k8so20466320wrc.3
        for <poky@lists.yoctoproject.org>; Tue, 23 Mar 2021 04:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=XEzNFFwS6AJXB0qjTZBzcJzPQmJ1dCjY0iw0l8b0vak=;
        b=S9ChJ5GMozIZdGqyyEWTKVK2pjx6Oj6LoWN5ACmf+e3YvpGaJmO+h6Ba/+LkfFXYcf
         4XoW1WpFKNG9NPH3edZ76CiQ5zgr58le3Me0gkGTs8dXQvypxSMr2X47Umkk17+lPI/A
         XGDTvl6vqqTsGQ8HskFja3p1ZYpuhbpxzfQUg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=XEzNFFwS6AJXB0qjTZBzcJzPQmJ1dCjY0iw0l8b0vak=;
        b=s8WiUvdiNGa8saAAs54mmPEKhKbicKKtQxlUmzaSKh84DxtywaCrT+b5WFw7/yrtg+
         SoqLPke6Ms7DQVU9UUBlAy2FmR9dk6n86L5EKfhLiTdioK1dKw9MjIyty8OyKsLXW8Bh
         mV4sHjfhrM2JPkFaVoBNGyoTGYLZvW/3+Gfx3FA7edt6XyxFoJar/yJD+al/sZumAN7/
         mN1u7eJC1JJ5ZV9d4NpK40JZ5AYbwwjcYBKB0FBLZ/s3d44N6/ZtBvrNAEy+sf9+SqiP
         vXWbCKH9C9Y4eGlKjbdVbXDCvk4UcVAKtV3EQMcqD3XdNHLX6ARWXJWKrr60H4/VQd/6
         6DUQ==
X-Gm-Message-State: AOAM5322ujxs2YlL6UYRAfs7mv8s8M3GcmZFlSpj6rhAjYVxPyYj2BGD
	OM/9uM4lY9JGE/VXQkXyzVQXgw==
X-Google-Smtp-Source: ABdhPJwTkCSoHILV+2Ul2NFcy4g8LYb3typcLB7uOBQ7mBpE679oBkCx8M3MZ03yUJ42oa3A29AfxA==
X-Received: by 2002:adf:9bca:: with SMTP id e10mr3640000wrc.364.1616500773563;
        Tue, 23 Mar 2021 04:59:33 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:d9d1:ce9a:66bd:fc35? ([2001:8b0:aba:5f3c:d9d1:ce9a:66bd:fc35])
        by smtp.gmail.com with ESMTPSA id h8sm23072891wrt.94.2021.03.23.04.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 04:59:33 -0700 (PDT)
Message-ID: <02fc39f148aa309f0e99f08f2e107ea2a9a666af.camel@linuxfoundation.org>
Subject: Re: [poky] image.bbclass - get_rootfs_size
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Attie Grande <attie.grande@argentum-systems.co.uk>, 
	poky@lists.yoctoproject.org
Cc: Ross Burton <ross@burtonini.com>
Date: Tue, 23 Mar 2021 11:59:32 +0000
In-Reply-To: <CAAsqSTfbHeVt9jyrw12Xkrpj_+-kUXHHwVRQGCe0jD2k_R1o=A@mail.gmail.com>
References: 
	<CAAsqSTfbHeVt9jyrw12Xkrpj_+-kUXHHwVRQGCe0jD2k_R1o=A@mail.gmail.com>
User-Agent: Evolution 3.39.2-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2021-03-23 at 11:46 +0000, Attie Grande wrote:
> Hi all,
> 
> I've run into this issue a few times, and have probably worked around
> it in a different way each time. Today I went digging.
> 
> The top-level issue is as follows:
> 
>     | DEBUG: Actual Rootfs size:  28893
> /proj/build/tmp-glibc/work/rockchip_rk3328_evb-oe-linux/core-image-minimal/1.0-r0/rootfs
>     [...]
>     | mke2fs 1.45.6 (20-Mar-2020)
>     | Discarding device blocks: done
>     | Creating filesystem with 41656 1k blocks and 10416 inodes
>     | Filesystem UUID: bad8bdcd-750e-474f-9927-5efde8c23229
>     | Superblock backups stored on blocks:
>     |       8193, 24577, 40961
>     |
>     | Allocating group tables: done
>     | Writing inode tables: done
>     | Creating journal (4096 blocks): done
>     | Copying files into the device: __populate_fs: Could not allocate
> block in ext2 filesystem while writing file "libkmod.so.2.3.5"
>     | mkfs.ext4: Could not allocate block in ext2 filesystem while
> populating file system
>     | WARNING: exit code 1 from a shell command.
>     |
>     ERROR: Task
> (/proj/sources/poky/meta/recipes-core/images/core-image-minimal.bb:do_image_ext4)
> failed with exit code '1'
> 
> There doesn't appear to be any reference to this, and the root cause
> is down to an incorrect estimation of the space requirements.
> 
> I'm running on ZFS, with compression enabled - the compression being
> the fundamental issue here.
> `df` by default will report the space used on-disk, not the actual
> size of the contents of these files.
> Adding the `--apparent-size` flag will produce the correct figures,
> and the task completes successfully.
> 
>     $ du -ks ./rootfs
>     28893   ./rootfs
>     $ du -ks --apparent-size ./rootfs
>     37831   ./rootfs
> 
> If there's any backstory or reasoning behind not doing this, please
> let me know, and apologies for not finding it.
> An alternative approach could be to use `-b` (which implies
> `--apparent-size`) instead of `-k`, but this would require a larger
> patch.
> 
> This fix will also likely resolve any issues with sparse files that
> might make it into the rootfs:
> 
>     $ truncate -s $(( 10 * 1024 * 1024 )) x
>     $ du -ks x
>     0       x
>     $ du -ks --apparent-size x
>     10240   x
> 
> I have included a patch below that can be applied on top of master / 22931ae.
> This patch also applies on top of gatesgarth / 6ed895d, which is where
> I'm currently working.
> 
> Regards,
> Attie
> 
> 
> 
> From: Attie Grande <attie.grande@argentum-systems.co.uk>
> Date: Tue, 23 Mar 2021 10:54:30 +0000
> Subject: [PATCH] image.bbclass: Use apparent size of files, instead of on-disk
>  size
> 
> While building on a filesystem with compression enabled, the output of
> `du` might (will on ZFS) produce the compressed size of the data
> on-disk, not the actual size of the data held within.
> 
> This will also resolve any issues with sparse files that may be
> present.
> 
> When estimating the size for a filesystem, this incorrect figure will
> often cause the task to fail due to insufficient space, for example:
> 
>   Copying files into the device: __populate_fs: Could not allocate
>   block in ext2 filesystem while writing file "libkmod.so.2.3.5"
> ---
>  meta/classes/image.bbclass | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta/classes/image.bbclass b/meta/classes/image.bbclass
> index b558653..905ab50 100644
> --- a/meta/classes/image.bbclass
> +++ b/meta/classes/image.bbclass
> @@ -518,7 +518,7 @@ def get_rootfs_size(d):
>      initramfs_fstypes = d.getVar('INITRAMFS_FSTYPES') or ''
>      initramfs_maxsize = d.getVar('INITRAMFS_MAXSIZE')
> 
> -    output = subprocess.check_output(['du', '-ks',
> +    output = subprocess.check_output(['du', '-ks', '--apparent-size',
>                                        d.getVar('IMAGE_ROOTFS')])
>      size_kb = int(output.split()[0])
> 

Unfortunately this is a really hard problem. The issue is that the 
size depends on the target filesystem type as well as that from the 
host. On an extX filesystem, a 1 byte file will still need a block
size amount of space.

Ross did look into this and has some historical work on a branch:

http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=ross/du&id=46dc6a18c2d8813a1e6b5b70a723730f0d7702fa
http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=ross/du&id=c36e01c617f199969432570c74ded0208fa180ff

I think we found this caused a different set of issues, I don't remember
what those were though.

I am wondering if we should merge the above patches.

Cheers,

Richard

