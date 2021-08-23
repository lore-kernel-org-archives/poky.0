Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web10.30955.1629755105511210845
 for <poky@lists.yoctoproject.org>;
 Mon, 23 Aug 2021 14:45:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=F18VkgyM;
 spf=pass (domain: gmail.com, ip: 209.85.218.46, mailfrom: kergoth@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id w5so39940708ejq.2
        for <poky@lists.yoctoproject.org>; Mon, 23 Aug 2021 14:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lT2bSUadebEjEK61n3u0BR3p59tRwdc+8YrKBS9oK5A=;
        b=F18VkgyMMuew6i5OUaWsjSvEqZNtfmD1ut1WxQ0VT2gMLuz09f04UpqW4wnOGpPGGc
         yzgnIvhjJvYt6vaf18Qgihyg6utAOSAECHnkErfOmRj4zz55LaVEpyIsfEz2ZwKWJkiA
         tW63uA5yh1XhIMueqycnirKGVnNBna9jXhE1WMw8XVgmARxuCInmdp66B3Jh80VUkSdo
         HbQ7sGYuwwbuUDjtH6/VCmfMoPAY2riZ3evfN7g7ggbP7GxObd0B2gvmRP2dgL4ST71Q
         m3UwntQF7gs+9JOtwQ1R5SU3tb/GoDlWU1qzmBj+nkQlznd4RycAlDguN5KHWlsBFOdb
         2uEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lT2bSUadebEjEK61n3u0BR3p59tRwdc+8YrKBS9oK5A=;
        b=EpLYAwYX4L/5XbYNEBdsvNgEdVWZ0yE9eE5eo804GKHBd7aWP4ugJezs7Mhgq5COW0
         wOodxudnPCYX1NQaR1miKXTmXc0WIJhFF/RwYXLLg8gYnrMpZjhp1joA4RUfDZq91+VG
         c94HUPMpKWmHHwRRrHeFUdNEoEDTEqlPjIxA/NmUT5TRtyGeLAToIvm7KDR7A+PRn4yF
         DKiA8xxseIrtjiF+3KD9C0Z1CUxPzahzX+NOyAE1HElZoQsiigyJKN2rcYZB4pc1aCI8
         J8PDeJVIkWfDS2sUAXxweN+Zccyra6iAa5GtbaGYMSxsTiRUMvIOGi7l7eTGr8mKS9VC
         uoHQ==
X-Gm-Message-State: AOAM533EUxyhzndQKKytULoRay9A0cRzyOn+h/qqx0DPXCxPd9wIFKNp
	tguGXy3FqxSOoChehNuuJJfUhslCRJ61avf/vkY=
X-Google-Smtp-Source: ABdhPJzGLbAFX8X1X0RPZih4JhNsJFIx47kSzqDlr9PgfLXkDmJLS04/U8MZQ3q82Dl6Wd2jbgEeZ4lDSTv4yakqVmg=
X-Received: by 2002:a17:906:318f:: with SMTP id 15mr37160439ejy.206.1629755104009;
 Mon, 23 Aug 2021 14:45:04 -0700 (PDT)
MIME-Version: 1.0
References: <DB7PR08MB35959836F4FC5178A8713A4AD0C49@DB7PR08MB3595.eurprd08.prod.outlook.com>
In-Reply-To: <DB7PR08MB35959836F4FC5178A8713A4AD0C49@DB7PR08MB3595.eurprd08.prod.outlook.com>
From: "Christopher Larson" <kergoth@gmail.com>
Date: Mon, 23 Aug 2021 14:44:53 -0700
Message-ID: <CABcZANm-FFUeHecyZ3j=+XAKaSM9zEuBzyUrQeyL2JibDzUpKg@mail.gmail.com>
Subject: Re: [poky] [PATCH] initscripts: optimize read-only-hook.sh for performance
To: Asfak Rahman <asfakr@outlook.com>
Cc: poky <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000000ba2f105ca40ee0c"

--0000000000000ba2f105ca40ee0c
Content-Type: text/plain; charset="UTF-8"

This looks flawed. The original logic handled cases like '/var' being rw,
etc, whereas the new logic only handles '/var/lib' itself only being
writable. Are we certain all possible configurations are being handled here?

On Mon, Aug 23, 2021 at 1:57 PM Asfak Rahman <asfakr@outlook.com> wrote:

> The current script runs multiple iterations to determine
> if /var/lib is mounted on a writable partition. Optimize
> the script for faster bootup time.
>
> Signed-off-by: Asfak Rahman <asfakr@outlook.com>
> ---
>  .../initscripts-1.0/read-only-rootfs-hook.sh  | 27 ++-----------------
>  1 file changed, 2 insertions(+), 25 deletions(-)
>
> diff --git
> a/meta/recipes-core/initscripts/initscripts-1.0/read-only-rootfs-hook.sh
> b/meta/recipes-core/initscripts/initscripts-1.0/read-only-rootfs-hook.sh
> index bd445ddb07..8c0cf32d0b 100644
> ---
> a/meta/recipes-core/initscripts/initscripts-1.0/read-only-rootfs-hook.sh
> +++
> b/meta/recipes-core/initscripts/initscripts-1.0/read-only-rootfs-hook.sh
> @@ -4,31 +4,9 @@
>
>  [ "$ROOTFS_READ_ONLY" = "no" ] && exit 0
>
> -is_on_read_only_partition () {
> -       DIRECTORY=$1
> -       dir=`readlink -f $DIRECTORY`
> -       while true; do
> -               if [ ! -d "$dir" ]; then
> -                       echo "ERROR: $dir is not a directory"
> -                       exit 1
> -               else
> -                       for flag in `awk -v dir=$dir '{ if ($2 == dir) {
> print "FOUND"; split($4,FLAGS,",") } }; \
> -                               END { for (f in FLAGS) print FLAGS[f] }' <
> /proc/mounts`; do
> -                               [ "$flag" = "FOUND" ] &&
> partition="read-write"
> -                               [ "$flag" = "ro" ] && {
> partition="read-only"; break; }
> -                       done
> -                       if [ "$dir" = "/" -o -n "$partition" ]; then
> -                               break
> -                       else
> -                               dir=`dirname $dir`
> -                       fi
> -               fi
> -       done
> -       [ "$partition" = "read-only" ] && echo "yes" || echo "no"
> -}
> -
>  if [ "$1" = "start" ] ; then
> -       if [ `is_on_read_only_partition /var/lib` = "yes" ]; then
> +       # check that /var/lib is not mounted on a writable partition
> +       if [ -z "`sed -n '/\/var\/lib .* rw/p' /proc/mounts`" ]; then
>                 grep -q "tmpfs /var/volatile" /proc/mounts || mount
> /var/volatile
>                 mkdir -p /var/volatile/lib
>                 mkdir -p /var/volatile/.lib-work
> @@ -40,4 +18,3 @@ if [ "$1" = "start" ] ; then
>                 fi
>         fi
>  fi
> -
> --
> 2.17.1
>
>
> 
>
>

-- 
Christopher Larson
kergoth at gmail dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Senior Software Engineer, Mentor Graphics

--0000000000000ba2f105ca40ee0c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This looks flawed. The original logic handled cases like &=
#39;/var&#39; being rw, etc, whereas the new logic only handles &#39;/var/l=
ib&#39; itself only being writable. Are we certain all possible configurati=
ons are being handled here?</div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Mon, Aug 23, 2021 at 1:57 PM Asfak Rahman &lt=
;<a href=3D"mailto:asfakr@outlook.com">asfakr@outlook.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">The current script=
 runs multiple iterations to determine<br>
if /var/lib is mounted on a writable partition. Optimize<br>
the script for faster bootup time.<br>
<br>
Signed-off-by: Asfak Rahman &lt;<a href=3D"mailto:asfakr@outlook.com" targe=
t=3D"_blank">asfakr@outlook.com</a>&gt;<br>
---<br>
=C2=A0.../initscripts-1.0/read-only-rootfs-hook.sh=C2=A0 | 27 ++-----------=
------<br>
=C2=A01 file changed, 2 insertions(+), 25 deletions(-)<br>
<br>
diff --git a/meta/recipes-core/initscripts/initscripts-1.0/read-only-rootfs=
-hook.sh b/meta/recipes-core/initscripts/initscripts-1.0/read-only-rootfs-h=
ook.sh<br>
index bd445ddb07..8c0cf32d0b 100644<br>
--- a/meta/recipes-core/initscripts/initscripts-1.0/read-only-rootfs-hook.s=
h<br>
+++ b/meta/recipes-core/initscripts/initscripts-1.0/read-only-rootfs-hook.s=
h<br>
@@ -4,31 +4,9 @@<br>
<br>
=C2=A0[ &quot;$ROOTFS_READ_ONLY&quot; =3D &quot;no&quot; ] &amp;&amp; exit =
0<br>
<br>
-is_on_read_only_partition () {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0DIRECTORY=3D$1<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0dir=3D`readlink -f $DIRECTORY`<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0while true; do<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ ! -d &quot;$di=
r&quot; ]; then<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0echo &quot;ERROR: $dir is not a directory&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0exit 1<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0for flag in `awk -v dir=3D$dir &#39;{ if ($2 =3D=3D dir) { print =
&quot;FOUND&quot;; split($4,FLAGS,&quot;,&quot;) } }; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0END { for (f in FLAGS) print FLAGS[f]=
 }&#39; &lt; /proc/mounts`; do<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[ &quot;$flag&quot; =3D &quot;FOUND&q=
uot; ] &amp;&amp; partition=3D&quot;read-write&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[ &quot;$flag&quot; =3D &quot;ro&quot=
; ] &amp;&amp; { partition=3D&quot;read-only&quot;; break; }<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0done<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if [ &quot;$dir&quot; =3D &quot;/&quot; -o -n &quot;$partition&qu=
ot; ]; then<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dir=3D`dirname $dir`<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0fi<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0done<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0[ &quot;$partition&quot; =3D &quot;read-only&qu=
ot; ] &amp;&amp; echo &quot;yes&quot; || echo &quot;no&quot;<br>
-}<br>
-<br>
=C2=A0if [ &quot;$1&quot; =3D &quot;start&quot; ] ; then<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if [ `is_on_read_only_partition /var/lib` =3D &=
quot;yes&quot; ]; then<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0# check that /var/lib is not mounted on a writa=
ble partition<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if [ -z &quot;`sed -n &#39;/\/var\/lib .* rw/p&=
#39; /proc/mounts`&quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 grep -q &quot;tmpfs=
 /var/volatile&quot; /proc/mounts || mount /var/volatile<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mkdir -p /var/volat=
ile/lib<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mkdir -p /var/volat=
ile/.lib-work<br>
@@ -40,4 +18,3 @@ if [ &quot;$1&quot; =3D &quot;start&quot; ] ; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
=C2=A0fi<br>
-<br>
-- <br>
2.17.1<br>
<br>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Christoph=
er Larson<br>kergoth at gmail dot com<br>Founder - BitBake, OpenEmbedded, O=
penZaurus<br>Senior Software Engineer, Mentor Graphics</div></div></div></d=
iv>

--0000000000000ba2f105ca40ee0c--
