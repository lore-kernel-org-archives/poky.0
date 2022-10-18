Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
 by mx.groups.io with SMTP id smtpd.web10.101.1666115566724420480
 for <poky@lists.yoctoproject.org>;
 Tue, 18 Oct 2022 10:52:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SVkTG8SI;
 spf=pass (domain: gmail.com, ip: 209.85.217.47, mailfrom: quantenkeks@gmail.com)
Received: by mail-vs1-f47.google.com with SMTP id 1so11264482vsx.1
        for <poky@lists.yoctoproject.org>; Tue, 18 Oct 2022 10:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+gcdecSWACUY+vnyh5VqA0CMiuCvlmqxjnIwI5vYKHw=;
        b=SVkTG8SIDBg18QPUEfOuSoSxy/kWNhd80430A1h6GCoqW67Qymx36kIGRpuT4h8G62
         +oIpqsRN1+MAJspUay1WkN2TT2Z9qyRmMp0Ke1b5zuxjfUFlG+2xmw9YLjVXMTZLT48H
         JPkho4GOerzy0ls6zr4SeIKHog5WgvHcLvaMDKanbddSjaOH/ZXzgGUoSsxPSKPy6xin
         qQWkDDOs/qL8btbC3fbUbds59Jajw7n3rKUsS3EPeQErPBBpfi2VP0dY9Bzhm+m5gagm
         k4U5bJNy8sH5Vh2FgSP76DKxYMxzOepIixFlritA7erk3SEzLdgeD80v1+ehVXcYYeSt
         G3+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+gcdecSWACUY+vnyh5VqA0CMiuCvlmqxjnIwI5vYKHw=;
        b=B+GSOKwgdnMmv1kXINzJMSYhb2up193p5MaavCZFb75n9vdZhO6DExisas06QvFVbR
         tyoti5YrzxfaptM5cyChefBEbkcchiyBrOP1qL/NKFqQHAmQmJKHu+w79kCjhoanMsKW
         fwwL/CF3WaLPvHK7Pi3Wy89nMEvVjfhjnkoDXaMkQySBSIAbQJtVH52Nvrwcj5yD8OpR
         tRMxBU3f97USk1mboqT2DzmKgW5pHubqftSU1fGVkdndFjKBdDcF6ZeX00dGGgp7vypR
         pjLUhsLNPxwO+kpQRpizpuJCTJRAWO6AdzdpHvCJMg4MJf5jbRWRmpBcMji2Fh0mL5QH
         4mrw==
X-Gm-Message-State: ACrzQf3i2dk+X5zQHz4N5S+OhuaRkn63FW8Db/rYhJkcQ17cjIJLMM4Y
	AOqVCkphvoxOtQdDXa2FAuCC7ImjkhLTksbbcpY=
X-Google-Smtp-Source: AMsMyM4nyGBG4xptRA1YkIXqDcLI6ve9Yevyo4q+oE55LDUiVXWkXpon4wKysY0KgR13CaPSGzr+6iMOyL3GkFYtp1E=
X-Received: by 2002:a05:6102:74c:b0:3a7:92f9:a9b8 with SMTP id
 v12-20020a056102074c00b003a792f9a9b8mr2405014vsg.41.1666115565734; Tue, 18
 Oct 2022 10:52:45 -0700 (PDT)
MIME-Version: 1.0
References: <20221017205253.87665-1-quantenkeks@gmail.com> <5CCACCAA-29A7-45D9-AC44-8ABB03ECE4B3@arm.com>
In-Reply-To: <5CCACCAA-29A7-45D9-AC44-8ABB03ECE4B3@arm.com>
From: "Oliver Lang" <quantenkeks@gmail.com>
Date: Tue, 18 Oct 2022 19:52:34 +0200
Message-ID: <CAOZeg4NqqHk+AGa=EgXyqucPfX=8FjJ1dgCDywi-SKFrx8tNQw@mail.gmail.com>
Subject: Re: [poky] [PATCH] bitbake: cooker/runqueue: fix a typo
To: Ross Burton <Ross.Burton@arm.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000734ec205eb52c2ff"

--000000000000734ec205eb52c2ff
Content-Type: text/plain; charset="UTF-8"

Sorry for the inconvenience.
I am resubmitting it there.

Thank you
Oliver

Am Di., 18. Okt. 2022 um 12:24 Uhr schrieb Ross Burton <Ross.Burton@arm.com
>:

