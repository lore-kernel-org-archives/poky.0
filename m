Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
 by mx.groups.io with SMTP id smtpd.web12.903.1620748222136798618
 for <poky@lists.yoctoproject.org>;
 Tue, 11 May 2021 08:50:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tmn3cRx2;
 spf=pass (domain: gmail.com, ip: 209.85.167.175, mailfrom: proclivis@gmail.com)
Received: by mail-oi1-f175.google.com with SMTP id j75so19398723oih.10
        for <poky@lists.yoctoproject.org>; Tue, 11 May 2021 08:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=NnHoEEqlkNWbrSBFPEyysyqFocuco3fNAEOGdZPHWFQ=;
        b=tmn3cRx2VET5mbajDOg8YgJiyguhJ8bknOfaMoueaNi8uU1RR2FL8fuZxzAvoBTtXJ
         0IvadmF27GKX6XNyriki9BaY1MaU0L8dGU659lL/cy34d/aBg5DxXjS0L3c/5xx+zUBi
         LlySnX5EiXQCeSdeXGcxxLmg6zv494O0ucJp+trFMLbYZH/Tm/OuBhSeMaSVxkOVOA2w
         zG7wy5mU2FfsEp9okYEDTogpBZpcjohnjxwIEzOtGPoBtw4l9zx+DXKLtCjW285q2Y9X
         WQRWDRfdkD/pE009OZvvfwXNZ341bk06OL6T/gDeJ+HIQpk+Q7ApCALB4U4LzCeaxXbl
         cdnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=NnHoEEqlkNWbrSBFPEyysyqFocuco3fNAEOGdZPHWFQ=;
        b=cPbd4cgc0GQd+LtPaBxk5DamUEms/nYR5evP6YvECti9hv4ix2EleXXTOmdAseFeQ8
         I8jaYJswcsQ5ILMehzAo+2VLMft7+XvPZzc10FYhs9dWlDb06Ramc0jcneW9CNG4EL9J
         GInd8uY+pDQ8m6tW13zE6wXELClezkdr2Q4xLF2e3YddjYFVRIVThkrsn+kM48OI/XhU
         MVqFUfv5v2xOJTZhFLAYrGZKfnhwcuB9MQnsfeLtdG9OvVuvac3i7BycwJWoPk14joep
         OJoW8A7SdDWaWuyCjT6LpqBAUzlvJ+D2iKcRcpIjF2X9hLsSNvTDrE3svAJg3OzTUCVf
         R+cw==
X-Gm-Message-State: AOAM530CMHEvH7hd42Sxw5CwOlqAVFz2J+7czFfgYTwyYv7jDpivGPi4
	brnMXt8lG1ZlZKBuHN4Bkq5NJsIngpQ=
X-Google-Smtp-Source: ABdhPJzFWh9fRE3KsMiHUKtr3t+/kYkWIaiLEGK4oAF7jietGg3GZExWrQUaF+mMRf+KHAHQMYhPOg==
X-Received: by 2002:a05:6808:313:: with SMTP id i19mr8927548oie.53.1620748220805;
        Tue, 11 May 2021 08:50:20 -0700 (PDT)
Return-Path: <proclivis@gmail.com>
Received: from [100.72.48.60] (146.sub-174-198-130.myvzw.com. [174.198.130.146])
        by smtp.gmail.com with ESMTPSA id c9sm3339776ooq.31.2021.05.11.08.50.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 08:50:20 -0700 (PDT)
From: "Mike Jones" <proclivis@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [poky] win create failing at mcopy #poky #raspberrypi
Date: Tue, 11 May 2021 09:50:18 -0600
Message-Id: <0C95CDCC-9F67-415C-9C0B-7B868B18EF24@gmail.com>
References: <167E049418E547AC.28983@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
 poky@lists.yoctoproject.org
In-Reply-To: <167E049418E547AC.28983@lists.yoctoproject.org>
To: proclivis@gmail.com
X-Mailer: iPad Mail (18D70)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On May 11, 2021, at 6:59 AM, Mike Jones via lists.yoctoproject.org <proc=
livis=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
> =EF=BB=BF
>>> On May 11, 2021, at 4:20 AM, Richard Purdie <richard.purdie@linuxfound=
ation.org> wrote:
>>>=20
>>> =EF=BB=BFOn Mon, 2021-05-10 at 18:54 -0600, Mike Jones wrote:
>>> I have a little more info on this and a more specific question.
>>>=20
>>> I copied the mtools code and hooked it into the layer so I could put i=
n debug statements.
>>>=20
>>> The problem occurs in charsetConv.c in the function cp_open, when it t=
ries to do an iconv_open using
>>> =E2=80=9CCP850=E2=80=9D, which fails.
>>>=20
>>> I ran =E2=80=9Ciconv =E2=80=94list=E2=80=9D to see what it can convert=
, and CP850 is not listed.
>>>=20
>>> To prove this is the problem, I hardcoded the iconv_open with =E2=80=
=9CASCII=E2=80=9D and bit bake can go all the way
>>> through and =E2=80=9Cwic create=E2=80=9D works properly.
>>>=20
>>> So I ran iconv =E2=80=94version and saw it was =E2=80=9CGNU libc 2.31=
=E2=80=9D so I poked around those layers.
>>>=20
>>> Best I can guess is this line from the mtools layer should tell the li=
bc to provide CP850 via this line:
>>>=20
>>> RDEPENDS_${PN}_libc-glibc =3D "glibc-gconv-ibm850=E2=80=9D
>>>=20
>>> Except that that is for runtime, and this is build time.
>>>=20
>>> So I am not sure how glibc decides what converters are used. Is it jus=
t a set of defaults? Is there a layer
>>> somewhere defining them I could not find?
>>>=20
>>> It seems that somewhere along the way, mtools changed its default to u=
se 850, and it is not compatible
>>> anymore.
>>>=20
>>> The solution is probably to tell glibc to provide CP850.
>>>=20
>>> Does anyone know how to do that?
>>=20
>> Which version of Yocto Project are you using? Are you using buildtools-=
tarball=20
>> or uninative in your build?
>=20
> I run poky/scripts/install-buildtools with no command line options.
>=20
> It contains these defaults:
>=20
> DEFAULT_INSTALL_DIR =3D os.path.join(os.path.split(scripts_path)[0],'bui=
ldtools')
> DEFAULT_BASE_URL =3D 'http://downloads.yoctoproject.org/releases/yocto'
> DEFAULT_RELEASE =3D 'yocto-3.2_M3'
> DEFAULT_INSTALLER_VERSION =3D '3.1+snapshot'
> DEFAULT_BUILDDATE =3D '20200923'
>=20
> I see I can use command line options to use a different release if you h=
ave guidance on what to use.

After tweaking the script to change sha256 to sha256sum and removing one \=
s from the regular expression, I installed 3.2.3 and I will bitbake and see=
 it it works.

I am guessing the script changes are due to an older version of poky, but =
poky is part of the openbmc project clone, not something we manually clone =
from a yocto repository.

If this works, I=E2=80=99ll have to address that issue on the openbmc list=
serv.

Mike

>=20
> Mike
>=20
>>=20
>> I suspect you need a newer buildtools-tarball version which includes CP=
850.
>>=20
>> Cheers,
>>=20
>> Richard
>>=20
>=20
>=20
>=20
