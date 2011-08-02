Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by mx1.pokylinux.org (Postfix) with ESMTP id 617A34C80053
	for <poky@yoctoproject.org>; Tue,  2 Aug 2011 18:03:11 -0500 (CDT)
Received: from mail-gx0-f180.google.com ([209.85.161.180])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 02 Aug 2011 16:03:10 -0700
Received: by gxk10 with SMTP id 10so280194gxk.25
	for <poky@yoctoproject.org>; Tue, 02 Aug 2011 16:03:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.154.97 with SMTP id g61mr4609028yhk.265.1312326189686;
	Tue, 02 Aug 2011 16:03:09 -0700 (PDT)
Received: by 10.236.105.131 with HTTP; Tue, 2 Aug 2011 16:03:09 -0700 (PDT)
In-Reply-To: <1312318248-28422-1-git-send-email-sgw@linux.intel.com>
References: <1312318248-28422-1-git-send-email-sgw@linux.intel.com>
Date: Tue, 2 Aug 2011 16:03:09 -0700
Message-ID: <CAPhnLPC2b7nHGnydfDpbykNaRzUhE=5SGCJK=FctQ8qzN5LJDQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] atom-pc.conf: Add live image type
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
X-List-Received-Date: Tue, 02 Aug 2011 23:03:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I've fixed this on the autobuilder so we don't generate the -live
images. Once I get a moment for restart, this will go in.

-b

On Tue, Aug 2, 2011 at 1:50 PM, Saul Wold <sgw@linux.intel.com> wrote:
> This change will cause the live image to be built by default
> No longer is it necessary to build a -live image type.
>
> Signed-off-by: Saul Wold <sgw@linux.intel.com>
> ---
> =A0meta-yocto/conf/machine/atom-pc.conf | =A0 =A02 +-
> =A01 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/meta-yocto/conf/machine/atom-pc.conf b/meta-yocto/conf/machi=
ne/atom-pc.conf
> index 6ac012f..a0a8104 100644
> --- a/meta-yocto/conf/machine/atom-pc.conf
> +++ b/meta-yocto/conf/machine/atom-pc.conf
> @@ -28,7 +28,7 @@ XSERVER ?=3D "xserver-xf86-dri-lite \
>
> =A0MACHINE_EXTRA_RRECOMMENDS =3D "kernel-modules eee-acpi-scripts"
>
> -IMAGE_FSTYPES ?=3D "ext3 cpio.gz"
> +IMAGE_FSTYPES ?=3D "ext3 cpio.gz live"
>
> =A0APPEND +=3D "usbcore.autosuspend=3D1"
>
> --
> 1.7.3.4
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

