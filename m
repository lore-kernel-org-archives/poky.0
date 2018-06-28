Return-Path: <Arsalan_Awan@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CC41E0097C; Thu, 28 Jun 2018 07:18:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6735E007AD
	for <poky@yoctoproject.org>; Thu, 28 Jun 2018 07:18:25 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-MBX-04.mgc.mentorg.com)
	by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
	id 1fYXkf-0002rG-8Z from Arsalan_Awan@mentor.com ;
	Thu, 28 Jun 2018 07:18:25 -0700
Received: from SVR-IES-MBX-03.mgc.mentorg.com (139.181.222.3) by
	SVR-IES-MBX-04.mgc.mentorg.com (139.181.222.4) with Microsoft SMTP
	Server (TLS) id 15.0.1320.4; Thu, 28 Jun 2018 15:18:21 +0100
Received: from SVR-IES-MBX-03.mgc.mentorg.com ([fe80::1072:fb6e:87f1:ed17]) by
	SVR-IES-MBX-03.mgc.mentorg.com ([fe80::1072:fb6e:87f1:ed17%22]) with
	mapi id 15.00.1320.000; Thu, 28 Jun 2018 15:18:21 +0100
From: "Awan, Arsalan" <Arsalan_Awan@mentor.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Thread-Topic: [poky] [PATCH 1/1] initrdscripts/init-live.sh: fix mounts w/
	spaces fail to move to real rootfs
Thread-Index: AQHUDsIjZyrva4XGFkGJRWRTD3lBBaR1dq8AgABBTmQ=
Date: Thu, 28 Jun 2018 14:18:21 +0000
Message-ID: <1530195500998.89361@mentor.com>
References: <cover.1530176497.git.Arsalan_Awan@mentor.com>
	<94e7ab15539bb9a10d86a65c5050a6340ddf58e4.1530176497.git.Arsalan_Awan@mentor.com>,
	<CANNYZj8QVo_+b-71rKj2kQcfQdvaDz+QRGcyVckzX-NC_By+1w@mail.gmail.com>
In-Reply-To: <CANNYZj8QVo_+b-71rKj2kQcfQdvaDz+QRGcyVckzX-NC_By+1w@mail.gmail.com>
Accept-Language: en-US, en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [137.202.0.87]
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Thu, 28 Jun 2018 14:18:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

My appologies...=0A=
I've sent it there now.=0A=
=0A=
Thanks=0A=
=0A=
-=0A=
Arsalan=0A=
________________________________________=0A=
From: Alexander Kanavin <alex.kanavin@gmail.com>=0A=
Sent: Thursday, June 28, 2018 4:23 PM=0A=
To: Awan, Arsalan=0A=
Cc: poky@yoctoproject.org=0A=
Subject: Re: [poky] [PATCH 1/1] initrdscripts/init-live.sh: fix mounts w/ s=
paces fail to move to real rootfs=0A=
=0A=
This should go to oe-core mailing list.=0A=
=0A=
Alex=0A=
=0A=
2018-06-28 11:26 GMT+02:00 Arsalan Awan <Arsalan_Awan@mentor.com>:=0A=
> From: "Arsalan H. Awan" <Arsalan_Awan@mentor.com>=0A=
>=0A=
> When there are spaces in the mount points of devices e.g.:=0A=
>=0A=
>  a partition mounted at "/run/media/My Root Partition-sda1",=0A=
>=0A=
> the initrd fails to move such mount points over to the=0A=
> corresponding directories at /media under the real root filesystem,=0A=
> and the mount points would appear at the same location as they were=0A=
> mounted on when detected by initrd, for example:=0A=
>  here: "/run/media/My Root Partition-sda1"=0A=
>  instead of here: "/media/My Root Partition-sda1"=0A=
>=0A=
> This causes issues such as:=0A=
>=0A=
>   * The disks/partitions cannot be formated with any filesystem=0A=
>     using e.g. mkfs.ext4 or mke2fs in general. When tried to do so=0A=
>     by making sure the device is not mounted, it failed with=0A=
>     errors such as:=0A=
>=0A=
>     > /dev/sda1 is apparently in use by the system; will not make a=0A=
>       filesystem here!=0A=
>     > /dev/sda1: Device or resource busy while setting up superblock=0A=
>=0A=
>   * The read/write operations become extremely slow. e.g. Under testing,=
=0A=
>     it took approx. 2 hours just to copy 700 MB of data to the partition,=
=0A=
>     and it took more than 40 minutes to delete that data from it.=0A=
>     Same operations took under 5 minutes on a partition that had no=0A=
>     spaces in its mount point (or that was successfully moved to real=0A=
>     root by initrd and appeared under /media instead of /run/media).=0A=
>=0A=
> This commit fixes such issues by quoting the arguments of failing mount=
=0A=
> move commands and by parsing OCT or HEX encoded special characters=0A=
> such as spaces to ASCII charecters in the mount points as kernel=0A=
> populates the procfs like so.=0A=
>=0A=
> Signed-off-by: Arsalan H. Awan <Arsalan_Awan@mentor.com>=0A=
> ---=0A=
>  meta/recipes-core/initrdscripts/files/init-live.sh | 7 +++++--=0A=
>  1 file changed, 5 insertions(+), 2 deletions(-)=0A=
>=0A=
> diff --git a/meta/recipes-core/initrdscripts/files/init-live.sh b/meta/re=
cipes-core/initrdscripts/files/init-live.sh=0A=
> index 441b41c..e58df12 100644=0A=
> --- a/meta/recipes-core/initrdscripts/files/init-live.sh=0A=
> +++ b/meta/recipes-core/initrdscripts/files/init-live.sh=0A=
> @@ -91,8 +91,11 @@ boot_live_root() {=0A=
>      # Move the mount points of some filesystems over to=0A=
>      # the corresponding directories under the real root filesystem.=0A=
>      for dir in `awk '/\/dev.* \/run\/media/{print $2}' /proc/mounts`; do=
=0A=
> -        mkdir -p  ${ROOT_MOUNT}/media/${dir##*/}=0A=
> -        mount -n --move $dir ${ROOT_MOUNT}/media/${dir##*/}=0A=
> +        # Parse any OCT or HEX encoded chars such as spaces=0A=
> +        # in the mount points to actual ASCII chars=0A=
> +        dir=3D`printf $dir`=0A=
> +        mkdir -p "${ROOT_MOUNT}/media/${dir##*/}"=0A=
> +        mount -n --move "$dir" "${ROOT_MOUNT}/media/${dir##*/}"=0A=
>      done=0A=
>      mount -n --move /proc ${ROOT_MOUNT}/proc=0A=
>      mount -n --move /sys ${ROOT_MOUNT}/sys=0A=
> --=0A=
> 2.7.4=0A=
>=0A=
> --=0A=
> _______________________________________________=0A=
> poky mailing list=0A=
> poky@yoctoproject.org=0A=
> https://lists.yoctoproject.org/listinfo/poky=0A=

