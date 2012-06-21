Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4055E00723
	for <poky@yoctoproject.org>; Thu, 21 Jun 2012 08:52:13 -0700 (PDT)
Received: by eaab16 with SMTP id b16so379599eaa.35
	for <poky@yoctoproject.org>; Thu, 21 Jun 2012 08:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=TYEsaLCMZ9u+jNgIMTxxf8SpLgg1uwQTkz/VGo00edc=;
	b=x8qWJq+JjqatjTCII64F/LwIyvvjFEiuszRw1yJrU8xKSCwc0+j0afjCQfsx8d9n7j
	cTF6yBoOjcBpuA2ybfTCl8FVhLcuYIf3jRrdSVQ7gNuw4lEmYkYOugnRIkRwKXxkzGb8
	pv1kwEPn6bXC14xWey0TsZhndr4iI4sgTe56RjDIY6H1y54sBeKpqvNp4uq/c9wzjjVv
	poiVfTrcjsvARjgC3vVu8xPx2gWink/MERyRItDQz4WcctWLvEn7RKj8JT3yCIayCB2S
	FAIADMNDzVU+rOVRzwJQugcqJZgcCS0cZQQyRAjofNFZgVKFRhUXqy7ZmPHsZtHXO0iw
	4yDw==
Received: by 10.14.185.137 with SMTP id u9mr6484931eem.220.1340293932580; Thu,
	21 Jun 2012 08:52:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Thu, 21 Jun 2012 08:51:42 -0700 (PDT)
In-Reply-To: <3a231c484aaa511b95f9232d000b1190327b4626.1340038494.git.scott.a.garman@intel.com>
References: <cover.1340038493.git.scott.a.garman@intel.com>
	<3a231c484aaa511b95f9232d000b1190327b4626.1340038494.git.scott.a.garman@intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 21 Jun 2012 08:51:42 -0700
Message-ID: <CAMKF1sp4KvDtK68NQNtOhSmCF6WK738Yr9cXOA0ntkHJ9wpYUQ@mail.gmail.com>
To: Scott Garman <scott.a.garman@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/8] sanity.bbclass: warn the user if BBPATH contains wrong entries
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
X-List-Received-Date: Thu, 21 Jun 2012 15:52:14 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 18, 2012 at 12:56 PM, Scott Garman <scott.a.garman@intel.com> w=
rote:
> From: Laurentiu Palcu <laurentiu.palcu@intel.com>
>
> If BBPATH references the working directory, the user is warned and asked
> to fix the problem.
>
> [Yocto #1465]
>
> (From OE-Core rev: 73f10ae955ba217078fa2c5288b736ae8a30b184)
>
> Signed-off-by: Laurentiu Palcu <laurentiu.palcu@intel.com>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
> Reworked commit to fix merge conflicts with denzil branch.
>
> Signed-off-by: Scott Garman <scott.a.garman@intel.com>
> ---
> =C2=A0meta/classes/sanity.bbclass | =C2=A0 13 ++++++++++++-
> =C2=A01 file changed, 12 insertions(+), 1 deletion(-)
>
> diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
> index 9755694..298372b 100644
> --- a/meta/classes/sanity.bbclass
> +++ b/meta/classes/sanity.bbclass
> @@ -310,7 +310,18 @@ def check_sanity(sanity_data):
> =C2=A0 =C2=A0 if "." in data.getVar('PATH', sanity_data, True).split(":")=
:
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 messages =3D messages + "PATH contains '.' wh=
ich will break the build, please remove this"
>
> - =C2=A0 =C2=A0if data.getVar('TARGET_ARCH', sanity_data, True) =3D=3D "a=
rm":
> + =C2=A0 =C2=A0bbpaths =3D sanity_data.getVar('BBPATH', True).split(":")
> + =C2=A0 =C2=A0if "." in bbpaths or "" in bbpaths:
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0# TODO: change the following message to fata=
l when all BBPATH issues
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0# are fixed
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0bb.warn("BBPATH references the current direc=
tory, either through " =C2=A0 =C2=A0\
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0"an empty entry,=
 or a '.'.\n\t This is unsafe and means your "\
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0"layer configura=
tion is adding empty elements to BBPATH.\n\t "\
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0"Please check yo=
ur layer.conf files and other BBPATH " =C2=A0 =C2=A0 =C2=A0 =C2=A0\
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0"settings to rem=
ove the current working directory " =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0"references.");
> +
> + =C2=A0 =C2=A0if sanity_data.getVar('TARGET_ARCH', True) =3D=3D "arm":

No I get this warning when I use OE-Core standalone. The reason is for OE-C=
ore

BBPATH .=3D ":${LAYERDIR}"

and there are no more entries prepended since its the only layer so
leading : is causing
this warning to show up.

> =C2=A0 =C2=A0 =C2=A0 =C2=A0 # This path is no longer user-readable in mod=
ern (very recent) Linux
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 try:
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if os.path.exists("/proc/sys/vm=
/mmap_min_addr"):
> --
> 1.7.9.5
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

