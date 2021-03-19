Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web10.1534.1616195191974827870
 for <poky@lists.yoctoproject.org>;
 Fri, 19 Mar 2021 16:06:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@nikolamotor-com.20150623.gappssmtp.com header.s=20150623 header.b=Zd0Qp+xt;
 spf=pass (domain: nikolamotor.com, ip: 209.85.219.53, mailfrom: aaron.brice@nikolamotor.com)
Received: by mail-qv1-f53.google.com with SMTP id x16so5875786qvk.3
        for <poky@lists.yoctoproject.org>; Fri, 19 Mar 2021 16:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nikolamotor-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=IGT67StZI7H2LlphxclWoLGdn3eAFgfiD/DjBUIQpMk=;
        b=Zd0Qp+xtEXVBVZ1vq9eXk2xZXzlvskkmVPOLOxF+Ksqyg+2xAq/y6NOTURBqykPG85
         ZQwwYdXjXMjaDGaGw51m6fPqapOkxyhqvF0TgEvysW6lKHSN8nbJpDDmtU3UM5xEQjcY
         AZbAkme42s6vkZkhpUAlMghaQDJvOBwm9o4XL+yDdFuFRU5UwsItrKtT//bVdmcWbRH/
         PIusmLibIffM6AQBDGLXPw1sB8uVcIGWamzZHW3TMIvM6fEX1Ba5hUGE1+FT6aX+beOs
         pSdFsXdVWjOA7v/QkA9om63kqr9mjewG/dahT/5N1A6huVKMLgZX/vC+cyMgpG3vB97z
         kqRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=IGT67StZI7H2LlphxclWoLGdn3eAFgfiD/DjBUIQpMk=;
        b=K3mMQ5hzNjMhxUZKjnFrUUGQFFXt7pJgDVQYbg+0VLqc3NianC2snhmvXiOnPhxvUG
         LhmU6INzYmLaqFNHmJU+H6n3gftHmDnH1JFAyo9f44rRwWunmxoKidVB1bXSG7gbmDxT
         d9wN/6SABfZP2m9ErCtgxZXYse2YBzn0b1D7dVVtZhel2666ZzYoAt1omA4gspHgrNog
         RXpvB/C7px1OSieFWzuh7tQQgbGgjiJ4J74jYCeE9BtqjEId7OIvx2KjM62BVTUH4pQa
         bnxDDXiEYJx7YJy04GjtHNleE9lfev6bopFo8I4fpaXC/auZC845G94UpLrwFxARTGTl
         3a1A==
X-Gm-Message-State: AOAM531bFlQSniCOPoruTsS++bCO3Rbj8wqBUPX+eSudFtLLDdvnGLaK
	4QHnVIVEHqRx9C7t21qqelxBOrKxN4KEEYsrF+urki0V6OWzJdaKnpjS5FDnaum5aKGENyR+Dow
	MhYIAUOh4iSD+QDSCL7XHC98S+hdOlqQZNL6KvsV5mqykREHO64euTtuXk8zH/iNTUysOnlQ+ai
	z5I8oPHeVEBOz0SLlqYajpXbUvZJVi0EO1dSRLbVN+RmcKIJwZAVnVueNI6xxf
X-Google-Smtp-Source: ABdhPJxpKVPgBmSwMLxTgxDxKVtPFOPZWNTvlrV9XVG6iLySBlay6oIXCLSkzAbLq4SPaa0vkZa6ZCoSOytrqndKRRw=
X-Received: by 2002:a05:6214:a91:: with SMTP id ev17mr11439548qvb.59.1616195190344;
 Fri, 19 Mar 2021 16:06:30 -0700 (PDT)
MIME-Version: 1.0
From: aaron.brice@nikolamotor.com
Date: Fri, 19 Mar 2021 16:06:19 -0700
Message-ID: <CAMRWY0HLsy9xDiFMSgxt77ViptO19OrSYu-HX2dAiF07NYjNpg@mail.gmail.com>
Subject: gatesgarth wic pseudo issue
To: poky@lists.yoctoproject.org
X-CLOUD-SEC-AV-Info: nikolamotor2,google_mail,monitor
X-CLOUD-SEC-AV-Sent: true
X-Gm-Spam: 0
X-Gm-Phishy: 0
Content-Type: multipart/alternative; boundary="0000000000003592b805bdebc4d4"

