Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 706B2E00961; Fri, 24 Feb 2017 06:48:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.169 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4715E0049D
	for <poky@yoctoproject.org>; Fri, 24 Feb 2017 06:48:05 -0800 (PST)
Received: by mail-qt0-f169.google.com with SMTP id r45so18142493qte.3
	for <poky@yoctoproject.org>; Fri, 24 Feb 2017 06:48:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ji5jenZzMtBmr8unDU1EGo4lA92+Zy+U3JcYW1WTa3k=;
	b=UaUH5qKiiiE9bI4zRX4khCAbz69hOoTn1C/n5PpmKBeNOneXfee0/7vW9ru9lTP5nN
	XT7NCWtZ6wlyrlsL4Y+hrDUvcfM/DEuLz57F+YCkQGoVzw1OXuqBXX9VVoYyhjxEJKUm
	ywcCFKVZL63H3TutaLSi4KLXShhmhJf0dUOK2IkLeMZBQFGBPAnL1TYrrnzWwvfERzlE
	mrYu/PpZy8/d1+q0xl5t/kiSye5zkyGhIEYA/CyktO2jrbilMenkTseABO3hTZSbqfwN
	VwM/jFZNiiLOkxHa8QKmhegoDEW5X0un5jzbYqVqXMzTEmZZc8oHFcr7erU2zEXXnLyb
	zjMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ji5jenZzMtBmr8unDU1EGo4lA92+Zy+U3JcYW1WTa3k=;
	b=OcxExCTjwsF7MxgS2USd6pJi9KNOAMcHlm6q2mrBQdEi/L/Lkp9wD2D7RkJV2vnVX0
	irYaZn91EUFh3GEdohMm1m6Zfd3PaN1+BSeygh0LXKgERJZatCHtR3Zk6swIp0vu5ICr
	3MWo6WL59Z2BJhfVH/uUv+gMzBMqcGsGAbG1VP8EgOuhFGrF0OBvLhBiKPQ6zi04lshR
	JNE95KKjJvKNrHTBLgYz/HlwWoSILWfz+uH1weqZ7HeuG1HRqlnGWqi/Hn8Rz2AV6NeE
	8KjT9RCINdFqCetjvuO2pIKn+qP+7ySwNoEht0EUuKpp6tQaolUws5X3qlKgOyuCS5hM
	VedA==
X-Gm-Message-State: AMke39nRBBSFVHwxp/ku/h0uqOKBOOJNvms+pm5a8MV/c47u+vyQ7Sr7W1A/Hvg0evJGEAQL7CDna0fH5UWVXA1C
X-Received: by 10.237.43.69 with SMTP id p63mr701375qtd.68.1487947684463; Fri,
	24 Feb 2017 06:48:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Fri, 24 Feb 2017 06:47:44 -0800 (PST)
In-Reply-To: <20170224092002.1059-1-anton@advancedtelematic.com>
References: <20170224092002.1059-1-anton@advancedtelematic.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 24 Feb 2017 14:47:44 +0000
Message-ID: <CAJTo0LbVx-6eF1WQh6NxFuo1D1OBo5k5tpZVRBYWEqxWgLAe6w@mail.gmail.com>
To: anton@advancedtelematic.com
Cc: Seebs <seebs@seebs.net>, Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] Filter out erroneous POSIX ACLs
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 24 Feb 2017 14:48:07 -0000
Content-Type: multipart/alternative; boundary=94eb2c124cc42d5605054947d1f5

--94eb2c124cc42d5605054947d1f5
Content-Type: text/plain; charset=UTF-8

Hi Anton,

Thanks for the patch, but this should go to the yocto@ list, not poky@.

Also please ensure that the subject line has [pseudo] in so that Peter
notices it!

Ross

On 24 February 2017 at 09:20, <anton@advancedtelematic.com> wrote:

