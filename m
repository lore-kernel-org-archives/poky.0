Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web11.11500.1643196273305127698
 for <poky@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 03:24:34 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@axis.com header.s=axis-central1 header.b=UHL7tT0J;
 spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1643196273;
  x=1674732273;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=7cbBibWVXXyrl0cQXl3gCGT8ApB/sgOktrM1wkgmK6w=;
  b=UHL7tT0JSNOURHe+L2BiVg5UXsv+W7cjxdLmjZ9XFqodr5noJCQdApfd
   nv+ThB4qWF+7B9xuohKqTwPHNzhPq5ss3GnNSiQKwH1ufeFrviQI0r8Tl
   I1/mpj7TF5aGXocITJi3DHsmQeyM4PDqo6eFFS2+Sj3c9BsqZnOFEwGkc
   naSfvAw9MjCbOIeBTQbKtpx2/7+AmYcfoFx+g6zth0Cwy0suERrfTawyW
   UvtSOuPi/sE4dz5zLndbuaOxDCJ+jIeSLyN7ShNZsnPK86kB3lZaq7s/k
   OFpIYObIeWCy6FODt9hLMEr7b43wPYEUZjSFUIMb333wtGjuXO7Cblihh
   w==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: Michael Opdenacker <michael.opdenacker@bootlin.com>,
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH v2] local.conf.sample: use https instead of http for SSTATE_MIRRORS
Thread-Topic: [poky] [PATCH v2] local.conf.sample: use https instead of http
 for SSTATE_MIRRORS
Thread-Index: AQHYEqG3OAxfMLYiEEWXa4fEl5Lnu6x1KKQw
Date: Wed, 26 Jan 2022 11:24:30 +0000
Message-ID: <bd6c8c51ff8748f593aec471a1382fd7@axis.com>
References: <16CDCBDE8210E458.21331@lists.yoctoproject.org>
 <20220126104429.1062137-1-michael.opdenacker@bootlin.com>
In-Reply-To: <20220126104429.1062137-1-michael.opdenacker@bootlin.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Behalf=
 Of Michael Opdenacker
> Sent: den 26 januari 2022 11:44
> To: poky@lists.yoctoproject.org
> Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
> Subject: [poky] [PATCH v2] local.conf.sample: use https instead of http f=
or SSTATE_MIRRORS
>=20
> Both http and https work, but we should get fewer questions
> with https
>=20
> Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
> ---
>  meta-poky/conf/local.conf.sample | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf=
.sample
> index 7bdbba0..3100eb1 100644
> --- a/meta-poky/conf/local.conf.sample
> +++ b/meta-poky/conf/local.conf.sample
> @@ -206,7 +206,7 @@ BB_DISKMON_DIRS ??=3D "\
>  # used to accelerate build time. This variable can be used to configure =
the system
>  # to search other mirror locations for these objects before it builds th=
e data itself.
>  #
> -# This can be a filesystem directory, or a remote url such as http or ft=
p. These
> +# This can be a filesystem directory, or a remote url such as https or f=
tp. These
>  # would contain the sstate-cache results from previous builds (possibly =
from other
>  # machines). This variable works like fetcher MIRRORS/PREMIRRORS and poi=
nts to the
>  # cache locations to check for the shared objects.
> @@ -214,7 +214,7 @@ BB_DISKMON_DIRS ??=3D "\
>  # at the end as shown in the examples below. This will be substituted wi=
th the
>  # correct path within the directory structure.
>  #SSTATE_MIRRORS ?=3D "\
> -#file://.* http://someserver.tld/share/sstate/PATH;downloadfilename=3DPA=
TH \n \
> +#file://.* https://someserver.tld/share/sstate/PATH;downloadfilename=3DP=
ATH \n \

While there, you may as well remove the "\n".

>  #file://.* file:///some/local/dir/sstate/PATH"
>=20
>  #
> @@ -229,7 +229,7 @@ BB_DISKMON_DIRS ??=3D "\
>  # Note: For this to work you also need hash-equivalence passthrough to t=
he matching server
>  #
>  #BB_HASHSERVE_UPSTREAM =3D "typhoon.yocto.io:8687"
> -#SSTATE_MIRRORS ?=3D "file://.* http://sstate.yoctoproject.org/3.4/PATH;=
downloadfilename=3DPATH"
> +#SSTATE_MIRRORS ?=3D "file://.* https://sstate.yoctoproject.org/3.4/PATH=
;downloadfilename=3DPATH"
>=20
>  #
>  # Qemu configuration
> --
> 2.25.1

//Peter

