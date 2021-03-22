Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web09.123.1616438546383573089
 for <poky@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 11:42:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@nikolamotor-com.20150623.gappssmtp.com header.s=20150623 header.b=UmExJqWd;
 spf=pass (domain: nikolamotor.com, ip: 209.85.219.49, mailfrom: aaron.brice@nikolamotor.com)
Received: by mail-qv1-f49.google.com with SMTP id 30so9161888qva.9
        for <poky@lists.yoctoproject.org>; Mon, 22 Mar 2021 11:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nikolamotor-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NlzVkvxU2b1VRBCulTrnjicuuKW3IBe/3J9o0P4n5mA=;
        b=UmExJqWd12Iz5fojjyRTsrVcrYIOQ9nwiWDPQAvkCyYw/awPtfoqZ96jQ+FzkLn0UK
         jNflsNv3ROmXT0uEBdSEHavnNDUKRhYDYHX2zDcgEigoNbfbU752vNiaf+E9S96x3kaL
         Vemij4/k7F8kJ8enjp0EHlGPvB+7UvZsjr0UrRMPwoE4uRCwEoSn6ju+4ouwHSBrHU8t
         x2MKe9WqTZG8O1mn15cupZHQ8k/JbQiTx1ZshElupz6lBeVFu/URQExUWkU0UsfdyoVf
         wmbvbnHidTNBMnLjAaeUosdFNhNZhTIJ9wckoNY5NsnaFps3fONxqKjy8kYeWXRc6SJg
         mpcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NlzVkvxU2b1VRBCulTrnjicuuKW3IBe/3J9o0P4n5mA=;
        b=LhnOr8L6btfhIDdEgvUT522o5Zcf2hmDn9m/uz7XexgApsCf55Dwi46j83bCTeMFzZ
         hqcBdIeMItRB7LNFlP4mZIFFxUCWGs0WhABqglRGPhwH34BBp4a4VFHtiHKouhQAHbMP
         jdCDYrhgANi91UcJiwW59D9UhyxXVIKhtus/bWCw0n2r/PFJ3WLATPfJbBvZ4pWWYaRc
         T6HeF02J/YRhoZQ20N7REoMZzqf3VUaJLDR4hZOIxyZD88o8jGYZ5UZWHxPcYK+325q/
         /bjswhfyCRqjb+XUUkLoeOoOPE7S82epgNlLo9uj0Yhtyz6chvEUFOFNgYG1s8tgiZFU
         /oYA==
X-Gm-Message-State: AOAM532pVGidREyJAnJ9QHggET1eALAxpZLj6b2g1Oz47lttwDNuQnPt
	J0ILPe6e3PAM6RnUGbRF8zq9NAgYYIzkNYSBXsDEJ+1oeB7FReaqHWqZBJGHQ3z7uTkzzDmQJsz
	Xj4mLxNHJQlk9Es9Mgi0x072X1aRTGAO3mwXf3Z0uUALN+lLlkPKva1zoTlGapTvjcTkAlrAQ3U
	O4nv95ihh/Bq8N19NYP0ac7EaFkGaFwFiBrLNsM3D60WHhaqBzPMlz
X-Google-Smtp-Source: ABdhPJx/NEVH3vsyBY4+OEZqHZ2ofYfaDYjAMOagpGZQZ3lG7CX46+z27RyMSElknMkomB4lkMxxXkx2Dngtyc+aW6E=
X-Received: by 2002:ad4:5629:: with SMTP id cb9mr1462622qvb.62.1616438539862;
 Mon, 22 Mar 2021 11:42:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAMRWY0HLsy9xDiFMSgxt77ViptO19OrSYu-HX2dAiF07NYjNpg@mail.gmail.com>
 <e30213a69ef89a8a083441bb1fa80bda3fd16c48.camel@linuxfoundation.org>
