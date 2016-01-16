Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66C52E00863; Sat, 16 Jan 2016 09:50:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0530E0045F
	for <poky@yoctoproject.org>; Sat, 16 Jan 2016 09:50:19 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id r129so6805798wmr.0
	for <poky@yoctoproject.org>; Sat, 16 Jan 2016 09:50:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=kKrcowv+beAbgGKfh3yFo6bVd48cRNd0PPohWl1cofk=;
	b=bogsndQC4vB6UFWLhFkAUBLKTbxi1UWXxH5v8H4cI0Ap/TBKo7wlNLAdRxnnO2UQB5
	SW60m3Rqp9+Zx9o2USJAfxklpMSoov9ZSZS2sUbKGNFJM2pum8Bp8Hp7kjf93jOrQqqu
	+X4YNYYjTuwE+YSpXZwa0VnGEgauW4noGTv1OaazfjLmaXyRpi/kiVuM0ocX+qfXJk6w
	LGEVVfZyX/xvdLWcgs/Kjk8EmeH9LDuP2UkeaDSjG0vVfsQu2KNB9B+m1ziQl45Hawqk
	0+LP94jSnFRoqfXsphhblkuGkKklqA+LJuoRwa39Vc1ALgux9WCOk6dUDVFh7bnzArMm
	1o/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=kKrcowv+beAbgGKfh3yFo6bVd48cRNd0PPohWl1cofk=;
	b=k6fUbM5pUBC0cyY9LO6HjqHDPLxyLX5jhD6MBNXRrznzEnpWBH2t1JjbfE+gwoAHDX
	CsA/yzRynQXi3CEaBKfjqFXuZQ0kn0blX5RSds7krJtP3AijkRdt3rZYstSpJJOw28SS
	WR9czLetd0pivoVzGGgaLkrGGDaZMrDTfEJpHauMECwgGxnw94nvXfdxdM+LWyIEnW5x
	mDUCaI7xwuN8F2glaD4T0MMQoh2FUda1HwbaZzG0jnQLjSbhJwgKcLMxgM7cyi8e9Ha1
	IRY9uoqX+qhU/7l/UxD76vCQ9QcghoFXbmNuWG1e21HkWUFnZfUkkFNguLQKeMaHIwfA
	CNdg==
X-Gm-Message-State: AG10YORKAmmemvcPRkHH276oFxarIgxYbcuDgOYk6498imQ1tt7Fp6qxRWcWZ4haRh6iutF4E1QTMbY6Je07Eg==
MIME-Version: 1.0
X-Received: by 10.28.30.210 with SMTP id e201mr5029406wme.42.1452966618859;
	Sat, 16 Jan 2016 09:50:18 -0800 (PST)
Received: by 10.194.2.15 with HTTP; Sat, 16 Jan 2016 09:50:18 -0800 (PST)
In-Reply-To: <1452947285-13155-2-git-send-email-florin@resin.io>
References: <1452947285-13155-1-git-send-email-florin@resin.io>
	<1452947285-13155-2-git-send-email-florin@resin.io>
Date: Sat, 16 Jan 2016 18:50:18 +0100
Message-ID: <CA+chaQd59LyLu+ALSy+h+KWNs7We=0LP6oF=fa1ZLdrcMfMovw@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
To: Florin Sarbu <florin@resin.io>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [DAISY backport] backport 3cb87724a5b21550e99c18e97b665d6604bb2fa9 from git://git.yoctoproject.org/poky
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
X-List-Received-Date: Sat, 16 Jan 2016 17:50:22 -0000
Content-Type: multipart/alternative; boundary=001a114b27ba30191f052977272e

--001a114b27ba30191f052977272e
Content-Type: text/plain; charset=UTF-8

This belongs to bitbake-devel ML and don't change the commit summary, just
add [branch-name] tag to e-mail subject.

On Sat, Jan 16, 2016 at 1:28 PM, Florin Sarbu <florin@resin.io> wrote:

