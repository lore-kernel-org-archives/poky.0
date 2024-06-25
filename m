Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C52BBC2BBCA
	for <webhook@archiver.kernel.org>; Tue, 25 Jun 2024 13:16:58 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web11.172152.1719321410635989351
 for <poky@lists.yoctoproject.org>;
 Tue, 25 Jun 2024 06:16:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lmn9sG7M;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ebeefb9a7fso67933011fa.0
        for <poky@lists.yoctoproject.org>; Tue, 25 Jun 2024 06:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719321409; x=1719926209; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AahexAbT5nejvRkTSBfjyQLu8Rkjg92ZMfH+QynAwYg=;
        b=lmn9sG7MlcP9dr7qWzJfXl2DlcdGHBeyqoyG/TJukG++B4QAhpy8wFrtOuhMo+geaz
         eKY3qHoyzl7TlTi+t+P6fJ+r8SmyANXrJrVibyJBz1mzYR11ORKMOS3YQVQr/cCAmTdU
         DR2aSS4Yv3+na5ceGmXppNIaPO3bwJGE/ZQmy4QRD+DkqFVM40KvWrtmRgim0L90Rlm8
         pBuRgtBbm/rkDeTmXjI/RSRfL74fXZEQy0gZUpOjgUEEnIr4bQr25Eokfq8Tw+HTOF1L
         pxKFHNYUpze3bPYsEOA/ImsTD3oY3rjqU+/IhBPoxW79mYrrXwAJk9oQDYfTvLUCEFo/
         o8ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719321409; x=1719926209;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AahexAbT5nejvRkTSBfjyQLu8Rkjg92ZMfH+QynAwYg=;
        b=ap26rW0l3i2Qzf5Pof2/42u8k8E14SbDY621AZHKiD1UH46cKF0biheqQEV4HDvwhz
         pnAhnko933dLuh7EP6RJDIE2WtNlxw47HA8KZUeclDdO9T6vxtcQ9cy4J+Kl6QlHUhHl
         wirsmsLFwWXbdc+GAAzEAF84zcY3bNQr2QTJGIFL0qI2W43NxQHeRbjz5krNRat7U819
         yUWZhSc+T0VFUvbwR5YUGFt3mGa+Zhf1+5+z9plF3DdYwrsUdQOZPZccICoYU3cgrskZ
         m2rkckFTxdrpsMuU1ze2MkGCwSp1XAUDLfHwEkBdFylnNbenO4czVztHlQ3iEIhNQ9RM
         Yhew==
X-Gm-Message-State: AOJu0YwaI30ZbhG59NHLZLBAPd3+0mzRDl6fstJ8NkQVZPFzrxZ0o1SV
	c6A3fqqUKkB3Y2ZibnxhPHuAUZ5hJzqSZxz2O8gKreJ0XuKMKDwU6WBCXNS0SolAX5IJ53goyP3
	mZWF92LdARm1+W6GrTuf/pOdjs6E=
X-Google-Smtp-Source: AGHT+IH3cnwSOfdYZtohPM7pUP1J7dfqp5LLvbIeo/zCAa7w3Xuk4t8ybo5IEJ8gFfmD06hfL2n4xHNl/Uv/U/oWcy8=
X-Received: by 2002:a2e:9cc8:0:b0:2ec:3fb8:6a91 with SMTP id
 38308e7fff4ca-2ec5797a562mr55186541fa.19.1719321408422; Tue, 25 Jun 2024
 06:16:48 -0700 (PDT)
MIME-Version: 1.0
References: <EERs.1719320900453164786.rlUz@lists.yoctoproject.org>
In-Reply-To: <EERs.1719320900453164786.rlUz@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 25 Jun 2024 15:16:36 +0200
Message-ID: <CANNYZj_7bwTBr_P-2TnYhtAEr4wRhb2XsLwJS_63HnKwJ5g=Xw@mail.gmail.com>
Subject: Re: [poky] execute pkg_postinst_ontarget when read-only-rootfs-delayed-postinsts
 is set for a read only rootfs