--0000000000003592b805bdebc4d4
Content-Type: text/plain; charset="UTF-8"

I recently upgraded from dunfell to gatesgarth and it is causing problems
with the .wic file.

Our .wks file contains:

part / --source rootfs --ondisk sda --fstype=ext4 --label platform --align
1024 --use-uuid --extra-space 0 --overhead-factor 1
part /bk --source rootfs-tar --ondisk sda --fstype=ext4 --label archive
--align 1024 --use-uuid --extra-space 0 --overhead-factor 1

Where scripts/lib/wic/plugins/source/rootfs-tar.py wic plugin creates an
empty partition and puts a rootfs.tar.gz in it containing the contents of
the previous rootfs partition.  There is a script in the first partition
that does an install using the tar in the second partition.

On gatesgarth, the rootfs.tar.gz is created with incorrect uid/gid, the uid
and gid of the user running yocto.  It's caused by
commit c58711f0ea2a4d3b54e9f5f442abe3192f4697d0 which added PSEUDO_UNLOAD=1
to the wic command.  How can I get my plugin to work in this case?

Or generically, is there a better way to create a USB install wic file?

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

--0000000000003592b805bdebc4d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I recently upgraded from dunfell to gatesgarth and it is c=
ausing problems with the .wic file.<div><br></div><div>Our .wks file contai=
ns:</div><div><br></div><div>part / --source rootfs --ondisk sda --fstype=
=3Dext4 --label platform --align 1024 --use-uuid --extra-space 0 --overhead=
-factor 1<br>part /bk --source rootfs-tar --ondisk sda --fstype=3Dext4 --la=
bel archive --align 1024 --use-uuid --extra-space 0 --overhead-factor 1 <br=
><div><br></div><div>Where=C2=A0scripts/lib/wic/plugins/source/rootfs-tar.p=
y wic plugin creates an empty partition and puts a rootfs.tar.gz in it cont=
aining the contents of the previous rootfs partition.=C2=A0 There is a scri=
pt in the first partition that does an install using the tar in the second =
partition.</div><div><br></div><div>On gatesgarth, the rootfs.tar.gz is cre=
ated with incorrect uid/gid, the uid and gid of the user running yocto.=C2=
=A0 It&#39;s caused by commit=C2=A0c58711f0ea2a4d3b54e9f5f442abe3192f4697d0=
 which added PSEUDO_UNLOAD=3D1 to the wic command.=C2=A0 How can I get my p=
lugin to work in this case?</div><div><br></div><div>Or generically, is the=
re a better way to create a USB install wic file?</div><div><br></div>-- <b=
r><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signat=
ure"><div style=3D"font-family:&#39;arial&#39;,&#39;helvetica&#39;,sans-ser=
if;font-size:small"><br>
<span style=3D"font-size:13px"><span style=3D"font-family:&#39;arial&#39;,&=
#39;helvetica&#39;,sans-serif"><strong>Aaron=C2=A0Brice</strong></span></sp=
an></div>

<div style=3D"font-family:&#39;arial&#39;,&#39;helvetica&#39;,sans-serif;fo=
nt-size:small"><span style=3D"font-size:12px"><em><span style=3D"color:#a9a=
9a9"><span style=3D"font-family:&#39;arial&#39;,&#39;helvetica&#39;,sans-se=
rif"></span></span></em></span></div>

<div style=3D"font-family:&#39;arial&#39;,&#39;helvetica&#39;,sans-serif;fo=
nt-size:small"><a href=3D"mailto:aaron.brice@nikolamotor.com" target=3D"_bl=
ank"><span style=3D"color:#00aeff">aaron.brice@nikolamotor.com</span></a></=
div>

<div style=3D"font-family:&#39;arial&#39;,&#39;helvetica&#39;,sans-serif;fo=
nt-size:small">=C2=A0</div>

