Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web12.33288.1595232460040941090
 for <poky@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 01:07:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=IHM4MlOE;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.221.44, mailfrom: ashishm@mvista.com)
Received: by mail-wr1-f44.google.com with SMTP id 88so6565447wrh.3
        for <poky@lists.yoctoproject.org>; Mon, 20 Jul 2020 01:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5a23XlosdMvhJjrxUcIdwhViN/UL7KAOSjBccL2TJZU=;
        b=IHM4MlOEtIAJDRK5nTtVcH5iHRxzSWAPP7mRI3QqUn6aoYh4DcdT2tRpS68EDHc0LI
         4tLGNqwc17hIS5e9DprbS3VynBk3BcS7bOB95PRoiQNlgjP7kf2jv9w3hb98ThWmaqvB
         zHldO+962ihniWeu9PSm2igHj6fIUkdXHCiURM8WeD4JVMbCE3dhwzlX8gEI0j64ibLj
         9NLfedgTTRXS/CuRDzGD3rD0ndxBd8hQRUConpfcXz/RRHqmo5r0JJL4Fxs/1Y2aQ83J
         7BcDHW2HXDjrG5se3wIDBhQGir155K3097kAxKafsH3M3uxCFU5eFjkrIYYNHx+/QYVr
         virg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5a23XlosdMvhJjrxUcIdwhViN/UL7KAOSjBccL2TJZU=;
        b=A5QInHSVzG+pfH0LW7s0tH0ks7uSZO1dtEaHaCv1M/AeCH+hOozPwy2odRqnErsgH0
         ShCjKKNePSJqppXPt/rN5Iq5dujPecwLFUD2B5JcNS2grbage7Oc8OElrb0luPOMFNDT
         QhI49LS9J7Uk4nDX8jDVoH2goRhqTNo2BJ+M0FnO5WfQciSSDXG9JsRo1rWabHSRFMkU
         /BoEwAXUsG/5O5hdkvrTyQerjKgKzO5vFOT1BxAqVKO9PpSl1EOySpNhhNSSvbstcgGq
         Wq2gj/1Y5RL14Xvr9XSu2GJQpwpowcRez/xwIJETV0mzeUlQ4Y9b8pISrIBNBdc6ls5t
         o11A==
X-Gm-Message-State: AOAM5329ZRGykrkZ2zcTKTzW9Gu06eLZNgrqkeVhbun7gHxNPYkwN9L6
	DSSlXksHtd9fdxvJcCd7eW0TF2MLNlBj2hS7zJqjWg==
X-Google-Smtp-Source: ABdhPJzmCo9vWoEi51DdCQ9K5Oj+Obhfh52397nRb50CmSqPuZ6iiHFyR2y05VqoB1TeQxd/Gg63CmHY/S+LsofhTI4=
X-Received: by 2002:a5d:5643:: with SMTP id j3mr7026207wrw.278.1595232458531;
 Mon, 20 Jul 2020 01:07:38 -0700 (PDT)
MIME-Version: 1.0
References: <LMzk.1595145312278580104.QGYU@lists.yoctoproject.org> <2d1228d9f3c582a0aa958df7130b1c14a3bc11ec.camel@linuxfoundation.org>
In-Reply-To: <2d1228d9f3c582a0aa958df7130b1c14a3bc11ec.camel@linuxfoundation.org>
From: "Ashish" <ashishm@mvista.com>
Date: Mon, 20 Jul 2020 13:37:26 +0530
Message-ID: <CAP2OjcjzERYy_yaJN_DX8nECZGfv=8nxV76JH7-vsU5JOHLWGQ@mail.gmail.com>
Subject: Re: [poky] How to add python debugger "epdb" module in recipe
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000067b0205aadb0076"

--000000000000067b0205aadb0076
Content-Type: text/plain; charset="UTF-8"

Hi Richard ,

-  Any standard way of getting epdb installed .
    I tried on the Host system  ( Ubuntu ) with similar steps
     on dummy python code and epdb was working fine.

- On this same approach i tried using epdb with few other
   recipe but getting same error .

Thanks
Ashish

--000000000000067b0205aadb0076
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi=C2=A0Richard ,<div dir=3D"auto"><br></div><div dir=3D"=
auto">-=C2=A0 Any standard way of getting epdb installed .<div dir=3D"auto"=
>=C2=A0 =C2=A0 I tried on the Host system=C2=A0 ( Ubuntu ) with similar ste=
ps</div><div dir=3D"auto">=C2=A0 =C2=A0 =C2=A0on dummy python code and epdb=
 was working fine.</div><div dir=3D"auto"><br></div><div dir=3D"auto">- On =
this same approach i tried using epdb with few other=C2=A0</div><div dir=3D=
"auto">=C2=A0 =C2=A0recipe but getting same error .</div><div dir=3D"auto">=
<br></div><div dir=3D"auto">Thanks=C2=A0</div><div dir=3D"auto">Ashish</div=
></div></div>
<br>-- <br>Thanks ,<br />Ashish .

--000000000000067b0205aadb0076--