To: Tobias.Gassner.ext@karlstorz.com
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000cdcca1061bb6b5c6"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 25 Jun 2024 13:16:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13392

--000000000000cdcca1061bb6b5c6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I=E2=80=99m not exactly sure, but is one supposed to specify one or the oth=
er, but
not both at the same time?

Alex

On Tue 25. Jun 2024 at 15.08, Gassner, Tobias.ext via lists.yoctoproject.or=
g
<Tobias.Gassner.ext=3Dkarlstorz.com@lists.yoctoproject.org> wrote:

> Hi,
>
> we specify read-only-rootfs and use an overlayFS to* "make the roofts
> writable"*. We also want to execute a postinstall script for our package
> on the target:
>
> pkg_postinst_ontarget:${PN}() {
>
>     #some code...
> }
>
> in order for bitbake to not complain that a read-only rootfs and
> pkg_postinst_ontarget don't work together, we also specify
> read-only-rootfs-delayed-postinsts
> <https://docs.yoctoproject.org/dev/ref-manual/features.html>
>
> However, it seems that the run-postinsts package is removed by the _unins=
tall_unneeded
> function (in file meta/lib/oe/rootfs.py), because the image_rorfs flag
> only checks for read-only-rootfs and not for read-only-rootfs-delayed-pos=
tinsts
> as well. Hence, the postinst code is not executed.
>
> When I use the fix at the end of this post, the behavior is as expected.
> However, I am not an expert in this area of the project and want to colle=
ct
> your feedback first, before proposing to merge.
>
> PS: a pointer to read-only-rootfs-delayed-postinsts in the docu
> <https://docs.yoctoproject.org/dev/dev-manual/read-only-rootfs.html#post-=
installation-scripts-and-read-only-root-filesystem> would
> be very helpful.
>
>
> Best regards
> -Tobias
>
>
>
> From 608050984c5be67f506a0877fadbbe0b61575e54 Mon Sep 17 00:00:00 2001
> From: "Gassner, Tobias.ext" <tobias.gassner.ext@karlstorz.com>
> Date: Tue, 25 Jun 2024 13:30:17 +0200
> Subject: [PATCH] keep delayed-postinsts when
>  read-only-rootfs-delayed-postinsts is set for a read only rootfs
>
> Signed-off-by: Gassner, Tobias.ext <tobias.gassner.ext@karlstorz.com>
> ---
>  meta/lib/oe/rootfs.py | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/meta/lib/oe/rootfs.py b/meta/lib/oe/rootfs.py
> index 8cd48f9450..5abce4ad7d 100644
> --- a/meta/lib/oe/rootfs.py
> +++ b/meta/lib/oe/rootfs.py
> @@ -269,7 +269,11 @@ class Rootfs(object, metaclass=3DABCMeta):
>                  self.pm.remove(["run-postinsts"])
>
>          image_rorfs =3D bb.utils.contains("IMAGE_FEATURES",
> "read-only-rootfs",
> +                                        True, False, self.d) and \
> +                      not bb.utils.contains("IMAGE_FEATURES",
> +
>  "read-only-rootfs-delayed-postinsts",
>                                          True, False, self.d)
> +
>          image_rorfs_force =3D self.d.getVar('FORCE_RO_REMOVE')
>
>          if image_rorfs or image_rorfs_force =3D=3D "1":
>
>
> --
> 2.45.2
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13391):
> https://lists.yoctoproject.org/g/poky/message/13391
> Mute This Topic: https://lists.yoctoproject.org/mt/106869018/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000cdcca1061bb6b5c6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I=E2=80=99m not exactly sure, but is one supposed to spec=
ify one or the other, but not both at the same time?</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue 25. Jun 2024 at 15.08, Gassner=
, Tobias.ext via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproje=
ct.org</a> &lt;Tobias.Gassner.ext=3D<a href=3D"mailto:karlstorz.com@lists.y=
octoproject.org">karlstorz.com@lists.yoctoproject.org</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-colo=
r:rgb(204,204,204)">Hi,<br><br>we specify <span style=3D"font-family:courie=
r_newregular,courier">read-only-rootfs</span> and use an overlayFS to<em> &=
quot;make the roofts writable&quot;</em>. We also want to execute a postins=
tall script for our package on the target:<br><br>
<div style=3D"font-family:&quot;Droid Sans Mono&quot;,monospace,monospace;f=
ont-weight:normal;font-size:14px;line-height:19px;white-space:pre-wrap;back=
ground-color:rgb(255,255,255);color:rgb(0,0,0)">
<div style=3D"font-family:&quot;Droid Sans Mono&quot;,monospace,monospace">=
<span style=3D"font-family:courier_newregular,courier;font-size:16px"><span=
 style=3D"font-family:courier_newregular,courier;color:rgb(0,0,0)">pkg_post=