In-Reply-To: <e30213a69ef89a8a083441bb1fa80bda3fd16c48.camel@linuxfoundation.org>
From: "Aaron Brice" <aaron.brice@nikolamotor.com>
Date: Mon, 22 Mar 2021 11:42:11 -0700
Message-ID: <CAMRWY0FvcRGTeOsS1yO7+0g2a1qoebefRc7OHGhNALGErCFhOg@mail.gmail.com>
Subject: Re: [poky] gatesgarth wic pseudo issue
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
X-CLOUD-SEC-AV-Info: nikolamotor2,google_mail,monitor
X-CLOUD-SEC-AV-Sent: true
X-Gm-Spam: 0
X-Gm-Phishy: 0
Content-Type: multipart/alternative; boundary="000000000000f85e8105be246c81"

--000000000000f85e8105be246c81
Content-Type: text/plain; charset="UTF-8"

On Sat, Mar 20, 2021 at 3:19 AM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> Hi,
>
> On Fri, 2021-03-19 at 16:06 -0700, Aaron Brice wrote:
> > I recently upgraded from dunfell to gatesgarth and it is causing
> problems with the .wic file.
> >
> > Our .wks file contains:
> >
> > part / --source rootfs --ondisk sda --fstype=ext4 --label platform
> --align 1024 --use-uuid --extra-space 0 --
> > overhead-factor 1
> > part /bk --source rootfs-tar --ondisk sda --fstype=ext4 --label archive
> --align 1024 --use-uuid --extra-space
> > 0 --overhead-factor 1
> >
> > Where scripts/lib/wic/plugins/source/rootfs-tar.py wic plugin creates an
> empty partition and puts a
> > rootfs.tar.gz in it containing the contents of the previous rootfs
> partition.  There is a script in the first
> > partition that does an install using the tar in the second partition.
> >
> > On gatesgarth, the rootfs.tar.gz is created with incorrect uid/gid, the
> uid and gid of the user running
> > yocto.  It's caused by commit c58711f0ea2a4d3b54e9f5f442abe3192f4697d0
> which added PSEUDO_UNLOAD=1 to the wic
> > command.  How can I get my plugin to work in this case?
> >
> > Or generically, is there a better way to create a USB install wic file?
>
> The pseudo context needs to match the environment wic is working within
> which may not be the same as the parent bitbake environment, hence the
> unload.
>
> If you look at the pseudo scripts you'll see that some operations are run
> under
> pseudo. I suspect your plugin needs to do something like that and run the
> operation under pseudo.
>
> Cheers,
>
> Richard
>
>
Thanks Richard.  Is there a pseudo python library and/or an example of
running a pseudo python plugin/script under pseudo context?  At the moment
there is just rootfs-tar.py which is called automatically by wic, and it
uses the python tarfile library to create the tar file.  How would I run
the tarfile module from the python plugin under pseudo?  Will I need to
remove the tarfile module code and call tar in a subprocess?

Thanks,
-- 

*Aaron Brice*
aaron.brice@nikolamotor.com

<https://nikolamotor.com>

*Nikola Corporation* | www.nikolamotor.com <https://nikolamotor.com/>
4141 E Broadway Rd | Phoenix | AZ | 85040
<https://goo.gl/maps/bKfEzApeDMErgi4e7>


INFORMATION CONTAINED IN THIS E-MAIL TRANSMISSION IS  CONFIDENTIAL. IF YOU
ARE NOT THE INTENDED RECIPIENT, DO NOT READ, DISTRIBUTE OR REPRODUCE THIS
TRANSMISSION (INCLUDING ANY ATTACHMENTS). IF YOU HAVE RECEIVED THIS E-MAIL
IN ERROR, PLEASE NOTIFY THE SENDER BY E-MAIL REPLY AND THEN DELETE THIS
E-MAIL.

