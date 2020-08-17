Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com [209.85.217.66])
 by mx.groups.io with SMTP id smtpd.web11.43543.1597671820353868482
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Aug 2020 06:43:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=q+IhPOOf;
 spf=pass (domain: gmail.com, ip: 209.85.217.66, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f66.google.com with SMTP id k25so8259246vsm.11
        for <poky@lists.yoctoproject.org>; Mon, 17 Aug 2020 06:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i+ITA5A4uCkQBwHKrVJpQ69OqOV3BpJ56VXzApvApZE=;
        b=q+IhPOOfnoCpcsBLjwCo5/YXo4WPFEtTWq3INFUsOJAtODu5g7BZDEaYVM5FbcLw6N
         45ZIA7cYIVQ2h5C14B/0ZNdIlokABpycjy9uiKADfXKYU2ksjrd8lsRAl+h0abnFfYTK
         6WV8zVqeiRnKzU7St96V/RU2oD7JJvcQ7jdnFwtEp/IuBVwOATPP41BhhIXZ1vp4uJ8i
         ow9UXCpv5v2Mo/CQrccwB1V8DYarf1kYv+o8MneSmrwu2TAfPjcCaoIsOurmleMxL0wl
         7e8G3ftUr2PiyYh4FwKxNiWoD5VROe4jWqmCbvNBq7cik7p5JaNTnqo3SN4EjudiAH/8
         wyog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i+ITA5A4uCkQBwHKrVJpQ69OqOV3BpJ56VXzApvApZE=;
        b=nBec8rSSC/LmTdU6x7Q0l87ju4UtHWeDo585nwAbKeKUq3GUuq8oJ9LCb8aoosMVaz
         QGdCDkwRag3YKcM8maJpKnWqcyE/XTRoehReIK9V/GyGm1liNv4ulTNP8QFFZfDv6H5i
         kl9zc/3zJCKqd7xiGB4JAwrHLDKQCkFcv1saDGHLXLkFVA6C9ElUH6yH3fOzWTzIx9MX
         OK3rhLml40A+XojDb51R5a/CxMR+nMIBAXBvKfkhSA73JYi/0yKgYGimbH+vBU5k2CGx
         3SxB/d5H5UaGMaJpu+sdaEOJu9EHFoPqnl3E3JOOlTZj7b+mkQ6urETDalYXkXfRhmJU
         HigA==
X-Gm-Message-State: AOAM530/3X252m9czLbP2b9qKuv3DNeZHOiZg6LQWkzzDAD2JbutyP3d
	FJ0AmyoM6vPdRXmBHj20nKklCyOwHZfMT8l87AA=
X-Google-Smtp-Source: ABdhPJx2U/WjfQSmlrpYv0oSjBR/ZqgOJYPWu/K52naTEI8s1ReiRFRdw0w22C0q1rwFFFQlezeHMHAsNbf9vmQL9E0=
X-Received: by 2002:a67:ecc6:: with SMTP id i6mr7879819vsp.25.1597671819494;
 Mon, 17 Aug 2020 06:43:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200817121828.7345-1-vvavrychuk@gmail.com>
In-Reply-To: <20200817121828.7345-1-vvavrychuk@gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 17 Aug 2020 15:43:27 +0200
Message-ID: <CANNYZj-KH4CKk-d7Jg8XCkmXKk-K7+8+yQv6YyBU+yMNYMwcpQ@mail.gmail.com>
Subject: Re: [poky] [PATCH] runqemu: Check gtk or sdl option is passed together with gl or gl-es options.
To: Vasyl Vavrychuk <vvavrychuk@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000044c95e05ad12f5fe"

--00000000000044c95e05ad12f5fe
Content-Type: text/plain; charset="UTF-8"

Thank you for the patch - it needs to go to
openemebedded-core@lists.openembedded.org

Alex

On Mon, 17 Aug 2020 at 14:18, Vasyl Vavrychuk <vvavrychuk@gmail.com> wrote:

> runqemu help reports that gtk or sdl option is needed with gl or gl-es
> option. But if user forgot to add gtk or sdl option, then gl or gl-es
> options were silently skipped.
>
> Signed-off-by: Vasyl Vavrychuk <vvavrychuk@gmail.com>
> ---
>  scripts/runqemu | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/scripts/runqemu b/scripts/runqemu
> index 310d79fdc5..398f0a0910 100755
> --- a/scripts/runqemu
> +++ b/scripts/runqemu
> @@ -454,7 +454,8 @@ class BaseConfig(object):
>                      self.qemu_opt_script += ' -display gtk'
>              elif arg == 'gl' or arg == 'gl-es':
>                  # These args are handled inside sdl or gtk blocks above
> -                pass
> +                if ('gtk' not in sys.argv) and ('sdl' not in sys.argv):
> +                    raise RunQemuError('Option %s also needs gtk or sdl
> option.' % (arg))
>              elif arg == 'egl-headless':
>                  self.qemu_opt_script += ' -vga virtio -display
> egl-headless'
>                  # As runqemu can be run within bitbake (when using
> testimage, for example),
> --
> 2.23.0
>
> 
>

--00000000000044c95e05ad12f5fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you for the patch - it needs to go to <a href=
=3D"mailto:openemebedded-core@lists.openembedded.org">openemebedded-core@l=
ists.openembedded.org</a></div><div><br></div><div>Alex<br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 17=
 Aug 2020 at 14:18, Vasyl Vavrychuk &lt;<a href=3D"mailto:vvavrychuk@gmail.=
com">vvavrychuk@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">runqemu help reports that gtk or sdl option is nee=
ded with gl or gl-es<br>
option. But if user forgot to add gtk or sdl option, then gl or gl-es<br>
options were silently skipped.<br>
<br>
Signed-off-by: Vasyl Vavrychuk &lt;<a href=3D"mailto:vvavrychuk@gmail.com"=
 target=3D"_blank">vvavrychuk@gmail.com</a>&gt;<br>
---<br>
=C2=A0scripts/runqemu | 3 ++-<br>
=C2=A01 file changed, 2 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/scripts/runqemu b/scripts/runqemu<br>
index 310d79fdc5..398f0a0910 100755<br>
--- a/scripts/runqemu<br>
+++ b/scripts/runqemu<br>
@@ -454,7 +454,8 @@ class BaseConfig(object):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0self.qemu_opt_script +=3D &#39; -display gtk&#39;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0elif arg =3D=3D &#39;gl&#3=
9; or arg =3D=3D &#39;gl-es&#39;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# These args=
 are handled inside sdl or gtk blocks above<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pass<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (&#39;gtk&#39;=
 not in sys.argv) and (&#39;sdl&#39; not in sys.argv):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rai=
se RunQemuError(&#39;Option %s also needs gtk or sdl option.&#39; % (arg))<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0elif arg =3D=3D &#39;egl-h=
eadless&#39;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.qemu_op=
t_script +=3D &#39; -vga virtio -display egl-headless&#39;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# As runqemu=
 can be run within bitbake (when using testimage, for example),<br>
-- <br>
2.23.0<br>
<br>
<br>
</blockquote></div>

--00000000000044c95e05ad12f5fe--
