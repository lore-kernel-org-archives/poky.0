Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.web10.2071.1629826665832982129
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Aug 2021 10:37:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@nikolamotor-com.20150623.gappssmtp.com header.s=20150623 header.b=r9s6wicE;
 spf=pass (domain: nikolamotor.com, ip: 209.85.222.178, mailfrom: aaron.brice@nikolamotor.com)
Received: by mail-qk1-f178.google.com with SMTP id y144so24066588qkb.6
        for <poky@lists.yoctoproject.org>; Tue, 24 Aug 2021 10:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nikolamotor-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=ytjH/yUcY9a/V3hgoSxr2IUNYoVX9hd3MiEvLRRMJ54=;
        b=r9s6wicERYkotiTYmHyEVHCxpNCpLwpzlD2QIQeaaLafqtwtWyoOYkfQpLpbrwc7pO
         sIYWGr4gnrJd1hUxEnMkRpzQ66KA13v/5hZz2Faa4Vq0Db5yHzTQYZfRvDyDo7VsueKb
         BPLbrUDy1x0x2SF6km7XZFqSgH09pvd+Qbgyq86+dRlXlTVjrtpV1+3wzHHk6A2OcFC8
         LpZkDmJ3+wPF+YoxhQZybsIQ5M1LklOQANrzaHZ9vMxdTHzgGFGsydF+DSlQB8FA1WCS
         zxSgeSjvk519WAyNPlO/B6C5VuvC9/VhEYENjqCiqCgPLt9CdVC8BWZ7aqZgOXLRxRx5
         7UjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ytjH/yUcY9a/V3hgoSxr2IUNYoVX9hd3MiEvLRRMJ54=;
        b=Y5e7YKtIe9hx6nHScOKws3j/W/HjiVHTPbE3gtV/h7pEL5Yvpj34UcmQm6gZAuemwD
         KE8J4eKJyOZzcA72izATo+cYWsK8rP2CBX+DMWY5/qvRugy5ninZZcWdX5ugShdm5na7
         FIwVc38TPmRvGifrYMapKQl1qaNFeX99MnB2AMof1HXiipfFP/vZDjpT1NT5plxoAw6o
         6qarQ4bQ39XW/rXzl7mtfl68mM3C9jzoTgzk0qCZNkGMD3yUcsQMUByQezoI3YdVmt8V
         15+AtUywzBfgHtZ5iUuRDcYvEBbrTbyLGMiSxlIemfo1R72lxKwfX3vPkbfzMktkPnfB
         jUxQ==
X-Gm-Message-State: AOAM530V+pVshEO1Uc8C9FCMQVh6O5kkGRRiNAu75hgzdliAYghGSOBU
	xdwG6NXxSrJ8hSENDjMuz61psZdPyQClbsxf6xLHtZz9Nxzvod3Em0eZdZCjNOH6g2Vs/mZSQ0t
	FZyvrMfeplzBE2uUCExt5Qm2NJBuROWoMXDK3DCZ61j0I86gx/UXpqLhaIvCEWn2CZSgxkwsKJU
	pTi3/aDcavfbtlm2TEgkEw9plRRKdPCUeuJ7RQXkDg8WiuoeiU1PSjySSLhhzlMBQ=
X-Google-Smtp-Source: ABdhPJyTxA7jgX5sihSSIS/KUG108wU2G88OPRlvp6ZbhO/NCIgoH/9/Hb7Vhbmn9YwAy6k9+jJVzYXAikv5lP+FpMA=
X-Received: by 2002:a05:620a:15a5:: with SMTP id f5mr28410006qkk.80.1629826664568;
 Tue, 24 Aug 2021 10:37:44 -0700 (PDT)
MIME-Version: 1.0
From: "Aaron Brice" <aaron.brice@nikolamotor.com>
Date: Tue, 24 Aug 2021 10:37:33 -0700
Message-ID: <CAMRWY0Hp0uUmLOHp9awqECmBr4FZ9tGYwacKbtJ73w+FuFQMhQ@mail.gmail.com>
Subject: pkgconfig-native configure fail
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
X-CLOUD-SEC-AV-Info: nikolamotor2,google_mail,monitor
X-CLOUD-SEC-AV-Sent: true
X-Gm-Spam: 0
X-Gm-Phishy: 0
Content-Type: multipart/alternative; boundary="00000000000063334505ca519750"

--00000000000063334505ca519750
Content-Type: text/plain; charset="UTF-8"

Upgrading from gatesgarth to latest poky master branch today.  I'm running
into an error with pkgconfig-native, where it can't find
pthread_create/join when configuring glib:

| checking for thread implementation... posix
| checking thread related cflags... -D_REENTRANT
| checking for pthread_create/pthread_join... no
| checking for pthread_create/pthread_join in -lpthread... no
| checking for pthread_create/pthread_join in -lpthread32... no
| checking for pthread_create/pthread_join in -lpthreads... no
| checking for pthread_create/pthread_join in -lthread... no
| configure: error: I can't find the libraries for the thread implementation
|                  posix. Please choose another thread implementation or
|                   provide information on your thread implementation.
| configure: error: ../../git/glib/configure failed for glib
| WARNING:
/var/tmp/yocto/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configure.107:283
exit 1 from 'exit 1'
| WARNING: Backtrace (BB generated script):
|       #1: bbfatal_log,
/var/tmp/yocto/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configure.107,
line 283
|       #2: oe_runconf,
/var/tmp/yocto/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configure.107,
line 259
|       #3: autotools_do_configure,
/var/tmp/yocto/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configure.107,
line 229
|       #4: do_configure,
/var/tmp/yocto/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configure.107,
line 149
|       #5: main,
/var/tmp/yocto/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configure.107,
line 287
|

Building out of an Ubuntu 20.04 docker container that was building
gatesgarth ok.  Any ideas why I might be having pthread issues now?

Thanks,
-- 

*Aaron Brice*
aaron.brice@nikolamotor.com

[image: Nikola Logo] <https://www.nikolamotor.com>

*Nikola Corporation* | www.nikolamotor.com <https://nikolamotor.com/>
4141 E Broadway Rd | Phoenix | AZ | 85040
<https://goo.gl/maps/bKfEzApeDMErgi4e7>


INFORMATION CONTAINED IN THIS E-MAIL TRANSMISSION IS  CONFIDENTIAL. IF YOU
ARE NOT THE INTENDED RECIPIENT, DO NOT READ, DISTRIBUTE OR REPRODUCE THIS
TRANSMISSION (INCLUDING ANY ATTACHMENTS). IF YOU HAVE RECEIVED THIS E-MAIL
IN ERROR, PLEASE NOTIFY THE SENDER BY E-MAIL REPLY AND THEN DELETE THIS
E-MAIL.

--00000000000063334505ca519750
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Upgrading from gatesgarth to latest poky master branch tod=
ay.=C2=A0 I&#39;m running into an error with pkgconfig-native, where it can=
&#39;t find pthread_create/join when configuring glib:<div><br></div><div>|=
 checking for thread implementation... posix<br>| checking thread related c=
flags... -D_REENTRANT<br>| checking for pthread_create/pthread_join... no<b=
r>| checking for pthread_create/pthread_join in -lpthread... no<br>| checki=
ng for pthread_create/pthread_join in -lpthread32... no<br>| checking for p=
thread_create/pthread_join in -lpthreads... no<br>| checking for pthread_cr=
eate/pthread_join in -lthread... no<br>| configure: error: I can&#39;t find=
 the libraries for the thread implementation<br>| =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0posix. Please choose another thread i=
mplementation or<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 provide information on your thread implementation.<br>| configur=
e: error: ../../git/glib/configure failed for glib<br>| WARNING: /var/tmp/y=
octo/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/tem=
p/run.do_configure.107:283 exit 1 from &#39;exit 1&#39;<br>| WARNING: Backt=
race (BB generated script):<br>| =C2=A0 =C2=A0 =C2=A0 #1: bbfatal_log, /var=
/tmp/yocto/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-=
r0/temp/run.do_configure.107, line 283<br>| =C2=A0 =C2=A0 =C2=A0 #2: oe_run=
conf, /var/tmp/yocto/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+e=
df8e6f0ea-r0/temp/run.do_configure.107, line 259<br>| =C2=A0 =C2=A0 =C2=A0 =
#3: autotools_do_configure, /var/tmp/yocto/work/x86_64-linux/pkgconfig-nati=
ve/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configure.107, line 229<br>|=
 =C2=A0 =C2=A0 =C2=A0 #4: do_configure, /var/tmp/yocto/work/x86_64-linux/pk=
gconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configure.107, l=
ine 149<br>| =C2=A0 =C2=A0 =C2=A0 #5: main, /var/tmp/yocto/work/x86_64-linu=
x/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configure.10=
7, line 287<br>| <br><div><br></div><div>Building out of an Ubuntu 20.04 do=
cker container that was building gatesgarth ok.=C2=A0 Any ideas why I might=
 be having pthread issues now?</div><div><br></div><div>Thanks,</div>-- <br=
><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signatu=
re"><div style=3D"font-family:&#39;arial&#39;,&#39;helvetica&#39;,sans-seri=
f;font-size:small"><br>
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
nt-size:small"><a href=3D"https://www.nikolamotor.com" target=3D"_blank"><i=
mg alt=3D"Nikola Logo" height=3D"58" src=3D"https://storage.googleapis.com/=
signaturesatori/customer-C0270szk7/images/FJzDB.png" width=3D"250"></a></di=
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

--00000000000063334505ca519750--
