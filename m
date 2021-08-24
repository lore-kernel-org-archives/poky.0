Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web08.2164.1629827175331841520
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Aug 2021 10:46:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gKXlGy+P;
 spf=pass (domain: gmail.com, ip: 209.85.208.41, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f41.google.com with SMTP id g21so32908699edw.4
        for <poky@lists.yoctoproject.org>; Tue, 24 Aug 2021 10:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=85VgJc2ApRxZvXscQW+OIwWVAiI5VBwPOlKcVj9TPYI=;
        b=gKXlGy+PZilZbT+MkVP/+E7rFa4dIpOvFncrKe+KpWrrFoxNVjsT/Iz2QRxIqUFPsf
         cnXtKAccLWsG/Eyh5IoK1sTN95Ex5Gt8ufs8mvradTAQI4v9JZf1RaAqwfqxC435qVUG
         7LN1C3vVt8Rl2Q7mMJa7CrR370yqkih55MJIImW4h76158oHib4WRankIyHu1Piyo7Z6
         XwluL97SxD/7u3kNqUPr6Mvvb0qHPMoG5EcF+pMH2Gma7iAa/pvVVJ1nQsL6xhbT+LFY
         MbxXFei0UfeJVh4OVF9Rz4Cazy6PpE48qVfzAetDk0wQa0aaLoSW2Fi9UUZPtio92OQI
         rxig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=85VgJc2ApRxZvXscQW+OIwWVAiI5VBwPOlKcVj9TPYI=;
        b=A02+KOOKlMUbSN3dOD2LMOBE27xWKmdPeSJU8UKRnMBdZIRuuTOsJWdDL8sSNBzsO0
         cFGMmDeFzBav1dmMqwttObEouiPXyH0COioWixxvFK1rdtXsIRB/NvL9xrxbMgxNkCHK
         iSZ1TQ/d3r3tX07kjlNNAWvpJ6D20YOwWU7AjsYnJj9y9BuBMQLs5R+l/peBftHXO7dE
         TkAebnXHTMh9PWuWmxtSdV7hCySTLqc4mFgTG19Dfqx4DPPniZywtFe+FfGhoxVpqoVe
         GnGa5yn5Xngc56WoAjw7N8gmagIgjZluMsMyN8oM3Fj/ssPsE+mzPb0BjcOV3Wq+zJR8
         FE/A==
X-Gm-Message-State: AOAM5303kOjboB5rYsJ6M4KCyI9Mc0qPcSZHIUAhbF9AWPcGi5JJ0knj
	oBgDfQXQvLs2mKdZJGRKqAHtiQsLt0LrUDZPkqY=
X-Google-Smtp-Source: ABdhPJxZVvl50PnYFpYK17mG9sxAfPzErxssUaU57LjEhH7kYLihBkNOSnWXVivXaCOjJgiHg6vmOTICapsqzrN7Mow=
X-Received: by 2002:a05:6402:c9:: with SMTP id i9mr43730693edu.76.1629827173761;
 Tue, 24 Aug 2021 10:46:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAMRWY0Hp0uUmLOHp9awqECmBr4FZ9tGYwacKbtJ73w+FuFQMhQ@mail.gmail.com>
In-Reply-To: <CAMRWY0Hp0uUmLOHp9awqECmBr4FZ9tGYwacKbtJ73w+FuFQMhQ@mail.gmail.com>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Tue, 24 Aug 2021 19:46:02 +0200
Message-ID: <CA+chaQfwFsndczv7vpPZ+ia6r3b4k3_W6=28qzDoenQCUj280A@mail.gmail.com>
Subject: Re: [poky] pkgconfig-native configure fail
To: Aaron Brice <aaron.brice@nikolamotor.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000bcc65605ca51b5d0"

--000000000000bcc65605ca51b5d0
Content-Type: text/plain; charset="UTF-8"

See https://bugzilla.yoctoproject.org/show_bug.cgi?id=14519 with an work
around.

On Tue, Aug 24, 2021 at 7:37 PM Aaron Brice <aaron.brice@nikolamotor.com>
wrote:

> Upgrading from gatesgarth to latest poky master branch today.  I'm running
> into an error with pkgconfig-native, where it can't find
> pthread_create/join when configuring glib:
>
> | checking for thread implementation... posix
> | checking thread related cflags... -D_REENTRANT
> | checking for pthread_create/pthread_join... no
> | checking for pthread_create/pthread_join in -lpthread... no
> | checking for pthread_create/pthread_join in -lpthread32... no
> | checking for pthread_create/pthread_join in -lpthreads... no
> | checking for pthread_create/pthread_join in -lthread... no
> | configure: error: I can't find the libraries for the thread
> implementation
> |                  posix. Please choose another thread implementation or
> |                   provide information on your thread implementation.
> | configure: error: ../../git/glib/configure failed for glib
> | WARNING:
> /var/tmp/yocto/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configure.107:283
> exit 1 from 'exit 1'
> | WARNING: Backtrace (BB generated script):
> |       #1: bbfatal_log,
> /var/tmp/yocto/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configure.107,
> line 283
> |       #2: oe_runconf,
> /var/tmp/yocto/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configure.107,
> line 259
> |       #3: autotools_do_configure,
> /var/tmp/yocto/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configure.107,
> line 229
> |       #4: do_configure,
> /var/tmp/yocto/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configure.107,
> line 149
> |       #5: main,
> /var/tmp/yocto/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configure.107,
> line 287
> |
>
> Building out of an Ubuntu 20.04 docker container that was building
> gatesgarth ok.  Any ideas why I might be having pthread issues now?
>
> Thanks,
> --
>
> *Aaron Brice*
> aaron.brice@nikolamotor.com
>
> [image: Nikola Logo] <https://www.nikolamotor.com>
>
> *Nikola Corporation* | www.nikolamotor.com <https://nikolamotor.com/>
> 4141 E Broadway Rd | Phoenix | AZ | 85040
> <https://goo.gl/maps/bKfEzApeDMErgi4e7>
>
>
> INFORMATION CONTAINED IN THIS E-MAIL TRANSMISSION IS  CONFIDENTIAL. IF
> YOU ARE NOT THE INTENDED RECIPIENT, DO NOT READ, DISTRIBUTE OR REPRODUCE
> THIS TRANSMISSION (INCLUDING ANY ATTACHMENTS). IF YOU HAVE RECEIVED THIS
> E-MAIL IN ERROR, PLEASE NOTIFY THE SENDER BY E-MAIL REPLY AND THEN DELETE
> THIS E-MAIL.
>
> 
>
>

--000000000000bcc65605ca51b5d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">See=C2=A0<a href=3D"https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D14519">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14=
519</a> with an work around.</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Aug 24, 2021 at 7:37 PM Aaron Brice &=
lt;<a href=3D"mailto:aaron.brice@nikolamotor.com">aaron.brice@nikolamotor.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr">Upgrading from gatesgarth to latest poky master branch t=
oday.=C2=A0 I&#39;m running into an error with pkgconfig-native, where it c=
an&#39;t find pthread_create/join when configuring glib:<div><br></div><div=
>| checking for thread implementation... posix<br>| checking thread related=
 cflags... -D_REENTRANT<br>| checking for pthread_create/pthread_join... no=
<br>| checking for pthread_create/pthread_join in -lpthread... no<br>| chec=
king for pthread_create/pthread_join in -lpthread32... no<br>| checking for=
 pthread_create/pthread_join in -lpthreads... no<br>| checking for pthread_=
create/pthread_join in -lthread... no<br>| configure: error: I can&#39;t fi=
nd the libraries for the thread implementation<br>| =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0posix. Please choose another threa=
d implementation or<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 provide information on your thread implementation.<br>| confi=
gure: error: ../../git/glib/configure failed for glib<br>| WARNING: /var/tm=
p/yocto/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/=
temp/run.do_configure.107:283 exit 1 from &#39;exit 1&#39;<br>| WARNING: Ba=
cktrace (BB generated script):<br>| =C2=A0 =C2=A0 =C2=A0 #1: bbfatal_log, /=
var/tmp/yocto/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0=
ea-r0/temp/run.do_configure.107, line 283<br>| =C2=A0 =C2=A0 =C2=A0 #2: oe_=
runconf, /var/tmp/yocto/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOIN=
C+edf8e6f0ea-r0/temp/run.do_configure.107, line 259<br>| =C2=A0 =C2=A0 =C2=
=A0 #3: autotools_do_configure, /var/tmp/yocto/work/x86_64-linux/pkgconfig-=
native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configure.107, line 229<=
br>| =C2=A0 =C2=A0 =C2=A0 #4: do_configure, /var/tmp/yocto/work/x86_64-linu=
x/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configure.10=
7, line 149<br>| =C2=A0 =C2=A0 =C2=A0 #5: main, /var/tmp/yocto/work/x86_64-=
linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configur=
e.107, line 287<br>| <br><div><br></div><div>Building out of an Ubuntu 20.0=
4 docker container that was building gatesgarth ok.=C2=A0 Any ideas why I m=
ight be having pthread issues now?</div><div><br></div><div>Thanks,</div>--=
 <br><div dir=3D"ltr"><div style=3D"font-family:arial,helvetica,sans-serif;=
font-size:small"><br>
<span style=3D"font-size:13px"><span style=3D"font-family:arial,helvetica,s=
ans-serif"><strong>Aaron=C2=A0Brice</strong></span></span></div>

<div style=3D"font-family:arial,helvetica,sans-serif;font-size:small"><span=
 style=3D"font-size:12px"><em><span style=3D"color:rgb(169,169,169)"><span =
style=3D"font-family:arial,helvetica,sans-serif"></span></span></em></span>=
</div>

<div style=3D"font-family:arial,helvetica,sans-serif;font-size:small"><a hr=
ef=3D"mailto:aaron.brice@nikolamotor.com" target=3D"_blank"><span style=3D"=
color:rgb(0,174,255)">aaron.brice@nikolamotor.com</span></a></div>

<div style=3D"font-family:arial,helvetica,sans-serif;font-size:small">=C2=
=A0</div>

<div style=3D"font-family:arial,helvetica,sans-serif;font-size:small"><a hr=
ef=3D"https://www.nikolamotor.com" target=3D"_blank"><img alt=3D"Nikola Log=
o" height=3D"58" src=3D"https://storage.googleapis.com/signaturesatori/cust=
omer-C0270szk7/images/FJzDB.png" width=3D"250"></a></div>

<div style=3D"font-family:arial,helvetica,sans-serif;font-size:small">=C2=
=A0</div>

<div style=3D"font-family:arial,helvetica,sans-serif;font-size:small">
<div>
<div style=3D"font-family:arial,helvetica,sans-serif;font-size:small;backgr=
ound-color:rgb(255,255,255)"><span style=3D"font-size:12px"><span style=3D"=
color:rgb(204,204,204)"><span style=3D"font-family:arial,helvetica,sans-ser=
if"><span style=3D"font-family:roboto;color:rgb(0,0,0);background-color:tra=
nsparent;vertical-align:baseline;white-space:pre-wrap"><b>Nikola Corporatio=
n</b> | </span></span></span><a href=3D"https://nikolamotor.com/" style=3D"=
color:rgb(17,85,204)" target=3D"_blank"><span style=3D"font-family:roboto;c=
olor:rgb(0,174,239);background-color:transparent;vertical-align:baseline;wh=
ite-space:pre-wrap">www.nikolamotor.com</span></a></span></div>

<div style=3D"font-family:arial,helvetica,sans-serif;font-size:small;backgr=
ound-color:rgb(255,255,255)"><span style=3D"font-size:12px"><a href=3D"http=
s://goo.gl/maps/bKfEzApeDMErgi4e7" style=3D"color:rgb(17,85,204)" target=3D=
"_blank"><span style=3D"font-family:roboto;color:rgb(0,174,239);background-=
color:transparent;vertical-align:baseline;white-space:pre-wrap">4141 E Broa=
dway Rd | Phoenix | AZ | 85040</span></a></span></div>
</div>
</div>

<div style=3D"font-family:arial,helvetica,sans-serif;font-size:small">=C2=
=A0</div>

<div style=3D"font-family:arial,helvetica,sans-serif;font-size:small">=C2=
=A0</div>

<div style=3D"font-family:arial,helvetica,sans-serif;font-size:small"><span=
 style=3D"color:rgb(153,153,153)"><span style=3D"font-size:12px">I</span><s=
pan style=3D"font-size:8pt">NFORMATION CONTAINED IN THIS E-MAIL TRANSMISSIO=
N IS=C2=A0 CONFIDENTIAL. IF YOU ARE NOT THE INTENDED RECIPIENT, DO NOT READ=
, DISTRIBUTE OR REPRODUCE THIS TRANSMISSION (INCLUDING ANY ATTACHMENTS). IF=
 YOU HAVE RECEIVED THIS E-MAIL IN ERROR, PLEASE NOTIFY THE SENDER BY E-MAIL=
 REPLY AND THEN DELETE THIS E-MAIL. </span></span></div>
</div><input name=3D"virtru-metadata" type=3D"hidden" value=3D"{&quot;email=
-policy&quot;:{&quot;state&quot;:&quot;closed&quot;,&quot;expirationUnit&qu=
ot;:&quot;days&quot;,&quot;disableCopyPaste&quot;:false,&quot;disablePrint&=
quot;:false,&quot;disableForwarding&quot;:false,&quot;enableNoauth&quot;:fa=
lse,&quot;persistentProtection&quot;:false,&quot;expandedWatermarking&quot;=
:false,&quot;expires&quot;:false,&quot;isManaged&quot;:false},&quot;attachm=
ents&quot;:{},&quot;compose-id&quot;:&quot;1&quot;,&quot;compose-window&quo=
t;:{&quot;secure&quot;:false}}"></div></div>
<br>
<br>
<br>
</blockquote></div>

--000000000000bcc65605ca51b5d0--
