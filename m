Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
 by mx.groups.io with SMTP id smtpd.web09.5388.1632306526208749484
 for <poky@lists.yoctoproject.org>;
 Wed, 22 Sep 2021 03:28:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=pLK6KgAr;
 spf=pass (domain: gmail.com, ip: 209.85.217.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f41.google.com with SMTP id az15so2404377vsb.8
        for <poky@lists.yoctoproject.org>; Wed, 22 Sep 2021 03:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bsS2TyE9Klcbh8xHxXa5XI+Pt7bddUfQcUUcjmOxW6g=;
        b=pLK6KgArPYno9HuyAob0egnTkcPHcS1pfwVXENxHYOBQ/tC34oPuMHVUVH8s4A1KSv
         rpz9V2YZN9kUiyXTz8ZMJxcpnsaCyf7G5P9tN0iflFXDbK2Ekva+1qf3Y8HR2N0GkDQY
         Q+qhb6ozLjLv4TI2+AMp9rDL2ZD6SoHsd0sKkiM2VLJUjjyaQuGAwwB/78kOtsJG8gJb
         Hb2MjNypRvTJkZtpbrxfP2Ml8ZFSX1MqHZt3DVpWDrUVnG1OgqPyY0ts52i7LUhe5oLs
         v2mVmJ5sYxGwSV0/XtUfE/UCR2v323HJfnuko8ZBXM0UdnMQ0sIcIvZoBvvz0NzHg0Pq
         2E6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bsS2TyE9Klcbh8xHxXa5XI+Pt7bddUfQcUUcjmOxW6g=;
        b=tx0nvtrP5xO/pgA+lwRPXBQ39DOEGVNBZxacvowBNoJcCQVSXGsi5pyZuRZBSoxnmi
         DksAhgUfNPPZtRjaY4dn9Gv5Yb+LKkMGyXy08hWU28hlWz4Na4vf1XmhmqLjFTySGBR5
         pNK7+ullw4ntVq07V4E4LoYdzvTFZkmzi5+UIoR5yegzYIhL/cmfkQmeXm+s6y1NpmdM
         LobbUJvuiiDGg9yF2Zabru7hUTgmSfP23/XD0PnfrtPz2FAhcWESn7b600jMsPiOHMCd
         QWl9Tl6jpua4kh2eVfHr4g644lJrEVPc7aaQ157u/8vBNMhCKZTdc8PPq+BLWBtUE6N5
         yvDQ==
X-Gm-Message-State: AOAM533AWuUToVt84N70kx7KectHrD1Ot/Ckw/UcGrE1ErLQ8aOEpAtt
	EPmoj5qIROjuPQXr68NuZetSa+Fp1Bg5kIWGkuo=
X-Google-Smtp-Source: ABdhPJyzJzhVNuACbzRnGQ1HOLXhO/N3O7N16XXBFZd1QrcsArqNoOUM0MzYxlfEoPyeatTtC1lBmer7SeGEK8yqZZM=
X-Received: by 2002:a05:6102:21ce:: with SMTP id r14mr10314577vsg.40.1632306525336;
 Wed, 22 Sep 2021 03:28:45 -0700 (PDT)
MIME-Version: 1.0
References: <oUjR.1632291365193010277.SeKk@lists.yoctoproject.org>
In-Reply-To: <oUjR.1632291365193010277.SeKk@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 22 Sep 2021 12:28:34 +0200
Message-ID: <CANNYZj9gtwCPEOaBrCV=KuZFqpikXUAQONFdNWNWn7UT=Pn6Fw@mail.gmail.com>
Subject: Re: [poky] [PATCH] connman: Fix critical CVE-2021-33833 for dunfell branch #poky
To: Damien HACKETT <damienhackett@eaton.com>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009b798805cc92fadd"

--0000000000009b798805cc92fadd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the patch, it's basically ok, but:

- the patch file for connman needs 'Upstream-Status: Backport [link]' just
above your s-o-b
- use 'git send-email' to send it, no attachments or sending via
interactive email clients
(many things can go wrong if you do that)
- the correct mailing list is openembedded-core one
- the patch should apply to current poky master; if it's not relevant or
needed for master this needs to be clarified.

Alex

On Wed, 22 Sept 2021 at 08:16, Damien HACKETT <damienhackett@eaton.com>
wrote:

> In dunfell, connman version is 1.37 so is vulnerable to CVE-2021-33833.
>
> For more recent branches like gatesgarth, they use connman version 1.39 a=
t
> least so already have this CVE fixed.
>
> Seems this CVE was not detected by cve_check as it was affected to
> "connection_manager" instead of "connman".
> Probably @Steve Sakoman will do an other patch for that.
>
> =3D> Here is the thread we discussed about the problem :
> https://lists.yoctoproject.org/g/yocto-security/topic/update_of_conmann_t=
o_1_39_and/85762164?p=3D,,,20,0,0,0::recentpostdate/sticky,,,20,2,0,8576216=
4,previd=3D1632244971072307699,nextid=3D1629104796496170789&previd=3D163224=
4971072307699&nextid=3D1629104796496170789
>
> From 2ee0da18332cb6030a54fe8b176625bec7b1d3b3 Mon Sep 17 00:00:00 2001
> From: Damien Hackett <DamienHackett@eaton.com>
> Date: Tue, 21 Sep 2021 13:40:40 +0200
> Subject: [PATCH] connman: Fix Connman CVE-2021-33833 in 1.37 version
>
> ---
>  .../connman/connman/CVE-2021-33833.patch      | 69 +++++++++++++++++++
>  .../connman/connman_1.37.bb                   |  1 +
>  2 files changed, 70 insertions(+)
>  create mode 100644
> meta/recipes-connectivity/connman/connman/CVE-2021-33833.patch
>
> diff --git
> a/meta/recipes-connectivity/connman/connman/CVE-2021-33833.patch
> b/meta/recipes-connectivity/connman/connman/CVE-2021-33833.patch
> new file mode 100644
> index 0000000000..773ef8d13e
> --- /dev/null
> +++ b/meta/recipes-connectivity/connman/connman/CVE-2021-33833.patch
> @@ -0,0 +1,69 @@
> +From eceb2e8d2341c041df55a5e2f047d9a8c491463c Mon Sep 17 00:00:00 2001
> +From: Valery Kashcheev <v.kascheev@omp.ru>
> +Date: Mon, 7 Jun 2021 18:58:24 +0200
> +Subject: [PATCH] dnsproxy: Check the length of buffers before memcpy
> +
> +Fix using a stack-based buffer overflow attack by checking the length of
> +the ptr and uptr buffers.
> +
> +Fix debug message output.
> +
> +Fixes: CVE-2021-33833
> +
> +Reference to upstream patch:
> +
> https://git.kernel.org/pub/scm/network/connman/connman.git/commit/?id=3De=
ceb2e8d2341c041df55a5e2f047d9a8c491463c
> +
> +Signed-off-by: Damien Hackett <DamienHackett@eaton.com>
> +---
> + src/dnsproxy.c | 20 +++++++++++---------
> + 1 file changed, 11 insertions(+), 9 deletions(-)
> +
> +diff --git a/src/dnsproxy.c b/src/dnsproxy.c
> +index de52df5a..38dbdd71 100644
> +--- a/src/dnsproxy.c
> ++++ b/src/dnsproxy.c
> +@@ -1788,17 +1788,15 @@ static char *uncompress(int16_t field_count, cha=
r
> *start, char *end,
> +          * tmp buffer.
> +          */
> +
> +-        debug("pos %d ulen %d left %d name %s", pos, ulen,
> +-            (int)(uncomp_len - (uptr - uncompressed)), uptr);
> +-
> +-        ulen =3D strlen(name);
> +-        if ((uptr + ulen + 1) > uncomp_end) {
> ++        ulen =3D strlen(name) + 1;
> ++        if ((uptr + ulen) > uncomp_end)
> +             goto out;
> +-        }
> +-        strncpy(uptr, name, uncomp_len - (uptr - uncompressed));
> ++        strncpy(uptr, name, ulen);
> ++
> ++        debug("pos %d ulen %d left %d name %s", pos, ulen,
> ++            (int)(uncomp_end - (uptr + ulen)), uptr);
> +
> +         uptr +=3D ulen;
> +-        *uptr++ =3D '\0';
> +
> +         ptr +=3D pos;
> +
> +@@ -1841,7 +1839,7 @@ static char *uncompress(int16_t field_count, char
> *start, char *end,
> +         } else if (dns_type =3D=3D ns_t_a || dns_type =3D=3D ns_t_aaaa)=
 {
> +             dlen =3D uptr[-2] << 8 | uptr[-1];
> +
> +-            if (ptr + dlen > end) {
> ++            if ((ptr + dlen) > end || (uptr + dlen) > uncomp_end) {
> +                 debug("data len %d too long", dlen);
> +                 goto out;
> +             }
> +@@ -1880,6 +1878,10 @@ static char *uncompress(int16_t field_count, char
> *start, char *end,
> +              * refresh interval, retry interval, expiration
> +              * limit and minimum ttl). They are 20 bytes long.
> +              */
> ++            if ((uptr + 20) > uncomp_end || (ptr + 20) > end) {
> ++                debug("soa record too long");
> ++                goto out;
> ++            }
> +             memcpy(uptr, ptr, 20);
> +             uptr +=3D 20;
> +             ptr +=3D 20;
> +--
> diff --git a/meta/recipes-connectivity/connman/connman_1.37.bb
> b/meta/recipes-connectivity/connman/connman_1.37.bb
> index bdab4c4f18..8a275dd8e2 100644
> --- a/meta/recipes-connectivity/connman/connman_1.37.bb
> +++ b/meta/recipes-connectivity/connman/connman_1.37.bb
> @@ -9,6 +9,7 @@ SRC_URI  =3D
> "${KERNELORG_MIRROR}/linux/network/${BPN}/${BP}.tar.xz \
>              file://CVE-2021-26675.patch \
>              file://CVE-2021-26676-0001.patch \
>              file://CVE-2021-26676-0002.patch \
> +            file://CVE-2021-33833.patch \
>  "
>
>  SRC_URI_append_libc-musl =3D "
> file://0002-resolve-musl-does-not-implement-res_ninit.patch"
> --
> 2.20.1
>=20
>
>

--0000000000009b798805cc92fadd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for the patch, it&#39;s basically ok, but:</di=
v><div><br></div><div>- the patch file for connman needs &#39;Upstream-Stat=
us: Backport [link]&#39; just above your s-o-b</div><div>- use &#39;git sen=
d-email&#39; to send it, no attachments or sending via interactive email cl=
ients</div><div>(many things can go wrong if you do that)<br></div><div>- t=
he correct mailing list is openembedded-core one</div><div>- the patch shou=
ld apply to current poky master; if it&#39;s not relevant or needed for mas=
ter this needs to be clarified.</div><div><br></div><div>Alex<br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On W=
ed, 22 Sept 2021 at 08:16, Damien HACKETT &lt;<a href=3D"mailto:damienhacke=
tt@eaton.com">damienhackett@eaton.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">In dunfell, connman version is 1.37 so=
 is vulnerable to CVE-2021-33833.<br><br>For more recent branches like gate=
sgarth, they use connman version 1.39 at least so already have this CVE fix=
ed.<br><br>Seems this CVE was not detected by cve_check as it was affected =
to &quot;connection_manager&quot; instead of &quot;connman&quot;.<br>Probab=
ly @Steve Sakoman will do an other patch for that.<br><br>=3D&gt; Here is t=
he thread we discussed about the problem : <a href=3D"https://lists.yoctopr=
oject.org/g/yocto-security/topic/update_of_conmann_to_1_39_and/85762164?p=
=3D,,,20,0,0,0::recentpostdate/sticky,,,20,2,0,85762164,previd=3D1632244971=
072307699,nextid=3D1629104796496170789&amp;previd=3D1632244971072307699&amp=
;nextid=3D1629104796496170789" target=3D"_blank">https://lists.yoctoproject=
.org/g/yocto-security/topic/update_of_conmann_to_1_39_and/85762164?p=3D,,,2=
0,0,0,0::recentpostdate/sticky,,,20,2,0,85762164,previd=3D16322449710723076=
99,nextid=3D1629104796496170789&amp;previd=3D1632244971072307699&amp;nextid=
=3D1629104796496170789</a><br><br>From 2ee0da18332cb6030a54fe8b176625bec7b1=
d3b3 Mon Sep 17 00:00:00 2001<br>From: Damien Hackett &lt;<a href=3D"mailto=
:DamienHackett@eaton.com" target=3D"_blank">DamienHackett@eaton.com</a>&gt;=
<br>Date: Tue, 21 Sep 2021 13:40:40 +0200<br>Subject: [PATCH] connman: Fix =
Connman CVE-2021-33833 in 1.37 version<br><br>---<br>=C2=A0.../connman/conn=
man/CVE-2021-33833.patch=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 69 +++++++++++++++=
++++<br>=C2=A0.../connman/<a href=3D"http://connman_1.37.bb" target=3D"_bla=
nk">connman_1.37.bb</a>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 1 +<br>=
=C2=A02 files changed, 70 insertions(+)<br>=C2=A0create mode 100644 meta/re=
cipes-connectivity/connman/connman/CVE-2021-33833.patch<br><br>diff --git a=
/meta/recipes-connectivity/connman/connman/CVE-2021-33833.patch b/meta/reci=
pes-connectivity/connman/connman/CVE-2021-33833.patch<br>new file mode 1006=
44<br>index 0000000000..773ef8d13e<br>--- /dev/null<br>+++ b/meta/recipes-c=
onnectivity/connman/connman/CVE-2021-33833.patch<br>@@ -0,0 +1,69 @@<br>+Fr=
om eceb2e8d2341c041df55a5e2f047d9a8c491463c Mon Sep 17 00:00:00 2001<br>+Fr=
om: Valery Kashcheev &lt;<a href=3D"mailto:v.kascheev@omp.ru" target=3D"_bl=
ank">v.kascheev@omp.ru</a>&gt;<br>+Date: Mon, 7 Jun 2021 18:58:24 +0200<br>=
+Subject: [PATCH] dnsproxy: Check the length of buffers before memcpy<br>+<=
br>+Fix using a stack-based buffer overflow attack by checking the length o=
f<br>+the ptr and uptr buffers.<br>+<br>+Fix debug message output.<br>+<br>=
+Fixes: CVE-2021-33833<br>+<br>+Reference to upstream patch:<br>+<a href=3D=
"https://git.kernel.org/pub/scm/network/connman/connman.git/commit/?id=3Dec=
eb2e8d2341c041df55a5e2f047d9a8c491463c" target=3D"_blank">https://git.kerne=
l.org/pub/scm/network/connman/connman.git/commit/?id=3Deceb2e8d2341c041df55=
a5e2f047d9a8c491463c</a><br>+<br>+Signed-off-by: Damien Hackett &lt;<a href=
=3D"mailto:DamienHackett@eaton.com" target=3D"_blank">DamienHackett@eaton.c=
om</a>&gt;<br>+---<br>+ src/dnsproxy.c | 20 +++++++++++---------<br>+ 1 fil=
e changed, 11 insertions(+), 9 deletions(-)<br>+<br>+diff --git a/src/dnspr=
oxy.c b/src/dnsproxy.c<br>+index de52df5a..38dbdd71 100644<br>+--- a/src/dn=
sproxy.c<br>++++ b/src/dnsproxy.c<br>+@@ -1788,17 +1788,15 @@ static char *=
uncompress(int16_t field_count, char *start, char *end,<br>+ =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0* tmp buffer.<br>+ =C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 =C2=A0*/<br>+ <br>+-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 d=
ebug(&quot;pos %d ulen %d left %d name %s&quot;, pos, ulen,<br>+-=C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 (int)(uncomp_len - (uptr - =
uncompressed)), uptr);<br>+-<br>+-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ule=
n =3D strlen(name);<br>+-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if ((uptr + =
ulen + 1) &gt; uncomp_end) {<br>++=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ule=
n =3D strlen(name) + 1;<br>++=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if ((upt=
r + ulen) &gt; uncomp_end)<br>+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 goto out;<br>+-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 }<br>+=
-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 strncpy(uptr, name, uncomp_len - (up=
tr - uncompressed));<br>++=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 strncpy(upt=
r, name, ulen);<br>++<br>++=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 debug(&quo=
t;pos %d ulen %d left %d name %s&quot;, pos, ulen,<br>++=C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 (int)(uncomp_end - (uptr + ulen)), up=
tr);<br>+ <br>+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 uptr +=3D ulen;<br>+-=
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 *uptr++ =3D &#39;\0&#39;;<br>+ <br>+ =
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ptr +=3D pos;<br>+ <br>+@@ -1841,7 +1=
839,7 @@ static char *uncompress(int16_t field_count, char *start, char *en=
d,<br>+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 } else if (dns_type =3D=3D ns=
_t_a || dns_type =3D=3D ns_t_aaaa) {<br>+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 dlen =3D uptr[-2] &lt;&lt; 8 | uptr[-1];<br>+ <br=
>+-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if (ptr + dlen =
&gt; end) {<br>++=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 i=
f ((ptr + dlen) &gt; end || (uptr + dlen) &gt; uncomp_end) {<br>+ =C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 debug(&q=
uot;data len %d too long&quot;, dlen);<br>+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 goto out;<br>+ =C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 }<br>+@@ -1880,6 +1878,10 @@ stat=
ic char *uncompress(int16_t field_count, char *start, char *end,<br>+ =C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0* refresh inter=
val, retry interval, expiration<br>+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 =C2=A0* limit and minimum ttl). They are 20 bytes long.<=
br>+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0*/<br>+=
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if ((uptr + 20) &=
gt; uncomp_end || (ptr + 20) &gt; end) {<br>++=C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 debug(&quot;soa record too =
long&quot;);<br>++=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 goto out;<br>++=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 }<br>+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 memcpy(uptr, ptr, 20);<br>+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 uptr +=3D 20;<br>+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
 =C2=A0=C2=A0=C2=A0 ptr +=3D 20;<br>+-- <br>diff --git a/meta/recipes-conne=
ctivity/connman/<a href=3D"http://connman_1.37.bb" target=3D"_blank">connma=
n_1.37.bb</a> b/meta/recipes-connectivity/connman/<a href=3D"http://connman=
_1.37.bb" target=3D"_blank">connman_1.37.bb</a><br>index bdab4c4f18..8a275d=
d8e2 100644<br>--- a/meta/recipes-connectivity/connman/<a href=3D"http://co=
nnman_1.37.bb" target=3D"_blank">connman_1.37.bb</a><br>+++ b/meta/recipes-=
connectivity/connman/<a href=3D"http://connman_1.37.bb" target=3D"_blank">c=
onnman_1.37.bb</a><br>@@ -9,6 +9,7 @@ SRC_URI=C2=A0 =3D &quot;${KERNELORG_M=
IRROR}/linux/network/${BPN}/${BP}.tar.xz \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://CVE-2021-26675.patch \=
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 file://CVE-2021-26676-0001.patch \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://CVE-2021-26676-0002.patch \<=
br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file=
://CVE-2021-33833.patch \<br>=C2=A0&quot;<br>=C2=A0<br>=C2=A0SRC_URI_append=
_libc-musl =3D &quot; file://0002-resolve-musl-does-not-implement-res_ninit=
.patch&quot;<br>-- <br>2.20.1
<br>
<br>
<br>
</blockquote></div>

--0000000000009b798805cc92fadd--
