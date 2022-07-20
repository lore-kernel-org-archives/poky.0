Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web10.56477.1658334592393850404
 for <poky@lists.yoctoproject.org>;
 Wed, 20 Jul 2022 09:29:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=M3dEcRmk;
 spf=pass (domain: gmail.com, ip: 209.85.222.177, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f177.google.com with SMTP id b25so13278762qka.11
        for <poky@lists.yoctoproject.org>; Wed, 20 Jul 2022 09:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=+Kqw+VQuI9Yam7WWV4VKeZ2i4m3yz6hv6TAXS9n0MTE=;
        b=M3dEcRmka4ncQwOd76x3tnryEfxLtMsH2HxkCcZ7M3e4pjsGBMgrrlu2JMS/Nmyuq0
         sRcnaEXvMUeGgdych0fkrnHUaN7ICb1KZe6JTj1JiAJOUtDyaImsbMtxoHt84uWbBiOa
         OcXHbCFo4MvWHtcuAqCX1W5mRfgzm5hvW0Db384eqCih1F0j2lsNlPd7UzlnkoJMrzLx
         5RShMLmPikZVO+L+sP4mjTuvXpZQnHeKGIN1pej+JFoZEQwq1lFPjjND++571O8a0eS0
         AJO4usqG+NJLXY1y7QJPEK1JBF521PdekDfToVJmHttLecI6WEcKcEX4uU01St/BLl72
         SAPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=+Kqw+VQuI9Yam7WWV4VKeZ2i4m3yz6hv6TAXS9n0MTE=;
        b=rr4Dg/tPXkAfpOwSoPR0o3x8S+MBMTBor3h5t9ULgC14NideTk+rr/QJtNVMs/UQrL
         +7NNuzKeNSqIvKmQwGaA3Gl1vlKR4GUG6+cR64/vnz4qhC/YWINZR6daeqSmZOdWgBG/
         OwziZ4daviKoaEiEFPUT78vukHpWF0zoe/O9JVRqbD/uerk52grlwfKM8opRiF8QUiDq
         TmDmULcsI0Uajl+c9da8Rr5/D6X2YPgybekqpXA3cYQZyWDcG2p/kUa0Hvz/Hd7+8Y8M
         TZg24uMNugDC1qg6FUE+4EmtpZ3v26pojJ0AvEUWfGKmD2qZFETEML0ukWjajGnUHPef
         4HHQ==
X-Gm-Message-State: AJIora/I1ROpBRVjMANeKHmXX/1sf16nJEtbV/Ywr/2WrKVrT+1XSg0G
	hZ/gQ0wsIst17bxpsHVds3RDIstHgEqV4zEbF28=
X-Google-Smtp-Source: AGRyM1sO0IhUoY4fdlyiUemdY4dmTdBSghD1YxK2BiR4+qgzqFJYhDqD/93K4Hx9WVp0oOJe2Pwk86c8/gnsoK5c92Q=
X-Received: by 2002:a05:620a:171f:b0:6b5:fa8e:5dd8 with SMTP id
 az31-20020a05620a171f00b006b5fa8e5dd8mr7750242qkb.149.1658334591259; Wed, 20
 Jul 2022 09:29:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAHUKmYYuZWb3+jTqB9n54iR5hCNXgOLMizQONLxpPF403fEZ7A@mail.gmail.com>
In-Reply-To: <CAHUKmYYuZWb3+jTqB9n54iR5hCNXgOLMizQONLxpPF403fEZ7A@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 20 Jul 2022 12:29:24 -0400
Message-ID: <CAMKF1soyrJq2TEqxbWaMCKS9Zc7c+EZNKoZmVoV6t20BpPuUeQ@mail.gmail.com>
Subject: Re: [poky] Bitbake recipe for uutils-coreutils
To: ecordonnier@snapchat.com
Cc: poky <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 20, 2022 at 12:24 PM Etienne Cordonnier via
lists.yoctoproject.org
<ecordonnier=3Dsnapchat.com@lists.yoctoproject.org> wrote:
>
> Hello,
> I am writing a bitbake recipe for uutils-coreutils, which is a rewrite in=
 rust of GNU coreutils ( https://github.com/uutils/coreutils ). This projec=
t uses an MIT license.
>
> I want to upstream this recipe, however I am not sure whether poky or met=
a-openembedded would be the better option. Currently, uutils-coreutils is s=
till in development, and does not yet provide stty. Also, some test-cases f=
rom the GNU coreutils test-suite are still failing, but it is already in a =
"working" state.
>
> In order to replace coreutils in the poky image, I used the "PROVIDE" mec=
hanism in the uutils-coreutils recipe:
> PROVIDES =3D "coreutils"
> RPROVIDES:${PN} =3D "coreutils"
>
> What do you recommend? Sending patches to meta-openembedded or rather to =
poky / poky-contrib?

Perhaps meta-oe might be a good place to house it and it can graduate
from there to core in due course if need arises.

>
> Thanks,
> Etienne Cordonnier
>
>=20
>
