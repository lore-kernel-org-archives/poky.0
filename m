Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web08.4775.1612325487721493243
 for <poky@lists.yoctoproject.org>;
 Tue, 02 Feb 2021 20:11:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CntT5n0h;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id v126so22169911qkd.11
        for <poky@lists.yoctoproject.org>; Tue, 02 Feb 2021 20:11:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=dPXWr00BHcuLr6W/tJNj4mvbZrrHKY2HqroMrJX3neA=;
        b=CntT5n0hqGmu5b+CCjcewRPaeQV1mCz7oi5AlxICnNFZDx2ouEFaXhbu985yqrvI7I
         p5olM2yikFd3/+eBtpfXgm9cW8uPZRZwaPUCWTLwmzc1AUQBRvKQ67nY9jLTEIYClQPq
         O3ZA+EKjK5JQlsyDqx7zd3S+xpOc3zyDEigUjJhjgutQaTRBAWKWugp5EvogN1uozxkr
         8qG+wdUEX1JJbwQpDaEy6HIOZwkCwGzjZGIo9qgGqxVjMqMyCWWopb4zMkpIevVVrjbh
         7XtsieT65XNMIwgMd/AZN2tWMY8K9jSeT5lKMSZQE88vNvVy2W5Mm4CEtTea7aEbovvv
         DfQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=dPXWr00BHcuLr6W/tJNj4mvbZrrHKY2HqroMrJX3neA=;
        b=WdIfdvhX+XkuH/k+dnyIFladyAf19JAxxCY4D7qkkZPXxqTnlhCp8yTSkINKTw97VQ
         NpigJABGAJWyGtCv2xnlpppsDXrg8woFN1GQLI3lfMLhB56Nexq4DFcSbLLRSRr5ocpK
         P4XQso7TwqFmE0knT9lUl1jyF4zZ+VBg6jWLq8v/dZqbA7myQqTWGvB7Um0SSiuR6/z3
         CbG6L4+zRIJRJ5L/8nDzFYIQTolXyXz6OHR/vSSOsbKb3iiIf6UwB8hHBPmvp75pC8L6
         qhgucaq+R7fHmU5WUcdCrM2UB9ec8FaptsNaKFTsNdSl0jsJZzEPLaQu6J/9v43NrOcw
         E5QA==
X-Gm-Message-State: AOAM5304MFhBEl5XN2ouMVPx0znWLihBRMTE9WoexNlBeZfUm2vDJ0cw
	j6JoGNn3um+Byeyoj5PI1iQfm3Jx2MIgQsX8MGdvhUJiTpeBQg==
X-Google-Smtp-Source: ABdhPJxqPCn0Oh0lRmg5uF6QY0JSkYLU2pVVWe8Ryyr6kVIYK1HEDaLE9armpfZ7cHD93UQARKiCR44q9Mvp3V1HxKc=
X-Received: by 2002:a05:620a:2211:: with SMTP id m17mr961186qkh.9.1612325486735;
 Tue, 02 Feb 2021 20:11:26 -0800 (PST)
MIME-Version: 1.0
References: <7ca9.1611937238495516995.3t90@lists.yoctoproject.org>
In-Reply-To: <7ca9.1611937238495516995.3t90@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 2 Feb 2021 20:11:00 -0800
Message-ID: <CAMKF1spaQzY_Adj02=k_VJAeHO-q7M69To1FPQhH8MQUnSyYAg@mail.gmail.com>
Subject: Re: [poky] IMAGE_ROOTFS_EXTRA_SPACE and IMAGE_OVERHEAD_FACTOR do not work as expected #yocto
To: ejo@datarespons.no
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I would suggest to try something like this

# Add 3G space
IMAGE_ROOTFS_EXTRA_SPACE_appendl =3D " + 3000000"

On Fri, Jan 29, 2021 at 8:20 AM <ejo@datarespons.no> wrote:
>
> If I set IMAGE_OVERHEAD_FACTOR =3D "1" and IMAGE_ROOTFS_EXTRA_SPACE =3D =
"600000", I would expect the generated rootfs to have an additional freespa=
ce of 600M but I get this:
>
> ```
> $ ls tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129143554.ro=
otfs.ext4 -lh
> -rw-r--r-- 2 ejo ejo 1,3G jan.  29 17:09 tmp/deploy/images/rpi-cm3/core-=
base-image-rpi-cm3-20210129160710.rootfs.ext4
> $ ls tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129143554.ro=
otfs.ext4 -l
> -rw-r--r-- 2 ejo ejo 1308622848 jan.  29 17:09 tmp/deploy/images/rpi-cm3=
/core-base-image-rpi-cm3-20210129160710.rootfs.ext4
>
>
> $ fdisk tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129143554=
.rootfs.wic -l
> Device                                                                  =
    Boot   Start     End Sectors  Size Id Type
> tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129143554.rootfs.=
wic1 *       8192   69335   61144 29,9M  c W95 FAT32 (LBA)
> tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129143554.rootfs.=
wic2        73728 3396403 3322676  1,6G 83 Linux
> tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129143554.rootfs.=
wic3      3399680 6722355 3322676  1,6G 83 Linux
> tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129143554.rootfs.=
wic4      6725632 8056831 1331200  650M 83 Linux
>
> ```
> Vs when not setting the variables:
>
> ```
>
> $ ls tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129143554.ro=
otfs.ext4 -lh
> -rw-r--r-- 2 ejo ejo 856M jan.  29 16:58 tmp/deploy/images/rpi-cm3/core-=
base-image-rpi-cm3-20210129155627.rootfs.ext4
> $ ls tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129143554.ro=
otfs.ext4 -l
> -rw-r--r-- 2 ejo ejo 897581056 jan.  29 16:58 tmp/deploy/images/rpi-cm3/=
core-base-image-rpi-cm3-20210129155627.rootfs.ext4
>
>
> $ fdisk tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129143554=
.rootfs.wic -l
> Device                                                                  =
    Boot   Start     End Sectors  Size Id Type
> tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129155627.rootfs.=
wic1 *       8192   69335   61144 29,9M  c W95 FAT32 (LBA)
> tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129155627.rootfs.=
wic2        73728 2352743 2279016  1,1G 83 Linux
> tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129155627.rootfs.=
wic3      2359296 4638311 2279016  1,1G 83 Linux
> tmp/deploy/images/rpi-cm3/core-base-image-rpi-cm3-20210129155627.rootfs.=
wic4      4644864 5976063 1331200  650M 83 Linux
>
> ```
> So it looks like by setting the variables bitbake first adds 411041792 b=
ytes 392 MiB to the .ext4 file, then WKS adds another 0.3GB to each rootfs =
partition. Why does this happen? Why isn't the full 600MB added to the .ext=
4 file? This causes issues with the meta-rauc layer which uses .ext4 file w=
hen creating update bundles, see issue here https://github.com/rauc/meta-ra=
uc/issues/173
>
> IMO when setting IMAGE_ROOTFS_EXTRA_SPACE =3D "600000" 600kB should be a=
dded to the .ext4 file not 392MiB and then another 300MB by growing the par=
tition in wks.
>=20
>
