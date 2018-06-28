Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C018FE00CC8; Thu, 28 Jun 2018 04:23:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f195.google.com (mail-ot0-f195.google.com
	[74.125.82.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07FC8E00720
	for <poky@yoctoproject.org>; Thu, 28 Jun 2018 04:23:49 -0700 (PDT)
Received: by mail-ot0-f195.google.com with SMTP id d19-v6so5707024oti.8
	for <poky@yoctoproject.org>; Thu, 28 Jun 2018 04:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=SFMhBhu4tN7MUqnyxc9kZWFTqvwwryJIdFifR0R4mTs=;
	b=jKt01LQ/kcjZs5FTKI9i0HbQvjAYqyFBc3EYd7ddr4loqmeYJr19DJ5IpE9IxtrKnf
	MWmGlaYAq4Kdv1TTG2QNf6BNJ/zZ5i4a6O6+Fn6AhIrlbiEEIpyh/5jNJCAEqZSiB5lQ
	xG9UXef7c4XKSqjZHbK4ij0GlhDsqK2EjO3XXdAPHrvWWx/2zrtMeEEoZChC2QpNJT0q
	H7YUm/e9L9H+tO5ObpEpm4rtjL9pWTrn6kDJNGes7QaZjF1OzwXm3cP18BJSTcjq4xaG
	cwYXn9k4i7uKRGcFxwv8rxZmjAqJmSpaBPZvYdNHjyP/yUN60gOM4WqCv4i/Y9+TmkMi
	j9Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=SFMhBhu4tN7MUqnyxc9kZWFTqvwwryJIdFifR0R4mTs=;
	b=q5tx2N9imE/GGHXKorFXZo0WinwjqL3FC/CVaAP2ZCmZdyxeyU5c4IyQTCZde8cOSc
	2GGHLqyoMngE7K8AF8AGXMHUKf4JaKhT8i5S3+moS0PVLNUrmsJVW4vuYG0dUjLWKEZM
	rDwipD2XIQGSBYoQ7QNBOkO5bft+TOS/UUGuMwV+3ogelwz045FYjAnItH7uh4KpKrfF
	zrUwaltRmSmwnqdMa0Nv1A2ZmujadVUWtEN6sXzubo+J3N/w+SYryuIqKvCml1njnAj2
	z3aoXP3+OTELwG/hsKgGjLCnoopsMtfELQ61IYUax0puiE2FyWOlKO0T2L8+8PNfFnfD
	I3cQ==
X-Gm-Message-State: APt69E0DnxSo50FDD4ruzTX8Y1S53Hq7F1fyeUZzB4N+lK/m2KbwBiul
	vUGQiefP8vltKMHWDsE76FE281K9N7gKyi3FBcc=
X-Google-Smtp-Source: AAOMgpcTmkK60OCgFiZJ+k1uII7AGoBCS5BMX5m46V9DXAzM4WIDxaPu69a7al/UC+lGC2UKOELrnHhyHV0nXMtGsiI=
X-Received: by 2002:a9d:1f3b:: with SMTP id
	x56-v6mr5327173otd.369.1530185029271; 
	Thu, 28 Jun 2018 04:23:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90c5:0:0:0:0:0 with HTTP; Thu, 28 Jun 2018 04:23:48
	-0700 (PDT)
In-Reply-To: <94e7ab15539bb9a10d86a65c5050a6340ddf58e4.1530176497.git.Arsalan_Awan@mentor.com>
References: <cover.1530176497.git.Arsalan_Awan@mentor.com>
	<94e7ab15539bb9a10d86a65c5050a6340ddf58e4.1530176497.git.Arsalan_Awan@mentor.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 28 Jun 2018 13:23:48 +0200
Message-ID: <CANNYZj8QVo_+b-71rKj2kQcfQdvaDz+QRGcyVckzX-NC_By+1w@mail.gmail.com>
To: Arsalan Awan <Arsalan_Awan@mentor.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] initrdscripts/init-live.sh: fix mounts w/ spaces fail to move to real rootfs
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
X-List-Received-Date: Thu, 28 Jun 2018 11:23:50 -0000
Content-Type: text/plain; charset="UTF-8"

This should go to oe-core mailing list.

Alex

2018-06-28 11:26 GMT+02:00 Arsalan Awan <Arsalan_Awan@mentor.com>:
> From: "Arsalan H. Awan" <Arsalan_Awan@mentor.com>
>
> When there are spaces in the mount points of devices e.g.:
>
>  a partition mounted at "/run/media/My Root Partition-sda1",
>
> the initrd fails to move such mount points over to the
> corresponding directories at /media under the real root filesystem,
> and the mount points would appear at the same location as they were
> mounted on when detected by initrd, for example:
>  here: "/run/media/My Root Partition-sda1"
>  instead of here: "/media/My Root Partition-sda1"
>
> This causes issues such as:
>
>   * The disks/partitions cannot be formated with any filesystem
>     using e.g. mkfs.ext4 or mke2fs in general. When tried to do so
>     by making sure the device is not mounted, it failed with
>     errors such as:
>
>     > /dev/sda1 is apparently in use by the system; will not make a
>       filesystem here!
>     > /dev/sda1: Device or resource busy while setting up superblock
>
>   * The read/write operations become extremely slow. e.g. Under testing,
>     it took approx. 2 hours just to copy 700 MB of data to the partition,
>     and it took more than 40 minutes to delete that data from it.
>     Same operations took under 5 minutes on a partition that had no
>     spaces in its mount point (or that was successfully moved to real
>     root by initrd and appeared under /media instead of /run/media).
>
> This commit fixes such issues by quoting the arguments of failing mount
> move commands and by parsing OCT or HEX encoded special characters
> such as spaces to ASCII charecters in the mount points as kernel
> populates the procfs like so.
>
> Signed-off-by: Arsalan H. Awan <Arsalan_Awan@mentor.com>
> ---
>  meta/recipes-core/initrdscripts/files/init-live.sh | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/meta/recipes-core/initrdscripts/files/init-live.sh b/meta/recipes-core/initrdscripts/files/init-live.sh
> index 441b41c..e58df12 100644
> --- a/meta/recipes-core/initrdscripts/files/init-live.sh
> +++ b/meta/recipes-core/initrdscripts/files/init-live.sh
> @@ -91,8 +91,11 @@ boot_live_root() {
>      # Move the mount points of some filesystems over to
>      # the corresponding directories under the real root filesystem.
>      for dir in `awk '/\/dev.* \/run\/media/{print $2}' /proc/mounts`; do
> -        mkdir -p  ${ROOT_MOUNT}/media/${dir##*/}
> -        mount -n --move $dir ${ROOT_MOUNT}/media/${dir##*/}
> +        # Parse any OCT or HEX encoded chars such as spaces
> +        # in the mount points to actual ASCII chars
> +        dir=`printf $dir`
> +        mkdir -p "${ROOT_MOUNT}/media/${dir##*/}"
> +        mount -n --move "$dir" "${ROOT_MOUNT}/media/${dir##*/}"
>      done
>      mount -n --move /proc ${ROOT_MOUNT}/proc
>      mount -n --move /sys ${ROOT_MOUNT}/sys
> --
> 2.7.4
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