> From: Anton Gerasimov <anton@advancedtelematic.com>
>
> The difference between what we see in pseudo and what happens without
> pseudo can be seen by typing:
>
>     mkdir setfattr-test
>     setfattr -n system.posix_acl_default -v 0x02000000 setfattr-test
>     getfattr -n system.posix_acl_default setfattr-test
>
> Under some kernel configurations this difference leads to annoying
> errors, e.g. directories copied with 'cp -a' get broken in a fancy way.
>
> Signed-off-by: Anton Gerasimov <anton@advancedtelematic.com>
> ---
>  ports/linux/xattr/pseudo_wrappers.c | 23 +++++++++++++++++++++--
>  1 file changed, 21 insertions(+), 2 deletions(-)
>
> diff --git a/ports/linux/xattr/pseudo_wrappers.c
> b/ports/linux/xattr/pseudo_wrappers.c
> index 46bc053..31a6baf 100644
> --- a/ports/linux/xattr/pseudo_wrappers.c
> +++ b/ports/linux/xattr/pseudo_wrappers.c
> @@ -64,7 +64,7 @@ posix_permissions(const acl_header *header, int entries,
> int *extra, int *mode)
>         if (le32(header->version) != 2) {
>                 pseudo_diag("Fatal: ACL support no available for header
> version %d.\n",
>                         le32(header->version));
> -               return 1;
> +               return -1;
>         }
>         *mode = 0;
>         *extra = 0;
> @@ -140,12 +140,27 @@ static int shared_setxattr(const char *path, int fd,
> const char *name, const voi
>         pseudo_debug(PDBGF_XATTR, "setxattr(%s [fd %d], %s => '%.*s')\n",
>                 path ? path : "<no path>", fd, name, (int) size, (char *)
> value);
>
> +       /* Filter out erroneous sizes for POSIX ACL
> +        *  see posix_acl_xattr_count in include/linux/posix_acl_xattr.h
> of Linux source code */
> +       if (!strcmp(name, "system.posix_acl_access") || !strcmp(name,
> "system.posix_acl_default")) {
> +               // ACL is corrupt, issue an error
> +               if(size < sizeof(acl_header) || (size -
> sizeof(acl_header)) % sizeof(acl_entry) != 0) {
> +                       errno = EINVAL;
> +                       return -1;
> +               }
> +
> +               // ACL is empty, do nothing
> +               if((size - sizeof(acl_header)) / sizeof(acl_entry) == 0) {
> +                       return 0;
> +               }
> +       }
>         /* this may be a plain chmod */
>         if (!strcmp(name, "system.posix_acl_access")) {
>                 int extra;
>                 int mode;
>                 int entries = (size - sizeof(acl_header)) /
> sizeof(acl_entry);
> -               if (!posix_permissions(value, entries, &extra, &mode)) {
> +               int res = posix_permissions(value, entries, &extra, &mode);
> +               if (res == 0) {
>                         pseudo_debug(PDBGF_XATTR, "posix_acl_access
> translated to mode %04o. Remaining attribute(s): %d.\n",
>                                 mode, extra);
>                         buf.st_mode = mode;
> @@ -164,8 +179,12 @@ static int shared_setxattr(const char *path, int fd,
> const char *name, const voi
>                         if (!extra) {
>                                 return 0;
>                         }
> +               } else if (res == -1) {
> +                       errno = EOPNOTSUPP;
> +                       return -1;
>                 }
>         }
> +
>         if (!strcmp(name, "user.pseudo_data")) {
>                 pseudo_debug(PDBGF_XATTR | PDBGF_XATTRDB,
> "user.pseudo_data xattribute does not get to go in database.\n");
>                 return -1;
> --
> 2.11.1
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--94eb2c124cc42d5605054947d1f5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Anton,<div><br></div><div>Thanks for the patch, but thi=
s should go to the yocto@ list, not poky@.<div><br></div><div>Also please e=
nsure that the subject line has [pseudo] in so that Peter notices it!</div>=
<div><br></div><div>Ross</div></div></div><div class=3D"gmail_extra"><br><d=
iv class=3D"gmail_quote">On 24 February 2017 at 09:20,  <span dir=3D"ltr">&=
lt;<a href=3D"mailto:anton@advancedtelematic.com" target=3D"_blank">anton@a=
dvancedtelematic.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">From: Anton Gerasimov &lt;<a href=3D"mailto:anton@advancedtelematic.com">=
anton@advancedtelematic.com</a>&gt;<br>
<br>
The difference between what we see in pseudo and what happens without<br>
pseudo can be seen by typing:<br>
<br>
=C2=A0 =C2=A0 mkdir setfattr-test<br>
=C2=A0 =C2=A0 setfattr -n system.posix_acl_default -v 0x02000000 setfattr-t=
est<br>
=C2=A0 =C2=A0 getfattr -n system.posix_acl_default setfattr-test<br>
<br>
Under some kernel configurations this difference leads to annoying<br>
errors, e.g. directories copied with &#39;cp -a&#39; get broken in a fancy =
way.<br>
<br>
Signed-off-by: Anton Gerasimov &lt;<a href=3D"mailto:anton@advancedtelemati=
c.com">anton@advancedtelematic.com</a>&gt;<br>
---<br>
=C2=A0ports/linux/xattr/pseudo_<wbr>wrappers.c | 23 +++++++++++++++++++++--=
<br>
=C2=A01 file changed, 21 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/ports/linux/xattr/pseudo_<wbr>wrappers.c b/ports/linux/xattr/p=
seudo_<wbr>wrappers.c<br>
index 46bc053..31a6baf 100644<br>
--- a/ports/linux/xattr/pseudo_<wbr>wrappers.c<br>
+++ b/ports/linux/xattr/pseudo_<wbr>wrappers.c<br>
@@ -64,7 +64,7 @@ posix_permissions(const acl_header *header, int entries, =
int *extra, int *mode)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (le32(header-&gt;version) !=3D 2) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pseudo_diag(&quot;F=
atal: ACL support no available for header version %d.\n&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 le32(header-&gt;version));<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 1;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -1;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 *mode =3D 0;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 *extra =3D 0;<br>
@@ -140,12 +140,27 @@ static int shared_setxattr(const char *path, int fd, =
const char *name, const voi<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 pseudo_debug(PDBGF_XATTR, &quot;setxattr(%s [fd=
 %d], %s =3D&gt; &#39;%.*s&#39;)\n&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 path ? path : &quot=
;&lt;no path&gt;&quot;, fd, name, (int) size, (char *) value);<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Filter out erroneous sizes for POSIX ACL<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 *=C2=A0 see posix_acl_xattr_count in include/l=
inux/posix_acl_xattr.<wbr>h of Linux source code */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!strcmp(name, &quot;system.posix_acl_access=
&quot;) || !strcmp(name, &quot;system.posix_acl_default&quot;)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0// ACL is corrupt, =
issue an error<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if(size &lt; sizeof=
(acl_header) || (size - sizeof(acl_header)) % sizeof(acl_entry) !=3D 0) {<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0errno =3D EINVAL;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0return -1;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0// ACL is empty, do=
 nothing<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if((size - sizeof(a=
cl_header)) / sizeof(acl_entry) =3D=3D 0) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0return 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* this may be a plain chmod */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!strcmp(name, &quot;system.posix_acl_access=
&quot;)) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 int extra;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 int mode;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 int entries =3D (si=
ze - sizeof(acl_header)) / sizeof(acl_entry);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!posix_permissi=
ons(value, entries, &amp;extra, &amp;mode)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int res =3D posix_p=
ermissions(value, entries, &amp;extra, &amp;mode);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (res =3D=3D 0) {=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 pseudo_debug(PDBGF_XATTR, &quot;posix_acl_access translated to m=
ode %04o. Remaining attribute(s): %d.\n&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mode, extra);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 buf.st_mode =3D mode;<br>
@@ -164,8 +179,12 @@ static int shared_setxattr(const char *path, int fd, c=
onst char *name, const voi<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if (!extra) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (res =3D=
=3D -1) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0errno =3D EOPNOTSUPP;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0return -1;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!strcmp(name, &quot;user.pseudo_data&quot;)=
) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pseudo_debug(PDBGF_=
XATTR | PDBGF_XATTRDB, &quot;user.pseudo_data xattribute does not get to go=
 in database.\n&quot;);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -1;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.11.1<br>
<br>
--<br>
______________________________<wbr>_________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/poky</a><br=
>
</font></span></blockquote></div><br></div>

--94eb2c124cc42d5605054947d1f5--