<div style=3D"font-family:&#39;arial&#39;,&#39;helvetica&#39;,sans-serif;fo=
nt-size:small"><a href=3D"https://nikolamotor.com" target=3D"_blank"><img h=
eight=3D"51" src=3D"https://drive.google.com/a/nikolamotor.com/uc?id=3D1Ktg=
rgH104YDWmY8S5SPSTBxDKPJQwPgy&amp;export=3Ddownload" width=3D"220"></a></di=
v>

<div style=3D"font-family:&#39;arial&#39;,&#39;helvetica&#39;,sans-serif;fo=
nt-size:small">=C2=A0</div>

<div style=3D"font-family:&#39;arial&#39;,&#39;helvetica&#39;,sans-serif;fo=
nt-size:small">
<div>
<div style=3D"font-family:&#39;arial&#39;,&#39;helvetica&#39;,sans-serif;fo=
nt-size:small;background-color:rgb(255,255,255)"><span style=3D"font-size:1=
2px"><span style=3D"color:rgb(204,204,204)"><span style=3D"font-family:&#39=
;arial&#39;,&#39;helvetica&#39;,sans-serif"><span style=3D"font-family:&#39=
;roboto&#39;;color:rgb(0,0,0);background-color:transparent;vertical-align:b=
aseline;white-space:pre-wrap"><b>Nikola Corporation</b> | </span></span></s=
pan><a href=3D"https://nikolamotor.com/" style=3D"color:rgb(17,85,204)" tar=
get=3D"_blank"><span style=3D"font-family:&#39;roboto&#39;;color:rgb(0,174,=
239);background-color:transparent;vertical-align:baseline;white-space:pre-w=
rap">www.nikolamotor.com</span></a></span></div>

<div style=3D"font-family:&#39;arial&#39;,&#39;helvetica&#39;,sans-serif;fo=
nt-size:small;background-color:rgb(255,255,255)"><span style=3D"font-size:1=
2px"><a href=3D"https://goo.gl/maps/bKfEzApeDMErgi4e7" style=3D"color:rgb(1=
7,85,204)" target=3D"_blank"><span style=3D"font-family:&#39;roboto&#39;;co=
lor:rgb(0,174,239);background-color:transparent;vertical-align:baseline;whi=
te-space:pre-wrap">4141 E Broadway Rd | Phoenix | AZ | 85040</span></a></sp=
an></div>
</div>
</div>

<div style=3D"font-family:&#39;arial&#39;,&#39;helvetica&#39;,sans-serif;fo=
nt-size:small">=C2=A0</div>

<div style=3D"font-family:&#39;arial&#39;,&#39;helvetica&#39;,sans-serif;fo=
nt-size:small">=C2=A0</div>

<div style=3D"font-family:&#39;arial&#39;,&#39;helvetica&#39;,sans-serif;fo=
nt-size:small"><span style=3D"color:rgb(153,153,153)"><span style=3D"font-s=
ize:12px">I</span><span style=3D"font-size:8pt">NFORMATION CONTAINED IN THI=
S E-MAIL TRANSMISSION IS=C2=A0 CONFIDENTIAL. IF YOU ARE NOT THE INTENDED RE=
CIPIENT, DO NOT READ, DISTRIBUTE OR REPRODUCE THIS TRANSMISSION (INCLUDING =
ANY ATTACHMENTS). IF YOU HAVE RECEIVED THIS E-MAIL IN ERROR, PLEASE NOTIFY =
THE SENDER BY E-MAIL REPLY AND THEN DELETE THIS E-MAIL. </span></span></div=
>
</div><input name=3D"virtru-metadata" type=3D"hidden" value=3D"{&quot;email=
-policy&quot;:{&quot;state&quot;:&quot;closed&quot;,&quot;expirationUnit&qu=
ot;:&quot;days&quot;,&quot;disableCopyPaste&quot;:false,&quot;disablePrint&=
quot;:false,&quot;disableForwarding&quot;:false,&quot;enableNoauth&quot;:fa=
lse,&quot;persistentProtection&quot;:false,&quot;expandedWatermarking&quot;=
:false,&quot;expires&quot;:false,&quot;isManaged&quot;:false},&quot;attachm=
ents&quot;:{},&quot;compose-id&quot;:&quot;1&quot;,&quot;compose-window&quo=
t;:{&quot;secure&quot;:false}}"></div></div>

--0000000000003592b805bdebc4d4--