inst_ontarget:</span><span style=3D"font-family:courier_newregular,courier;=
color:rgb(0,0,255)">${PN}</span><span style=3D"font-family:courier_newregul=
ar,courier;color:rgb(0,0,0)">() {</span></span></div>
</div>
<p><span style=3D"font-family:courier_newregular,courier;font-size:16px">=
=C2=A0 =C2=A0 #some code...</span><br><span style=3D"font-family:courier_ne=
wregular,courier;font-size:16px">}</span><br><br>in order for bitbake to no=
t complain that a read-only rootfs and <span style=3D"font-family:courier_n=
ewregular,courier;font-size:14px"><span style=3D"font-family:courier_newreg=
ular,courier;color:rgb(0,0,0)">pkg_postinst_ontarget<span style=3D"font-fam=
ily:system-ui,&quot;helvetica neue&quot;;font-size:16px"> don&#39;t work to=
gether, </span></span></span>we also specify <a href=3D"https://docs.yoctop=
roject.org/dev/ref-manual/features.html" rel=3D"noopener" target=3D"_blank"=
>read-only-rootfs-delayed-postinsts</a><br><br>However, it seems that the <=
span style=3D"font-family:courier_newregular,courier">run-postinsts</span> =
package is removed by the <span style=3D"color:rgb(0,0,0)">_uninstall_unnee=
ded </span><span style=3D"white-space:pre-wrap;background-color:var(--light=
-mode-body-color)"><span style=3D"white-space:pre-wrap;background-color:var=
(--light-mode-body-color)">function (in file meta/lib/oe/rootfs.py), becaus=
e the <span style=3D"color:rgb(0,0,0)">image_rorfs </span><span style=3D"ba=
ckground-color:var(--light-mode-body-color)">flag only checks for </span><s=
pan style=3D"color:rgb(163,21,21)">read-only-rootfs </span><span style=3D"b=
ackground-color:var(--light-mode-body-color)">and not for </span><span styl=
e=3D"color:rgb(163,21,21)">read-only-rootfs-delayed-postinsts </span><span =
style=3D"background-color:var(--light-mode-body-color)">as well. </span></s=
pan></span><span style=3D"white-space:pre-wrap;background-color:var(--light=
-mode-body-color)"><span style=3D"white-space:pre-wrap;background-color:var=
(--light-mode-body-color)"><span style=3D"background-color:var(--light-mode=
-body-color)">Hence, the postinst code is not executed.</span></span></span=
><br><br>When I use the fix at the end of this post, the behavior is as exp=
ected. However, I am not an expert in this area of the project and want to =
collect your feedback first, before proposing to merge.<br><br>PS: a pointe=
r to <span style=3D"color:rgb(163,21,21)">read-only-rootfs-delayed-postinst=
s </span><span style=3D"white-space:pre-wrap;background-color:var(--light-m=
ode-body-color)">in the <a href=3D"https://docs.yoctoproject.org/dev/dev-ma=
nual/read-only-rootfs.html#post-installation-scripts-and-read-only-root-fil=
esystem" rel=3D"noopener" target=3D"_blank">docu</a> </span><span style=3D"=
white-space:pre-wrap;background-color:var(--light-mode-body-color)">would b=
e very helpful.</span></p>
<p><br>Best regards<br>-Tobias</p>
<p>=C2=A0</p>
<p><span style=3D"font-family:courier_newregular,courier">From 608050984c5b=
e67f506a0877fadbbe0b61575e54 Mon Sep 17 00:00:00 2001</span><br><span style=
=3D"font-family:courier_newregular,courier">From: &quot;Gassner, Tobias.ext=
&quot; &lt;<a href=3D"mailto:tobias.gassner.ext@karlstorz.com" target=3D"_b=
lank" style=3D"font-family:courier_newregular,courier">tobias.gassner.ext@k=
arlstorz.com</a>&gt;</span><br><span style=3D"font-family:courier_newregula=
r,courier">Date: Tue, 25 Jun 2024 13:30:17 +0200</span><br><span style=3D"f=
ont-family:courier_newregular,courier">Subject: [PATCH] keep delayed-postin=
sts when</span><br><span style=3D"font-family:courier_newregular,courier">=
=C2=A0read-only-rootfs-delayed-postinsts is set for a read only rootfs</spa=
n><br><br><span style=3D"font-family:courier_newregular,courier">Signed-off=
-by: Gassner, Tobias.ext &lt;<a href=3D"mailto:tobias.gassner.ext@karlstorz=
.com" target=3D"_blank" style=3D"font-family:courier_newregular,courier">to=
bias.gassner.ext@karlstorz.com</a>&gt;</span><br><span style=3D"font-family=
:courier_newregular,courier">---</span><br><span style=3D"font-family:couri=
er_newregular,courier">=C2=A0meta/lib/oe/rootfs.py | 4 ++++</span><br><span=
 style=3D"font-family:courier_newregular,courier">=C2=A01 file changed, 4 i=
