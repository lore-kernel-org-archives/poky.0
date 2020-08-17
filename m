Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com [209.85.208.66])
 by mx.groups.io with SMTP id smtpd.web11.43760.1597672386332623852
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Aug 2020 06:53:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z5sTXzvG;
 spf=pass (domain: gmail.com, ip: 209.85.208.66, mailfrom: vvavrychuk@gmail.com)
Received: by mail-ed1-f66.google.com with SMTP id df16so12336115edb.9
        for <poky@lists.yoctoproject.org>; Mon, 17 Aug 2020 06:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Vd3QDRfFiHTKVZaFoUzx3fn9G3PJy8ka0gtDrAkG8RA=;
        b=Z5sTXzvGuoFMMbpM84jezuwpBLxq8tS84S0WnGwEX26cc3JRlxB8mbheICSTwE/82P
         wWbrbaNOQiABM0Ur9yLr2mw1JN7ZkRDXmbt4sIlimF3moju/oSOUgSkj3dVHGrgRE9lG
         pukENIYPN9Vz6xlV2eHzNulrcIbCgP4hsjAuvTtK4rY6h4gdxeVwvPVN/sE5uXdkngBv
         vIxnudwr8jPsaNpg5rlSLC93Ykj23fBIzhOXb00NFXRzUdk01twYWk70Gj9GOaHNog9K
         2gsPZoxlAHB8DYE1Cv1mD50rQP2B3ycwRdRoBy6ZSFwb21EsNNb+0c6eTz0vpMxefnPj
         TMKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Vd3QDRfFiHTKVZaFoUzx3fn9G3PJy8ka0gtDrAkG8RA=;
        b=SHITXFPsXi0eki7bNBcqY2XBXVuJu4k3UWhDgTntbpZ040ze989dYVgDAtYsITSTxC
         kOGafM3fbOnbOQSpyc3AgZ0TrRUWbAuCdX6RcJ8mNX8/YvQx6jK+DTOpGfBjD+u4RcSx
         dvTlzediF/URY57ci+gg3Dnh544hXaPLXEMOJe0Dfgp4RBUBzq+i1MtLapaAZD+iSQMI
         8HS8SDLvZu65nZsntGIxtZq0rxlmss+jfn3rEDqYCfAd6glTkjGwoUT1kbhg/wu8+5b4
         i2Ppc3EXXdLoU2xF3oe5LQsy5xKkqQJEAKmCsvpS6Afy5on/uDM7yEJjpEF0+jBbYQHf
         CL3w==
X-Gm-Message-State: AOAM533jo5qfsA7ZVzRG2pDfSMFDaxrSX/1JV+JrPGTgWji1DT/puukQ
	OZvaijwIWZM5+fZo8VcX2CDBqZI/mAIjlL/Lw7Q=
X-Google-Smtp-Source: ABdhPJy7AXIWUa279QY4VBxrowNkRUYBCmsGBjdtsT23u3ma1dCtdEztrAxWXGYRYy4PDx7LxeXhAG/YcSpTJrdAQhQ=
X-Received: by 2002:aa7:d585:: with SMTP id r5mr14643577edq.30.1597672384867;
 Mon, 17 Aug 2020 06:53:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200817130135.3512-1-vvavrychuk@gmail.com> <CANNYZj9=fRRqp+fO=sWikGwDkdE4xnWyXvStmLndwdesJ8gLGQ@mail.gmail.com>
In-Reply-To: <CANNYZj9=fRRqp+fO=sWikGwDkdE4xnWyXvStmLndwdesJ8gLGQ@mail.gmail.com>
From: "Vasyl Vavrychuk" <vvavrychuk@gmail.com>
Date: Mon, 17 Aug 2020 16:52:53 +0300
Message-ID: <CAGj4m+7_6mxaYk30eSi+Pr_vGmQL7UKqcmz5G5rig2vuEutW2A@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/2] ref-manual: Fix mistake in base class description.
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f7b3b105ad1316d2"

--000000000000f7b3b105ad1316d2
Content-Type: text/plain; charset="UTF-8"

Thanks, sorry for disturbing.

On Mon, Aug 17, 2020 at 4:47 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> And these two should go to docs@lists.yoctoproject.org, I think :)
>
> Alex
>
> On Mon, 17 Aug 2020 at 15:02, Vasyl Vavrychuk <vvavrychuk@gmail.com>
> wrote:
>
>> Clearly, previous sentense speaks about definitions in classes which
>> can be overrided or extended in other classes.
>>
>> Signed-off-by: Vasyl Vavrychuk <vvavrychuk@gmail.com>
>> ---
>>  documentation/ref-manual/ref-classes.xml | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/documentation/ref-manual/ref-classes.xml
>> b/documentation/ref-manual/ref-classes.xml
>> index 1dcd5fdd03..1f353b3c30 100644
>> --- a/documentation/ref-manual/ref-classes.xml
>> +++ b/documentation/ref-manual/ref-classes.xml
>> @@ -191,7 +191,7 @@
>>          tasks such as fetching, unpacking, configuring (empty by
>> default),
>>          compiling (runs any <filename>Makefile</filename> present),
>> installing
>>          (empty by default) and packaging (empty by default).
>> -        These classes are often overridden or extended by other classes
>> +        These definitions are often overridden or extended by other
>> classes
>>          such as the
>>          <link
>> linkend='ref-classes-autotools'><filename>autotools</filename></link>
>>          class or the
>> --
>> 2.23.0
>>
>> 
>>
>

--000000000000f7b3b105ad1316d2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks, sorry for disturbing.</div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 17, 2020 at 4:47 =
PM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kan=
avin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div>And these two should go to <span><span>=
<a href=3D"mailto:docs@lists.yoctoproject.org" target=3D"_blank">docs@lists=
.yoctoproject.org</a>, I think :)</span></span></div><div><span><span><br><=
/span></span></div><div><span><span>Alex<br></span></span></div><div><span>=
<span></span></span></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Mon, 17 Aug 2020 at 15:02, Vasyl Vavrychuk &lt=
;<a href=3D"mailto:vvavrychuk@gmail.com" target=3D"_blank">vvavrychuk@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">Clearly, previous sentense speaks about definitions in classes which<br=
>
can be overrided or extended in other classes.<br>
<br>
Signed-off-by: Vasyl Vavrychuk &lt;<a href=3D"mailto:vvavrychuk@gmail.com"=
 target=3D"_blank">vvavrychuk@gmail.com</a>&gt;<br>
---<br>
=C2=A0documentation/ref-manual/ref-classes.xml | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-=
manual/ref-classes.xml<br>
index 1dcd5fdd03..1f353b3c30 100644<br>
--- a/documentation/ref-manual/ref-classes.xml<br>
+++ b/documentation/ref-manual/ref-classes.xml<br>
@@ -191,7 +191,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tasks such as fetching, unpacking, confi=
guring (empty by default),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0compiling (runs any &lt;filename&gt;Make=
file&lt;/filename&gt; present), installing<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(empty by default) and packaging (empty =
by default).<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 These classes are often overridden or extende=
d by other classes<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 These definitions are often overridden or ext=
ended by other classes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0such as the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;link linkend=3D&#39;ref-classes-auto=
tools&#39;&gt;&lt;filename&gt;autotools&lt;/filename&gt;&lt;/link&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0class or the<br>
-- <br>
2.23.0<br>
<br>
<br>
</blockquote></div>
</blockquote></div>

--000000000000f7b3b105ad1316d2--
