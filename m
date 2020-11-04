Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web11.19954.1604529151449828618
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Nov 2020 14:32:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@meraki.net header.s=google header.b=KTesP4rK;
 spf=pass (domain: meraki.net, ip: 209.85.218.50, mailfrom: william.hauser@meraki.net)
Received: by mail-ej1-f50.google.com with SMTP id j24so104833ejc.11
        for <poky@lists.yoctoproject.org>; Wed, 04 Nov 2020 14:32:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=meraki.net; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lsVbVr4QQaadwPDjc5u1mJoVjzRfetaITGU/0Go+kaw=;
        b=KTesP4rKYFNdTGcLRZD2pSTlRoApOxkup1q2mDoX9XfQKVQuy9OP5X50zAZzdekT5W
         pWw9g7ltevjCDsR/q4P4f7LaQbDHWFU0XKDvOsnvrWivXS0k80b4Ox0X6duUePe9ikhJ
         F+xqq8q52wchQy0FemfCgDoqPEncEeIe/gZD4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lsVbVr4QQaadwPDjc5u1mJoVjzRfetaITGU/0Go+kaw=;
        b=MdTXbodpqVYr1mVgHwH8lIzA9+GjNyOUrz5kDS83esyhAMSjn762wIoOjJw0RHv60H
         +1guGnKF+1/qRJWxuAWDUJ8si2Sg0km9e6v2OYwovVZf4luIYv3fA1zqAF8unYjdXR4f
         3I3jPiVJuDeZUV+si6ozsQtYFv7RtFEqi2TnZYkyblvwyQ1Z/+kUILDKnyAP7C+h3n7l
         qwFQW/ADCj4VALULcTpyEInH01AE8+w4Uwu/CZzxqEezG97JsjuMcjuBLMm5djsu9uAF
         R3jviSn5sYOMiSM8qgyjkG53vcw7SwD1eWPZSsfJXq7Tl8CVQq9RlINDTqiPCjwTTCES
         FECQ==
X-Gm-Message-State: AOAM531ZuQ0+gk+M8Y1d/PTEhdZy/vX+WlRJjBO3uAzXBtBJCxcqK7/f
	3kWwGkPYsG+zC2miIc7vRGbNEQGISojkxG4Hfln89g==
X-Google-Smtp-Source: ABdhPJyCWx2ZK6CQVFYHanLuHD+1y0hMyma00hNPEdTNcYKI4ZiiidypsO/iYdDVKYEBiFn4oxnRyT3eApdxE4DBgNE=
X-Received: by 2002:a17:906:af8c:: with SMTP id mj12mr253663ejb.85.1604529149827;
 Wed, 04 Nov 2020 14:32:29 -0800 (PST)
MIME-Version: 1.0
References: <cover.1602083275.git.whauser@meraki.com> <d29d662a45f8a5e845211c59eac3cdbcc779f1fe.1602083275.git.whauser@meraki.com>
 <6dcef0da-bce4-3a5e-6fe4-f666a3167003@windriver.com>
In-Reply-To: <6dcef0da-bce4-3a5e-6fe4-f666a3167003@windriver.com>
From: "William Hauser" <william.hauser@meraki.net>
Date: Wed, 4 Nov 2020 14:32:19 -0800
Message-ID: <CANn=fWkuU65ww3Xtb95t_X57UTtbd7+2m2ATA_O0eSu9aABxXA@mail.gmail.com>
Subject: Re: [poky] [PULL][PATCH 1/1] package.bbclass: fix image_debugfs symlinks
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: poky@lists.yoctoproject.org, William Hauser <whauser@meraki.com>
Content-Type: multipart/alternative; boundary="00000000000002106e05b34f8e51"

--00000000000002106e05b34f8e51
Content-Type: text/plain; charset="UTF-8"

Sent to openembedded-core@lists.openembedded.org. Thanks, Randy.

On Wed, Nov 4, 2020 at 2:18 PM Randy MacLeod <randy.macleod@windriver.com>
wrote:

> On 2020-10-08 12:59 p.m., William Hauser via lists.yoctoproject.org wrote:
>
> The comment in this code indicates that the code is meant to ensure symlinks
> are only copied to the debugfs if their target has already been copied, but
> instead checks for the existence of the symlink that has yet to be created.
> As a result this check always fails.
>
> This check is safe to get rid of since we will only attempt to copy a
> symlink to the debugfs if it's original target exists and is an ELF. It
> is, however, still possible for a dead symlink to end up in the debugfs
> if its original target was stripped.
>
> Signed-off-by: William Hauser <william.hauser@meraki.com> <william.hauser@meraki.com>
> ---
>  meta/classes/package.bbclass | 8 --------
>  1 file changed, 8 deletions(-)
>
> diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
> index e6236c0bb2..47f3df2e13 100644
> --- a/meta/classes/package.bbclass
> +++ b/meta/classes/package.bbclass
> @@ -1258,14 +1258,6 @@ python split_and_strip_files () {
>              src = file[len(dvar):]
>              dest = debuglibdir + os.path.dirname(src) + debugdir + "/" + os.path.basename(src) + debugappend
>              fpath = dvar + dest
> -            # Skip it if the target doesn't exist
> -            try:
> -                s = os.stat(fpath)
> -            except OSError as e:
> -                (err, strerror) = e.args
> -                if err != errno.ENOENT:
> -                    raise
> -                continue
>
>              ltarget = symlinks[file]
>              lpath = os.path.dirname(ltarget)
>
>
> Hi William,
>
> I think this patch/email got lost because it was sent to the wrong list and
> we've been in the last stretch of the gatesgarth release. Could you please
> re-send to oe-core if it wasn't merged?
>
> See the README.poky below.
>
> Thanks,
>
> ../Randy
>
> Contribution Guidelines
> =======================
>
> A guide to submitting patches to OpenEmbedded is available at:
>
> http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded
>
> There is good documentation on how to write/format patches at:
>
> https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines
>
>
> Where to Send Patches
> =====================
>
> As Poky is an integration repository (built using a tool called
> combo-layer),
> patches against the various components should be sent to their respective
> upstreams:
>
> bitbake:
>     Git repository: http://git.openembedded.org/bitbake/
>     Mailing list: bitbake-devel@lists.openembedded.org
>
> documentation:
>     Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/
>     Mailing list: docs@lists.yoctoproject.org
>
> meta-poky, meta-yocto-bsp:
>     Git repository:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto(-bsp)
>     Mailing list: poky@lists.yoctoproject.org
>
> Everything else should be sent to the OpenEmbedded Core mailing list.  If
> in
> doubt, check the oe-core git repository for the content you intend to
> modify.
> Before sending, be sure the patches apply cleanly to the current oe-core
> git
> repository.
>
>     Git repository: http://git.openembedded.org/openembedded-core/
>     Mailing list: openembedded-core@lists.openembedded.org
>
> Note: The scripts directory should be treated with extra care as it is a
> mix of
> oe-core and poky-specific files from meta-poky.
>
>
> 
>
>
>
> --
> # Randy MacLeod
> # Wind River Linux
>
>

--00000000000002106e05b34f8e51
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sent to=C2=A0<a href=3D"mailto:openembedded-core@lists.ope=
nembedded.org">openembedded-core@lists.openembedded.org</a>. Thanks, Randy.=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Wed, Nov 4, 2020 at 2:18 PM Randy MacLeod &lt;<a href=3D"mailto:randy.ma=
cleod@windriver.com" target=3D"_blank">randy.macleod@windriver.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">

  
  <div>
    <div>On 2020-10-08 12:59 p.m., William
      Hauser via <a href=3D"http://lists.yoctoproject.org" target=3D"_blan=
k">lists.yoctoproject.org</a> wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <pre>The comment in this code indicates that the code is meant to en=
sure symlinks
are only copied to the debugfs if their target has already been copied, bu=
t
instead checks for the existence of the symlink that has yet to be created=
.
As a result this check always fails.

This check is safe to get rid of since we will only attempt to copy a
symlink to the debugfs if it&#39;s original target exists and is an ELF. I=
t
is, however, still possible for a dead symlink to end up in the debugfs
if its original target was stripped.

Signed-off-by: William Hauser <a href=3D"mailto:william.hauser@meraki.com"=
 target=3D"_blank">&lt;william.hauser@meraki.com&gt;</a>
---
 meta/classes/package.bbclass | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index e6236c0bb2..47f3df2e13 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -1258,14 +1258,6 @@ python split_and_strip_files () {
             src =3D file[len(dvar):]
             dest =3D debuglibdir + os.path.dirname(src) + debugdir + &quo=
t;/&quot; + os.path.basename(src) + debugappend
             fpath =3D dvar + dest
-            # Skip it if the target doesn&#39;t exist
-            try:
-                s =3D os.stat(fpath)
-            except OSError as e:
-                (err, strerror) =3D e.args
-                if err !=3D errno.ENOENT:
-                    raise
-                continue
=20
             ltarget =3D symlinks[file]
             lpath =3D os.path.dirname(ltarget)</pre>
    </blockquote>
    <p><br>
    </p>
    <p>Hi William,</p>
    <p>I think this patch/email got lost because it was sent to the
      wrong list and<br>
      we&#39;ve been in the last stretch of the gatesgarth release. Could
      you please<br>
      re-send to oe-core if it wasn&#39;t merged?</p>
    <p>See the README.poky below.</p>
    <p>Thanks,<br>
    </p>
    <p>../Randy<br>
    </p>
    <p>Contribution Guidelines<br>
      =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>
      <br>
      A guide to submitting patches to OpenEmbedded is available at:<br>
      <br>
<a href=3D"http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenE=
mbedded" target=3D"_blank">http://www.openembedded.org/wiki/How_to_submit_a=
_patch_to_OpenEmbedded</a><br>
      <br>
      There is good documentation on how to write/format patches at:<br>
      <br>
      <a href=3D"https://www.openembedded.org/wiki/Commit_Patch_Message_Gu=
idelines" target=3D"_blank">https://www.openembedded.org/wiki/Commit_Patch_=
Message_Guidelines</a><br>
      <br>
      <br>
      Where to Send Patches<br>
      =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
      <br>
      As Poky is an integration repository (built using a tool called
      combo-layer),<br>
      patches against the various components should be sent to their
      respective<br>
      upstreams:<br>
      <br>
      bitbake:<br>
      =C2=A0=C2=A0=C2=A0 Git repository: <a href=3D"http://git.openembedde=
d.org/bitbake/" target=3D"_blank">http://git.openembedded.org/bitbake/</a><=
br>
      =C2=A0=C2=A0=C2=A0 Mailing list: <a href=3D"mailto:bitbake-devel@lis=
ts.openembedded.org" target=3D"_blank">bitbake-devel@lists.openembedded.org=
</a><br>
      <br>
      documentation:<br>
      =C2=A0=C2=A0=C2=A0 Git repository:
      <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/" ta=
rget=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/</a><b=
r>
      =C2=A0=C2=A0=C2=A0 Mailing list: <a href=3D"mailto:docs@lists.yoctop=
roject.org" target=3D"_blank">docs@lists.yoctoproject.org</a><br>
      <br>
      meta-poky, meta-yocto-bsp:<br>
      =C2=A0=C2=A0=C2=A0 Git repository:
      <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto(-bsp=
)" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto(-=
bsp)</a><br>
      =C2=A0=C2=A0=C2=A0 Mailing list: <a href=3D"mailto:poky@lists.yoctop=
roject.org" target=3D"_blank">poky@lists.yoctoproject.org</a><br>
      <br>
      Everything else should be sent to the OpenEmbedded Core mailing
      list.=C2=A0 If in<br>
      doubt, check the oe-core git repository for the content you intend
      to modify.<br>
      Before sending, be sure the patches apply cleanly to the current
      oe-core git<br>
      repository.<br>
      <br>
      =C2=A0=C2=A0=C2=A0 Git repository: <a href=3D"http://git.openembedde=
d.org/openembedded-core/" target=3D"_blank">http://git.openembedded.org/ope=
nembedded-core/</a><br>
      =C2=A0=C2=A0=C2=A0 Mailing list: <a href=3D"mailto:openembedded-core=
@lists.openembedded.org" target=3D"_blank">openembedded-core@lists.openembe=
dded.org</a><br>
      <br>
      Note: The scripts directory should be treated with extra care as
      it is a mix of<br>
      oe-core and poky-specific files from meta-poky.<br>
      <br>
    </p>
    <blockquote type=3D"cite">
      <pre></pre>
      <br>
      <fieldset></fieldset>
      <pre>

</pre>
    </blockquote>
    <p><br>
    </p>
    <pre cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
  </div>

</blockquote></div>

--00000000000002106e05b34f8e51--