nsertions(+)</span><br><br><span style=3D"font-family:courier_newregular,co=
urier">diff --git a/meta/lib/oe/rootfs.py b/meta/lib/oe/rootfs.py</span><br=
><span style=3D"font-family:courier_newregular,courier">index 8cd48f9450..5=
abce4ad7d 100644</span><br><span style=3D"font-family:courier_newregular,co=
urier">--- a/meta/lib/oe/rootfs.py</span><br><span style=3D"font-family:cou=
rier_newregular,courier">+++ b/meta/lib/oe/rootfs.py</span><br><span style=
=3D"font-family:courier_newregular,courier">@@ -269,7 +269,11 @@ class Root=
fs(object, metaclass=3DABCMeta):</span><br><span style=3D"font-family:couri=
er_newregular,courier">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0self.pm.remove([&quot;run-postinsts&quot;])</span><br><span style=
=3D"font-family:courier_newregular,courier">=C2=A0</span><br><span style=3D=
"font-family:courier_newregular,courier">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
image_rorfs =3D bb.utils.contains(&quot;IMAGE_FEATURES&quot;, &quot;read-on=
ly-rootfs&quot;,</span><br><span style=3D"font-family:courier_newregular,co=
urier">+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Tr=
ue, False, self.d) and \</span><br><span style=3D"font-family:courier_newre=
gular,courier">+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0not bb.utils.contains(&quot;IMAGE_FEATURES&quot;,</span=
><br><span style=3D"font-family:courier_newregular,courier">+ =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;read-only-rootfs-=
delayed-postinsts&quot;,</span><br><span style=3D"font-family:courier_newre=
gular,courier">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0True, False, self.d)</span><br><span style=3D"font-family:cour=
ier_newregular,courier">+</span><br><span style=3D"font-family:courier_newr=
egular,courier">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0image_rorfs_force =3D sel=
f.d.getVar(&#39;FORCE_RO_REMOVE&#39;)</span><br><span style=3D"font-family:=
courier_newregular,courier">=C2=A0</span><br><span style=3D"font-family:cou=
rier_newregular,courier">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if image_rorfs o=
r image_rorfs_force =3D=3D &quot;1&quot;:</span></p><p><br><span style=3D"f=
ont-family:courier_newregular,courier">--=C2=A0</span><br><span style=3D"fo=
nt-family:courier_newregular,courier">2.45.2</span></p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13391): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13391" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13391</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/106869018/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/106869018/1686489</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanav=
in@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000cdcca1061bb6b5c6--