> bitbake: cooker: Ensure bbappend files are processed in a
> determistic order
>
> self.appendlist is a dict and as such unordered. This can lead to cases
> where appends with different names (e.g. x_%.bbappend vs. x_123.bbappend)
> can be reordered in application which in turn reorders the variables
> that those bbappend files might touch. Reorderd variables changes the
> sstate
> cache signatures causing real world issues.
>
> To avoid this, use a list for the append files instead.
>
> This patch is conservative and just adds a new data structure alongside
> the existing one and uses it to resolve the core issue. Later patches
> (post release) can handle some of the wider but less problematic ones
> (e.g. issues in bitbake-layers flatten).
>
> [YOCTO #7511]
>
> (Bitbake rev: f980f060cd0d1e7fe5011f3c325c1b254f05eccf)
>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
> Signed-off-by: Florin Sarbu <florin@resin.io>
> ---
>  bitbake/lib/bb/cooker.py | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
>
> diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
> index f44a088..a2c9b10 100644
> --- a/bitbake/lib/bb/cooker.py
> +++ b/bitbake/lib/bb/cooker.py
> @@ -1408,6 +1408,7 @@ class CookerExit(bb.event.Event):
>  class CookerCollectFiles(object):
>      def __init__(self, priorities):
>          self.appendlist = {}
> +        self.bbappends = []
>          self.appliedappendlist = []
>          self.bbfile_config_priorities = priorities
>
> @@ -1502,6 +1503,7 @@ class CookerCollectFiles(object):
>          # Build a list of .bbappend files for each .bb file
>          for f in bbappend:
>              base = os.path.basename(f).replace('.bbappend', '.bb')
> +            self.bbappends.append((base, f))
>              if not base in self.appendlist:
>                 self.appendlist[base] = []
>              if f not in self.appendlist[base]:
> @@ -1527,11 +1529,11 @@ class CookerCollectFiles(object):
>          """
>          filelist = []
>          f = os.path.basename(fn)
> -        for bbappend in self.appendlist:
> +        for b in self.bbappends:
> +            (bbappend, filename) = b
>              if (bbappend == f) or ('%' in bbappend and
> bbappend.startswith(f[:bbappend.index('%')])):
>                  self.appliedappendlist.append(bbappend)
> -                for filename in self.appendlist[bbappend]:
> -                    filelist.append(filename)
> +                filelist.append(filename)
>          return filelist
>
>      def collection_priorities(self, pkgfns):
> @@ -1551,10 +1553,10 @@ class CookerCollectFiles(object):
>                  unmatched.add(regex)
>
>          def findmatch(regex):
> -            for bbfile in self.appendlist:
> -                for append in self.appendlist[bbfile]:
> -                    if regex.match(append):
> -                        return True
> +            for b in self.bbappends:
> +                (bbfile, append) = b
> +                if regex.match(append):
> +                    return True
>              return False
>
>          for unmatch in unmatched.copy():
> --
> 2.7.0.rc3
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--001a114b27ba30191f052977272e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This belongs to bitbake-devel ML and don&#39;t change the =
commit summary, just add [branch-name] tag to e-mail subject.</div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sat, Jan 16, 2016 at 1=
:28 PM, Florin Sarbu <span dir=3D"ltr">&lt;<a href=3D"mailto:florin@resin.i=
o" target=3D"_blank">florin@resin.io</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">bitbake: cooker: =
Ensure bbappend files are processed in a<br>
determistic order<br>
<br>
self.appendlist is a dict and as such unordered. This can lead to cases<br>
where appends with different names (e.g. x_%.bbappend vs. x_123.bbappend)<b=
r>
can be reordered in application which in turn reorders the variables<br>
that those bbappend files might touch. Reorderd variables changes the sstat=
e<br>
cache signatures causing real world issues.<br>
<br>
To avoid this, use a list for the append files instead.<br>
<br>
This patch is conservative and just adds a new data structure alongside<br>
the existing one and uses it to resolve the core issue. Later patches<br>
(post release) can handle some of the wider but less problematic ones<br>
(e.g. issues in bitbake-layers flatten).<br>
<br>
[YOCTO #7511]<br>
<br>
(Bitbake rev: f980f060cd0d1e7fe5011f3c325c1b254f05eccf)<br>
<br>
Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfou=
ndation.org">richard.purdie@linuxfoundation.org</a>&gt;<br>
<br>
Signed-off-by: Florin Sarbu &lt;<a href=3D"mailto:florin@resin.io">florin@r=
esin.io</a>&gt;<br>
---<br>
=C2=A0bitbake/lib/bb/cooker.py | 16 +++++++++-------<br>
=C2=A01 file changed, 9 insertions(+), 7 deletions(-)<br>
<br>
diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py<br>
index f44a088..a2c9b10 100644<br>
--- a/bitbake/lib/bb/cooker.py<br>
+++ b/bitbake/lib/bb/cooker.py<br>
@@ -1408,6 +1408,7 @@ class CookerExit(bb.event.Event):<br>
=C2=A0class CookerCollectFiles(object):<br>
=C2=A0 =C2=A0 =C2=A0def __init__(self, priorities):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.appendlist =3D {}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.bbappends =3D []<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.appliedappendlist =3D []<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.bbfile_config_priorities =3D priorit=
ies<br>
<br>
@@ -1502,6 +1503,7 @@ class CookerCollectFiles(object):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Build a list of .bbappend files for eac=
h .bb file<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for f in bbappend:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0base =3D os.path.basename(f=
).replace(&#39;.bbappend&#39;, &#39;.bb&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.bbappends.append((base, f))=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if not base in self.appendl=
ist:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.appendlist[bas=
e] =3D []<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if f not in self.appendlist=
[base]:<br>
@@ -1527,11 +1529,11 @@ class CookerCollectFiles(object):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;&quot;&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0filelist =3D []<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0f =3D os.path.basename(fn)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 for bbappend in self.appendlist:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 for b in self.bbappends:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (bbappend, filename) =3D b<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (bbappend =3D=3D f) or (=
&#39;%&#39; in bbappend and bbappend.startswith(f[:bbappend.index(&#39;%&#3=
9;)])):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.applieda=
ppendlist.append(bbappend)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for filename in se=
lf.appendlist[bbappend]:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file=
list.append(filename)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 filelist.append(fi=
lename)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return filelist<br>
<br>
=C2=A0 =C2=A0 =C2=A0def collection_priorities(self, pkgfns):<br>
@@ -1551,10 +1553,10 @@ class CookerCollectFiles(object):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unmatched.add=
(regex)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0def findmatch(regex):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for bbfile in self.appendlist:<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for append in self=
.appendlist[bbfile]:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if r=
egex.match(append):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 return True<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for b in self.bbappends:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (bbfile, append) =
=3D b<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if regex.match(app=
end):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 retu=
rn True<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return False<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for unmatch in unmatched.copy():<br>
--<br>
2.7.0.rc3<br>
<br>
--<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</div></div></blockquote></div><br></div>

--001a114b27ba30191f052977272e--
