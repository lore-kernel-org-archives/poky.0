Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web12.1627.1579941399630221367
 for <poky@lists.yoctoproject.org>;
 Sat, 25 Jan 2020 00:36:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AYuwkeUO;
 spf=pass (domain: gmail.com, ip: 209.85.128.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f41.google.com with SMTP id t23so1789803wmi.1
        for <poky@lists.yoctoproject.org>; Sat, 25 Jan 2020 00:36:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=eySQHbzoVNnQ0ca9sAdTyCkL+AsfIhLUUVXQ0XnYfIM=;
        b=AYuwkeUOUwoLuXkzT+xgtrAxsX7npTIRI4ZRVreiWet9QJ2ukyGohKW5V7PJEH/my7
         GZlrzwsyNp8shGPfhbUufzpnqDQlQzgq3UfIE8lnUKm/SySCFS+afM9vMJo5ecO1UApi
         yea3pNPBhVQw5ob1aplRJnMFNwPSduWcNAMp8kHFo7vddknZKiq0T6GcxrEmjglfHgBm
         Ie4qRV7JzwO0Cc9gGa3jnpQpRMZEhy+7RActQHsg68wyeXmV/VZRRlYrE8EE6JCV0m3x
         wxS2JXWPdAcDTOe1g1cVbrgFsqombBZJOS1icdRqfRVwWIKCfrtXsG7mEA3OtVminad+
         6Ang==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=eySQHbzoVNnQ0ca9sAdTyCkL+AsfIhLUUVXQ0XnYfIM=;
        b=SVRx7E0Am+kh/o9Nw2oTirl3pWQ7jLZxitPE9x5WMn8XevtJF9TJVlvw9ZcmXBorKm
         huUsFV2VbqAmQeqN1/74tHPQsns1QYs3PGQjCsvYpFdTjzomcH/PfAI6pL1lNye0NAgO
         864ZMhckNKVeywuqSaZNKO/tSGIO38hpMoy08n0CWk22l7lgE3kd0+lor+BcpldFYR6d
         WDlYEpVyPIDqez3DH7yMT19c9EIWtcckYoo9Lral5AEAX9IESRWcSrjayQ2rGMupapQH
         QDpKf0ksV9P2+vQ34F9i1/KxVw7RnFRjee6xkUC+qBu7dcwkuVTsRpikO/golgd2fSgL
         8XrQ==
X-Gm-Message-State: APjAAAWxzJE8CluUIAsniZL7dIEMwpDk3Fzv3Nl2MwU+3atvon70rZ8m
	jPu7lt7k3n8kWjmxlul2W4Wz0Xb3
X-Google-Smtp-Source: APXvYqy873oEG+NNV/vliW+fDwo7Y7mRVaQCDc38Y9SgeW72XkxNEVOwqi+XPl2D/WdG/zv5LUC3bQ==
X-Received: by 2002:a05:600c:2503:: with SMTP id d3mr3327096wma.84.1579941397826;
        Sat, 25 Jan 2020 00:36:37 -0800 (PST)
Return-Path: <alex.kanavin@gmail.com>
Received: from ?IPv6:2a02:2450:1011:56f:1dd4:9946:1e10:901? ([2a02:2450:1011:56f:1dd4:9946:1e10:901])
        by smtp.gmail.com with ESMTPSA id n8sm10855887wrx.42.2020.01.25.00.36.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Jan 2020 00:36:37 -0800 (PST)
Mime-Version: 1.0 (1.0)
Subject: Re: [poky] [PATCH 1/1] sudo: update to 1.8.30
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
X-Mailer: iPhone Mail (16G102)
In-Reply-To: <bc6acc24336713780c7a4fa2fe29baee115db975.1579940252.git.sivakumar.bs@gmail.com>
Date: Sat, 25 Jan 2020 09:36:36 +0100
Cc: poky@lists.yoctoproject.org
Message-Id: <D6A85533-8959-4DE7-9BDF-23AC70D59D9F@gmail.com>
References: <cover.1579940252.git.sivakumar.bs@gmail.com> <bc6acc24336713780c7a4fa2fe29baee115db975.1579940252.git.sivakumar.bs@gmail.com>
To: Siva Balasubramanian <sivakumar.bs@gmail.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Please send this patch to openembedded-core mailing list.

Alex

> On 25 Jan 2020, at 9.25, Siva Balasubramanian <sivakumar.bs@gmail.com> w=
rote:
>=20
> Signed-off-by: Siva Balasubramanian <sivakumar.bs@gmail.com>
> ---
> meta/recipes-extended/sudo/{sudo_1.8.29.bb =3D> sudo_1.8.30.bb} | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
> rename meta/recipes-extended/sudo/{sudo_1.8.29.bb =3D> sudo_1.8.30.bb} (=
91%)
>=20
> diff --git a/meta/recipes-extended/sudo/sudo_1.8.29.bb b/meta/recipes-ex=
tended/sudo/sudo_1.8.30.bb
> similarity index 91%
> rename from meta/recipes-extended/sudo/sudo_1.8.29.bb
> rename to meta/recipes-extended/sudo/sudo_1.8.30.bb
> index 8da2d64..0aa9c59 100644
> --- a/meta/recipes-extended/sudo/sudo_1.8.29.bb
> +++ b/meta/recipes-extended/sudo/sudo_1.8.30.bb
> @@ -7,8 +7,8 @@ SRC_URI =3D "https://www.sudo.ws/dist/sudo-${PV}.tar.gz =
\
>=20
> PAM_SRC_URI =3D "file://sudo.pam"
>=20
> -SRC_URI[md5sum] =3D "b28dabff9c460f115fe74de4d6a6f79d"
> -SRC_URI[sha256sum] =3D "ce53ffac9604e23321334d8ba8ac59ded2bcf624fdb9dbd=
e097ab2049bf29c7c"
> +SRC_URI[md5sum] =3D "d56cd5835b1cc9852bd76ddaaa572475"
> +SRC_URI[sha256sum] =3D "a35ad3ddc7465703e04190d3ff0b8d78ded9246749becf9=
a014dcb9c31c579e7"
>=20
> DEPENDS +=3D " virtual/crypt ${@bb.utils.contains('DISTRO_FEATURES', 'pa=
m', 'libpam', '', d)}"
> RDEPENDS_${PN} +=3D " ${@bb.utils.contains('DISTRO_FEATURES', 'pam', 'pa=
m-plugin-limits pam-plugin-keyinit', '', d)}"
> --=20
> 2.7.4
>=20
>=20
