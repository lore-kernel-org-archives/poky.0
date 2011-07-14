Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 404614C800AB
	for <poky@yoctoproject.org>; Thu, 14 Jul 2011 10:57:45 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yxl11 with SMTP id 11so214424yxl.35
	for <poky@yoctoproject.org>; Thu, 14 Jul 2011 08:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=KSJlgKxhW2iB2SMCmmPnJDruxT8WUCos75PzdpYKYSY=;
	b=is9m9NUkOLREMQVoCLh+NDsUwLVtLnTy3MenbxxST7ktM6RKC75EFp9qG/YJT9DNAj
	pBsg35R7WzZ/J/pbQONdvtrJp0063B5hgsE/19+uHy0/z9q13c4DA6EWUMMqxdovoagi
	iY9XHX+xnc04axWAGZl44Pz9g4ZWD5CSeiO+w=
MIME-Version: 1.0
Received: by 10.91.32.35 with SMTP id k35mr2583914agj.140.1310659062952; Thu,
	14 Jul 2011 08:57:42 -0700 (PDT)
Received: by 10.90.148.11 with HTTP; Thu, 14 Jul 2011 08:57:42 -0700 (PDT)
In-Reply-To: <ba97d44dfd74473c3b790c0dedcaf362a4acf844.1310656158.git.paul.eggleton@linux.intel.com>
References: <cover.1310656158.git.paul.eggleton@linux.intel.com>
	<ba97d44dfd74473c3b790c0dedcaf362a4acf844.1310656158.git.paul.eggleton@linux.intel.com>
Date: Thu, 14 Jul 2011 11:57:42 -0400
Message-ID: <CADkTA4OEs2Bj-fmFRnW=FOENSvTXQPo86E3KbGeocD3QSF745w@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/2] linux-yocto: allow configuration of MAC addresses for mpc8315e-rdb
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 14 Jul 2011 15:57:45 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 14, 2011 at 11:13 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Add MPC8315ERDB_MAC0 and MPC8315ERDB_MAC1 variables to allow specifying
> the MAC addresses to be used in the dtb. The default is 00:00:00:00:00:00=
,
> however with the version of u-boot supplied from the factory, these must
> match the hardware or configuring the network at boot time will fail, and
> thus booting from an NFS root will not work.
>
> Newer versions of u-boot support passing MAC address values through and
> would not need this fix; however in the absence of a safe established
> procedure for updating u-boot on these boards this workaround will have
> to suffice.
>
> Addresses [YOCTO #1227]
>
> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
> =A0.../linux/linux-yocto/mpc8315e-rdb-dts.patch =A0 =A0 =A0 | =A0 28 ++++=
++++++++++++++++
> =A0.../linux/linux-yocto_2.6.37.bbappend =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
 16 +++++++++++
> =A02 files changed, 44 insertions(+), 0 deletions(-)
> =A0create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto/mpc8315=
e-rdb-dts.patch
>
> diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto/mpc8315e-rdb-dts=
.patch b/meta-yocto/recipes-kernel/linux/linux-yocto/mpc8315e-rdb-dts.patch
> new file mode 100644
> index 0000000..d575d01
> --- /dev/null
> +++ b/meta-yocto/recipes-kernel/linux/linux-yocto/mpc8315e-rdb-dts.patch
> @@ -0,0 +1,28 @@
> +Enable configuration of the MAC addresses for the two ethernet ports on
> +the MPC8315E-RDB. This modifies the dts file, do_configure will use
> +sed to substitute the appropriate values in, and they will be built into
> +the dtb file.
> +
> +Upstream-status: Inappropriate [configuration]
> +Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
> +
> +--- linux/arch/powerpc/boot/dts/mpc8315erdb.dts
> ++++ linux/arch/powerpc/boot/dts/mpc8315erdb.dts
> +@@ -205,7 +205,7 @@
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 compatible =3D "gianfar";
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 reg =3D <0x24000 0x1000>;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ranges =3D <0x0 0x24000 0x1=
000>;
> +- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0local-mac-address =3D [ 00 =
00 00 00 00 00 ];
> ++ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0local-mac-address =3D [ SED=
_MAC_ADDRESS_0 ];
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 interrupts =3D <32 0x8 33 0=
x8 34 0x8>;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 interrupt-parent =3D <&ipic=
>;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 tbi-handle =3D <&tbi0>;
> +@@ -248,7 +248,7 @@
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 compatible =3D "gianfar";
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 reg =3D <0x25000 0x1000>;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ranges =3D <0x0 0x25000 0x1=
000>;
> +- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0local-mac-address =3D [ 00 =
00 00 00 00 00 ];
> ++ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0local-mac-address =3D [ SED=
_MAC_ADDRESS_1 ];
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 interrupts =3D <35 0x8 36 0=
x8 37 0x8>;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 interrupt-parent =3D <&ipic=
>;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 tbi-handle =3D <&tbi1>;
> diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend =
b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> index b12dcef..a1c50a2 100644
> --- a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> +++ b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> @@ -13,3 +13,19 @@ COMPATIBLE_MACHINE_mpc8315e-rdb =3D "mpc8315e-rdb"
> =A0COMPATIBLE_MACHINE_routerstationpro =3D "routerstationpro"
> =A0COMPATIBLE_MACHINE_beagleboard =3D "beagleboard"
> =A0COMPATIBLE_MACHINE_atom-pc =3D "atom-pc"
> +
> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> +SRC_URI_append_mpc8315e-rdb =3D " file://mpc8315e-rdb-dts.patch"
> +
> +do_configure_prepend_mpc8315e-rdb() {
> + =A0 =A0 =A0 if [ -z "${MPC8315ERDB_MAC0}" -o -z "${MPC8315ERDB_MAC1}" ]=
 ; then
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 echo "Please set MPC8315ERDB_MAC0 and MPC83=
15ERDB_MAC1 in your local.conf (based on"
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 echo "the MAC addresses from your hardware,=
 you can use the bdinfo command in u-boot)"
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 exit 1
> + =A0 =A0 =A0 fi
> + =A0 =A0 =A0 MAC0=3D`echo ${MPC8315ERDB_MAC0} | sed 's/:/ /g'`
> + =A0 =A0 =A0 MAC1=3D`echo ${MPC8315ERDB_MAC1} | sed 's/:/ /g'`
> + =A0 =A0 =A0 sed -i -e "s/SED_MAC_ADDRESS_0/$MAC0/g" ${WORKDIR}/linux/ar=
ch/powerpc/boot/dts/mpc8315erdb.dts
> + =A0 =A0 =A0 sed -i -e "s/SED_MAC_ADDRESS_1/$MAC1/g" ${WORKDIR}/linux/ar=
ch/powerpc/boot/dts/mpc8315erdb.dts
> +}

The change looks fine, in the sense that it'll work, but it's a lot of hoop=
s
to jump through for the mac address. In the past, we've solved this by
allowing the mac address to be specified via the bootline, which we could
then simply drop into the boot environment and have it work more
easily.

I didn't think of this when we were talking about this issue, but now that
I see the change ... it's been faulted into the right memory banks.

I'll dig up these patches, and we can take them for a spin and hopefully we
can drop this part of the series.

Bruce

> +
> --
> 1.7.4.1
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

