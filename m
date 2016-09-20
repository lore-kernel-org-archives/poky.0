Return-Path: <raymond.tan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2D42E00AD7; Tue, 20 Sep 2016 05:59:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77BE4E00AB6
	for <poky@yoctoproject.org>; Tue, 20 Sep 2016 05:59:41 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP; 20 Sep 2016 05:59:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,368,1470726000"; d="scan'208";a="1053807079"
Received: from kmsmsx154.gar.corp.intel.com ([172.21.73.14])
	by orsmga002.jf.intel.com with ESMTP; 20 Sep 2016 05:59:41 -0700
Received: from pgsmsx104.gar.corp.intel.com ([169.254.3.75]) by
	KMSMSX154.gar.corp.intel.com ([169.254.12.140]) with mapi id
	14.03.0248.002; Tue, 20 Sep 2016 20:59:39 +0800
From: "Tan, Raymond" <raymond.tan@intel.com>
To: "Yang, Liezhi (Wind River)" <liezhi.yang@windriver.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] [meta] live image booting pauses with 'waiting for
	removable media' on Krogoth
Thread-Index: AQHSEx2hPXAqlOcZrEqEvM44UFukmaCCT9jQ
Date: Tue, 20 Sep 2016 12:59:38 +0000
Message-ID: <F0CA9E243F4F424B836EAC30E41BF4CF5DF4347C@PGSMSX104.gar.corp.intel.com>
References: <F0CA9E243F4F424B836EAC30E41BF4CF5DF3C973@PGSMSX104.gar.corp.intel.com>
	<b23bead8-7a49-60d4-aaab-3fb2e7c23856@windriver.com>
In-Reply-To: <b23bead8-7a49-60d4-aaab-3fb2e7c23856@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Subject: Re: [meta] live image booting pauses with 'waiting for removable media' on Krogoth
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
X-List-Received-Date: Tue, 20 Sep 2016 12:59:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Robert,

Thanks for the suggestion. However, I'm running with initrd, thus I'm using=
 root=3D/dev/ram0.=20
After some debugging today, I found out that the mount.sh script was indeed=
 called with the add event fired from "udevadm trigger --action=3Dadd",=20
but the failure happened due to the condition [ -n "$ID_FS_TYPE" -o "$media=
_type" =3D "cdrom" ]  is not satisfied.=20

I'm getting blank for $ID_FS_TYPE udev property on /dev/hda. I tested by ch=
anging the overall IF logic to the following:

            if [ "$ACTION" =3D "add" ] && [ -n "$DEVNAME" ]; then

And the rebuilt live image is booting up fine. With the image booted, I rec=
hecked the ID_FS_TYPE property of the drive in both Krogoth and Jethro imag=
e,=20
I'm getting different results. In Krogoth, there's no property with ID_FS_T=
YPE at all with " udevadm info -q all -n /dev/hda ". But if I'm using blkid=
 to get=20
fs type, I'm able to get the vfat type from it.

I checked the changes on udev from Jethro to Krogoth, I noticed that udev w=
as replaced with eudev, could this be the implementation varies between the=
m?=20

Warm Regards,=20

=A0Raymond Tan


> -----Original Message-----
> From: Robert Yang [mailto:liezhi.yang@windriver.com]
> Sent: Tuesday, September 20, 2016 5:02 PM
> To: Tan, Raymond <raymond.tan@intel.com>; poky@yoctoproject.org
> Subject: Re: [poky] [meta] live image booting pauses with 'waiting for
> removable media' on Krogoth
>=20
>=20
>=20
> On 09/19/2016 09:52 PM, Tan, Raymond wrote:
> > Dear All,
> >
> > While booting live image with core-image-sato.hddimg, the boot stalls w=
ith
> the message "waiting for removable media".
> > If I set "debugshell" in the kernel boot parameter, after the default 3=
0
> seconds sleep to wait for mounted device, I will get the error "Cannot fi=
nd
> rootfs.img file in /run/media/*, dropping to shell".
> >
> > If I edit the init-live.sh to manually mount the /dev/hda drive, the bo=
ot will
> complete successfully. It seems that the udev isn't mounting the /dev/hda=
.
>=20
> Try to edit the boot menu when starting boot, for grub, press "e", for
> syslinux, press "tab", IIRC. Then change root=3D/dev/foo to root=3D/dev/h=
daX, It
> is root=3D/dev/sda2 by default ? If you can't boot it, does your kernel s=
upport
> scsi drive ? Or you can set ROOT_VM =3D "root=3D/dev/hdaX" in local.conf =
and
> rebuild the image.
>=20
> // Robert
>=20
> >
> > This issue is only seen in Krogoth branch, but not on Jethro.
> >
> > What could possibly be the problem?
> >
> > Warm Regards,
> >
> >  Raymond Tan
> >
> >

