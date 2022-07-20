Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web10.56404.1658334246449634818
 for <poky@lists.yoctoproject.org>;
 Wed, 20 Jul 2022 09:24:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@snapchat.com header.s=google header.b=iqEDTFBU;
 spf=pass (domain: snapchat.com, ip: 209.85.222.182, mailfrom: ecordonnier@snapchat.com)
Received: by mail-qk1-f182.google.com with SMTP id o1so14028252qkg.9
        for <poky@lists.yoctoproject.org>; Wed, 20 Jul 2022 09:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snapchat.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=9CJgom1h7cUNHrCVO7NiDRGygc5Fru08owrKqFiqyZU=;
        b=iqEDTFBUUUh//2pyzx4whushm8G+BeOAJQuYRglNGNN82Nb1I1LRmWe0K/fdaSWnGM
         +l2x1OBCz9ZZoA1sp8QhPb+oxpeuNjVSPr+/ACVahyOohD0DOQLM6pKIBhmvhWEBlsDp
         LlC/cotHmlsHUtM6Ur3c9Y2oBDOEv6Z67fHMw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=9CJgom1h7cUNHrCVO7NiDRGygc5Fru08owrKqFiqyZU=;
        b=TzZy9dvFqM3dbL9EIJIghoDmN+PKrXkYDNC/JXDeGlcNfbD/nnv+7VCS8rx3L7YuSq
         NEoPEmHXDyxZ7gH4vW+BodEx29UFieLqay42vt8zcRO/JPNYbIWQQLj1AWg2OsoNmD1b
         a5ijiLkRvEDV0O/bQ4qLjehcJI9WUeLKwXnlvnTsioPScN3DB7HVavWmYNHAu8+Rzpnv
         RUbAkYOXrFcHLBvGDYzikWa6Szs3NuCKGYQXXLzka8ePVX9U6B5ukV2X1tl71Oso/CNt
         anHa0zS+sPOvy9R4nIkxhGILl54K/hOBlAlBhVu3kypgWwXDlCiEXRkSeAAWmZbjPc0j
         wDdw==
X-Gm-Message-State: AJIora9eO9dbGJ0U9LaWia80yaJYoWkj9sVagAq5ge5aX/NxEpIXGhKL
	fVlS2yNLmIJM5AGjvkSDzE1gBUqeo5hCLm2Z/+1MytroX9+jGwim
X-Google-Smtp-Source: AGRyM1sFD+BQme0btd5XcehOWxJBfptX/UqbXfQcdETLby5E4F7hnkDmbIHcHg0mdZeOLTdnT6QzBmL3q+seb2qy/TY=
X-Received: by 2002:a05:620a:744:b0:6b5:e442:21de with SMTP id
 i4-20020a05620a074400b006b5e44221demr11790387qki.411.1658334245301; Wed, 20
 Jul 2022 09:24:05 -0700 (PDT)
MIME-Version: 1.0
From: ecordonnier@snapchat.com
Date: Wed, 20 Jul 2022 18:23:54 +0200
Message-ID: <CAHUKmYYuZWb3+jTqB9n54iR5hCNXgOLMizQONLxpPF403fEZ7A@mail.gmail.com>
Subject: Bitbake recipe for uutils-coreutils
To: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009c5a5605e43f0772"

--0000000000009c5a5605e43f0772
Content-Type: text/plain; charset="UTF-8"

Hello,
I am writing a bitbake recipe for uutils-coreutils, which is a rewrite in
rust of GNU coreutils ( https://github.com/uutils/coreutils ). This project
uses an MIT license.

I want to upstream this recipe, however I am not sure whether poky or
meta-openembedded would be the better option. Currently, uutils-coreutils
is still in development, and does not yet provide stty. Also, some
test-cases from the GNU coreutils test-suite are still failing, but it is
already in a "working" state.

In order to replace coreutils in the poky image, I used the "PROVIDE"
mechanism in the uutils-coreutils recipe:
PROVIDES = "coreutils"
RPROVIDES:${PN} = "coreutils"

What do you recommend? Sending patches to meta-openembedded or rather to
poky / poky-contrib?

Thanks,
Etienne Cordonnier

--0000000000009c5a5605e43f0772
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div>I am writing a bitbake recipe for uutils-coreut=
ils, which is a rewrite in rust of GNU coreutils (=C2=A0<a href=3D"https://=
github.com/uutils/coreutils" target=3D"_blank">https://github.com/uutils/co=
reutils</a>=C2=A0). This project uses an MIT license.<br><br>I want to upst=
ream this recipe, however I am not sure whether poky or meta-openembedded w=
ould be the better option. Currently, uutils-coreutils is still in developm=
ent, and does not yet provide stty. Also, some test-cases from the GNU core=
utils test-suite are still failing,=C2=A0but it is already in a &quot;worki=
ng&quot; state.<br><br>In order to replace coreutils in the poky image, I u=
sed the &quot;PROVIDE&quot; mechanism in the uutils-coreutils recipe:</div>=
<div>PROVIDES =3D &quot;coreutils&quot;<br>RPROVIDES:${PN} =3D &quot;coreut=
ils&quot;<br><br>What do you recommend? Sending patches to meta-openembedde=
d or rather to poky / poky-contrib?<br><br>Thanks,<br>Etienne Cordonnier</d=
iv></div>

--0000000000009c5a5605e43f0772--