--000000000000f85e8105be246c81
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br><input name=3D"virtru-metadata" type=
=3D"hidden" value=3D"{&quot;email-policy&quot;:{&quot;state&quot;:&quot;clo=
sed&quot;,&quot;expirationUnit&quot;:&quot;days&quot;,&quot;disableCopyPast=
e&quot;:false,&quot;disablePrint&quot;:false,&quot;disableForwarding&quot;:=
false,&quot;enableNoauth&quot;:false,&quot;persistentProtection&quot;:false=
,&quot;expandedWatermarking&quot;:false,&quot;expires&quot;:false,&quot;isM=
anaged&quot;:false},&quot;attachments&quot;:{},&quot;compose-id&quot;:&quot=
;5&quot;,&quot;compose-window&quot;:{&quot;secure&quot;:false}}"></div><br>=
<div class=3D"gmail_quote" style=3D""><div dir=3D"ltr" class=3D"gmail_attr"=
>On Sat, Mar 20, 2021 at 3:19 AM Richard Purdie &lt;<a href=3D"mailto:richa=
rd.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
On Fri, 2021-03-19 at 16:06 -0700, Aaron Brice wrote:<br>
&gt; I recently upgraded from dunfell to gatesgarth and it is causing probl=
ems with the .wic file.<br>
&gt; <br>
&gt; Our .wks file contains:<br>
&gt; <br>
&gt; part / --source rootfs --ondisk sda --fstype=3Dext4 --label platform -=
-align 1024 --use-uuid --extra-space 0 --<br>
&gt; overhead-factor 1<br>
&gt; part /bk --source rootfs-tar --ondisk sda --fstype=3Dext4 --label arch=
ive --align 1024 --use-uuid --extra-space<br>
&gt; 0 --overhead-factor 1 <br>
&gt; <br>
&gt; Where=C2=A0scripts/lib/wic/plugins/source/rootfs-tar.py wic plugin cre=
ates an empty partition and puts a<br>
&gt; rootfs.tar.gz in it containing the contents of the previous rootfs par=
tition.=C2=A0 There is a script in the first<br>
&gt; partition that does an install using the tar in the second partition.<=
br>
&gt; <br>
&gt; On gatesgarth, the rootfs.tar.gz is created with incorrect uid/gid, th=
e uid and gid of the user running<br>
&gt; yocto.=C2=A0 It&#39;s caused by commit=C2=A0c58711f0ea2a4d3b54e9f5f442=
abe3192f4697d0 which added PSEUDO_UNLOAD=3D1 to the wic<br>
&gt; command.=C2=A0 How can I get my plugin to work in this case?<br>
&gt; <br>
&gt; Or generically, is there a better way to create a USB install wic file=
?<br>
<br>
The pseudo context needs to match the environment wic is working within<br>
which may not be the same as the parent bitbake environment, hence the unlo=
ad.<br>
<br>
If you look at the pseudo scripts you&#39;ll see that some operations are r=
un under <br>
pseudo. I suspect your plugin needs to do something like that and run the<b=
r>
operation under pseudo.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div><div><br></div>Thanks Richard.=C2=A0 Is there a pseudo p=
ython library and/or an example of running a pseudo python plugin/script un=
der pseudo context?=C2=A0 At the moment there is just rootfs-tar.py which i=
s called automatically by wic, and it uses the python tarfile library to cr=
eate the tar file.=C2=A0 How would I run the tarfile module from the python=
 plugin under pseudo?=C2=A0 Will I need to remove the tarfile module code a=
nd call tar in a subprocess?=C2=A0<br clear=3D"all"><div><br></div><div>Tha=
nks,</div>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div style=3D"f=
ont-family:arial,helvetica,sans-serif;font-size:small"><br>
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
ef=3D"https://nikolamotor.com" target=3D"_blank"><img height=3D"51" src=3D"=
https://drive.google.com/a/nikolamotor.com/uc?id=3D1KtgrgH104YDWmY8S5SPSTBx=
DKPJQwPgy&amp;export=3Ddownload" width=3D"220"></a></div>

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
</div></div>

--000000000000f85e8105be246c81--