> Thanks for the patch, but bitbake changes should go to
> bitbake@lists.openembedded.org.
>
> Basically, poky@ is only for meta-poky/.  bitbake/ should go to bitbake@
> and meta/ should go to openembedded-core@lists.openembedded.org.
>
> Thanks
> Ross
>
> > On 17 Oct 2022, at 21:52, Oliver Lang via lists.yoctoproject.org
> <quantenkeks=gmail.com@lists.yoctoproject.org> wrote:
> >
> > Signed-off-by: Oliver Lang <quantenkeks@gmail.com>
> > ---
> > bitbake/lib/bb/cooker.py   | 2 +-
> > bitbake/lib/bb/runqueue.py | 2 +-
> > 2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
> > index 32a529f0f9..1da2f03197 100644
> > --- a/bitbake/lib/bb/cooker.py
> > +++ b/bitbake/lib/bb/cooker.py
> > @@ -250,7 +250,7 @@ class BBCooker:
> >     def process_inotify_updates(self):
> >         for n in [self.confignotifier, self.notifier]:
> >             if n and n.check_events(timeout=0):
> > -                # read notified events and enqeue them
> > +                # read notified events and enqueue them
> >                 n.read_events()
> >                 n.process_events()
> >
> > diff --git a/bitbake/lib/bb/runqueue.py b/bitbake/lib/bb/runqueue.py
> > index 48e25401ba..338d1fe36f 100644
> > --- a/bitbake/lib/bb/runqueue.py
> > +++ b/bitbake/lib/bb/runqueue.py
> > @@ -2256,7 +2256,7 @@ class RunQueueExecute:
> >         if self.sq_deferred:
> >             deferred_tid = list(self.sq_deferred.keys())[0]
> >             blocking_tid = self.sq_deferred.pop(deferred_tid)
> > -            logger.warning("Runqeueue deadlocked on deferred tasks,
> forcing task %s blocked by %s" % (deferred_tid, blocking_tid))
> > +            logger.warning("Runqueue deadlocked on deferred tasks,
> forcing task %s blocked by %s" % (deferred_tid, blocking_tid))
> >             return True
> >
> >         if self.failed_tids:
> > --
> > 2.25.1
> >
> >
> > 
> >
>
>

--000000000000734ec205eb52c2ff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry for the inconvenience.<div>I am resubmitting it ther=
e.</div><div><br></div><div>Thank you</div><div>Oliver</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Am Di., 18. Okt=
. 2022 um 12:24=C2=A0Uhr schrieb Ross Burton &lt;<a href=3D"mailto:Ross.Bur=
ton@arm.com">Ross.Burton@arm.com</a>&gt;:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">Thanks for the patch, but bitbake changes should =
go to <a href=3D"mailto:bitbake@lists.openembedded.org" target=3D"_blank">b=
itbake@lists.openembedded.org</a>.<br>
<br>
Basically, poky@ is only for meta-poky/.=C2=A0 bitbake/ should go to bitbak=
e@ and meta/ should go to <a href=3D"mailto:openembedded-core@lists.openemb=
edded.org" target=3D"_blank">openembedded-core@lists.openembedded.org</a>.<=
br>
<br>
Thanks<br>
Ross<br>
<br>
&gt; On 17 Oct 2022, at 21:52, Oliver Lang via <a href=3D"http://lists.yoct=
oproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</=
a> &lt;quantenkeks=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" ta=
rget=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt; <br>
&gt; Signed-off-by: Oliver Lang &lt;<a href=3D"mailto:quantenkeks@gmail.com=
" target=3D"_blank">quantenkeks@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; bitbake/lib/bb/cooker.py=C2=A0 =C2=A0| 2 +-<br>
&gt; bitbake/lib/bb/runqueue.py | 2 +-<br>
&gt; 2 files changed, 2 insertions(+), 2 deletions(-)<br>
&gt; <br>
&gt; diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py<br>
&gt; index 32a529f0f9..1da2f03197 100644<br>
&gt; --- a/bitbake/lib/bb/cooker.py<br>
&gt; +++ b/bitbake/lib/bb/cooker.py<br>
&gt; @@ -250,7 +250,7 @@ class BBCooker:<br>
&gt;=C2=A0 =C2=A0 =C2=A0def process_inotify_updates(self):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for n in [self.confignotifier, self.n=
otifier]:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if n and n.check_events=
(timeout=3D0):<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # read notifi=
ed events and enqeue them<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # read notifi=
ed events and enqueue them<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0n.read_ev=
ents()<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0n.process=
_events()<br>
&gt; <br>
&gt; diff --git a/bitbake/lib/bb/runqueue.py b/bitbake/lib/bb/runqueue.py<b=
r>
&gt; index 48e25401ba..338d1fe36f 100644<br>
&gt; --- a/bitbake/lib/bb/runqueue.py<br>
&gt; +++ b/bitbake/lib/bb/runqueue.py<br>
&gt; @@ -2256,7 +2256,7 @@ class RunQueueExecute:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if self.sq_deferred:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0deferred_tid =3D list(s=
elf.sq_deferred.keys())[0]<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0blocking_tid =3D self.s=
q_deferred.pop(deferred_tid)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 logger.warning(&quot;Runqeu=
eue deadlocked on deferred tasks, forcing task %s blocked by %s&quot; % (de=
ferred_tid, blocking_tid))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 logger.warning(&quot;Runque=
ue deadlocked on deferred tasks, forcing task %s blocked by %s&quot; % (def=
erred_tid, blocking_tid))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return True<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if self.failed_tids:<br>
&gt; -- <br>
&gt; 2.25.1<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
</blockquote></div>

--000000000000734ec205eb52c2ff--
