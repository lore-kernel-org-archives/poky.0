Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web08.7401.1625467398625417353
 for <poky@lists.yoctoproject.org>;
 Sun, 04 Jul 2021 23:43:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fnHJ4+lf;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id d2so7852426qvh.2
        for <poky@lists.yoctoproject.org>; Sun, 04 Jul 2021 23:43:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=P/ooJubCIKXcYPmWQ+jO3vaQPHchSCau0Jeo6LKEgxQ=;
        b=fnHJ4+lfPmLxBvYclveKJVNhDtBBNdunuPll0yFeGREstmmGgN2izC3CLRC+TDaTSC
         GLPYzjpVxOrCxXbOeA5jPLvusRaAwDTjx6bXnjhLXgbtonECrgxjvL6d0xcaUL6tPqlA
         Npp9xzNxiCv/XqqkAOUZDXrxO4yKuDaC+jSKH0MQbIyM2ewINDJu9srIpE8PI9feX6tv
         kbAUd/YdfmWEYnFT7EWkd7DFw22yKpYWomJcMMj11lGQqscfqb1wcHKvWuK5rLzxcEVF
         2RBA61DvdrsyiqNltdlu+Q01BzFm/OUqqPWAvc9sfogThXRJkvARybwZwaRFeqB0GHyJ
         OniA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=P/ooJubCIKXcYPmWQ+jO3vaQPHchSCau0Jeo6LKEgxQ=;
        b=Kr91bkwMIXqa3vA50776YZDYUG11N4iLMxq0tCHczkJFf2JQqk0CoMWAUOeeWE7ly0
         P3Yhoes0xupYfaqYzBZimczTji0R+rFZHhaaYLcdQB5SGlSq3P+zFwYFEgVhAC2S9ahK
         WJKF6cfrTevMC9UzX7dVYKoc58ztX/okGI9gJwxHFzc6qdxffTubQlVqNngaRWqLKRsR
         z+hAxiYcPgNcMd7tMI1JVcS4fiPx3BKE7WgWvxpA1TJwNjUdkpWPd7rQxc/dyXTaKrBz
         wON+qor+G0K8JnStVZywuBuoigB2OXBFlQRpeP8LsQgl0XDNvofIQjdrNtQedjP6pxri
         gFAg==
X-Gm-Message-State: AOAM533Eq9PoOZoPrjmkAWKcBXtb08/UPewpOxQnrRZxsxcUIwfk4/0s
	8EJyMTRGtrYiT5qaVdQJAFIHKDzDfUP/vnFzL2Y=
X-Google-Smtp-Source: ABdhPJzPAzRM30da0NMgZNvu/6iRsMgOzb/kn0phUhkm0sSCckCH7S3k0bsVwiRmSqWhMRNRqEPf1YjovufmqY7KBBc=
X-Received: by 2002:a05:6214:1244:: with SMTP id q4mr11602215qvv.50.1625467397731;
 Sun, 04 Jul 2021 23:43:17 -0700 (PDT)
MIME-Version: 1.0
References: <YcdC.1625448530347288172.h0ud@lists.yoctoproject.org>
In-Reply-To: <YcdC.1625448530347288172.h0ud@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sun, 4 Jul 2021 23:43:07 -0700
Message-ID: <CAMKF1spUicE=6vRzP0k5rS+uW5dP7UCfNEVNV6Mp7rvmy7rKkw@mail.gmail.com>
Subject: Re: [poky] Yocto-hardknott build is success with lbpcre2(V10.36) but so files were never copied to /usr/lib/ when the image is flashed #poky #yocto #library #package
To: RK25 <rakesh1225@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d5f92805c65a9e58"

--000000000000d5f92805c65a9e58
Content-Type: text/plain; charset="UTF-8"

How is it being brought into image ? Do you pull it explicitly by
IMAGE_INSTALL or is it being pulled n indirectly via rdepends

On Sun, Jul 4, 2021 at 6:28 PM RK25 <rakesh1225@gmail.com> wrote:

> Hello All,
> We tried to upgrade the Yocto version from Dunfell to Hardknott.  After
> successful build using hardknott, we flashed the generated image to the
> device. But we don't see the libpcre2 package installed under /usr/lib/
> folder.
>
> Below are the missing so files after built and installed/flashed with
> hardknott :
>
> /usr/lib/libpcre2-8.so.0  /usr/lib/libpcre2-posix.so.2
> /usr/lib/libpcre2-8.so.0.9.0  /usr/lib/libpcre2-posix.so.2.0.3
>
>
> No changes were done in Yocto recipe libpcre2_10.36.bb:
>
>
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-support/libpcre?h=hardknott
>
>  pl share any inputs.
>
> 
>
>

--000000000000d5f92805c65a9e58
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">How is it being brought into image ? Do you pull it expli=
citly by IMAGE_INSTALL or is it being pulled n indirectly via rdepends=C2=
=A0</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Sun, Jul 4, 2021 at 6:28 PM RK25 &lt;<a href=3D"mailto:rakesh12=
25@gmail.com">rakesh1225@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><div>Hello All,</div>
<div>We tried to upgrade the Yocto version from Dunfell to Hardknott.=C2=
=A0 After successful build using hardknott, we flashed the generated image=
 to the device. But we don&#39;t see the libpcre2 package installed under /=
usr/lib/ folder.</div>
<div>=C2=A0</div>
<div>Below are the missing so files after built and installed/flashed with=
 hardknott :</div>
<div>=C2=A0</div>
<div>/usr/lib/libpcre2-8.so.0=C2=A0 /usr/lib/libpcre2-posix.so.2=C2=A0 /us=
r/lib/libpcre2-8.so.0.9.0=C2=A0 /usr/lib/libpcre2-posix.so.2.0.3</div>
<div>=C2=A0</div>
<div>=C2=A0</div>
<div>No changes were done in Yocto recipe <a href=3D"http://libpcre2_10.36=
.bb" target=3D"_blank">libpcre2_10.36.bb</a>:</div>
<div>=C2=A0</div>
<div><a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/=
recipes-support/libpcre?h=3Dhardknott" target=3D"_blank">https://git.yoctop=
roject.org/cgit/cgit.cgi/poky/tree/meta/recipes-support/libpcre?h=3Dhardkno=
tt</a></div>
<div>=C2=A0</div>
<div>=C2=A0pl share any inputs.</div>
<br>
<br>
<br>
</blockquote></div></div>

--000000000000d5f92805c65a9e58--
