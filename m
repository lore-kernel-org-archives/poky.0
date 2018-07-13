Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C90DE01282; Fri, 13 Jul 2018 14:42:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kergoth[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E35AEE0127F
	for <poky@yoctoproject.org>; Fri, 13 Jul 2018 14:42:13 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id 13-v6so64836115ois.1
	for <poky@yoctoproject.org>; Fri, 13 Jul 2018 14:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Ja/0NXpfnhZv72l6JX02nz7u9xfU9tX6qTbBNbEu/JQ=;
	b=Upz1oNsLSBQ2do+LUD7+eFWqmRPew75FLgdAj0SnGnLtvVqYq/IAY7nQuwL4g5M1uW
	SoU++GXecKStrG5lSwFaXVRt4eq5wTgvlnD5dskuHybZDlIU/wHbLo87r5lu114qklC5
	HF5hBCpCjxQeHykygcZmWPeIU7kv3fuRqn7/8nYnmzbgcbBxTAyb2O9DhegsBt/lEi0b
	ZmRcWBm65+Evq7ojs+0PBtJCioZhZ1WsdgGRFLEpGRLuT+lINBM0Ii4q3ZiuIoFNgj+v
	QGwkvcoynUiH8qCSECQt5BNlr+xdRQ6L41bAHIPp1TRAwa6EkOR0QWKwJywLuO35UqO3
	4qhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Ja/0NXpfnhZv72l6JX02nz7u9xfU9tX6qTbBNbEu/JQ=;
	b=N8efVe/F6xGG/qY75YChLC6zwAmzO3q9Pc4vcxr1D8d9NTPAe9iSbyJa2gZlNlpNF/
	WrzJ0fjJtob9CwmbIqca6BQ4XD3V6d9QwV51mOf1WScrHckUPUFLx57oZv+6IAfW+xk2
	76lumDhykSZl51mpCkgN+NUhahcUIS/RKAs2smjtYTzPK6aJPeeYBEFDhsXXdlra3zBY
	e0liqfC50ZWanJnRvgHJTEq/kYHiVF5aTAGhu9uG/Oifu5gCRZJX7Qome6WmxhVPXr3H
	dpgS68uiOShDVXBI8vocwk8cqG++q4kGVfXshWv0NAW0u9gAJoTHDijDcyGyR8NkCFZ/
	A5hA==
X-Gm-Message-State: AOUpUlFRudm6gLXfgN4Ij+mOgrSiv5/wLfzqRmcKIWCH+4mB3kxJsAbL
	MqGzvkLc5fCquUGYvdKY3wfQ1iZj3XzqhmUbbag=
X-Google-Smtp-Source: AAOMgpdXqyHKeROVP1csi4iwWFkNU+wi+XY35+eNzkM69GYMqyTj61uK4tlDX+AUQCyr0TLQgbui1qmLZZI8JJLxtsw=
X-Received: by 2002:aca:ad86:: with SMTP id
	w128-v6mr9439775oie.112.1531518133335; 
	Fri, 13 Jul 2018 14:42:13 -0700 (PDT)
MIME-Version: 1.0
References: <f0340599af16638211afdc47b8b14fab@mail.gmail.com>
In-Reply-To: <f0340599af16638211afdc47b8b14fab@mail.gmail.com>
From: Christopher Larson <kergoth@gmail.com>
Date: Fri, 13 Jul 2018 14:42:01 -0700
Message-ID: <CABcZANn5fJK5HyG8X_R0D23dxorg1rBwn9JnMp_PTdirq0p4NA@mail.gmail.com>
To: jonathan.richardson@broadcom.com
Cc: poky@yoctoproject.org
Subject: Re: no source code in dbg package when devtool used
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
X-List-Received-Date: Fri, 13 Jul 2018 21:42:15 -0000
Content-Type: multipart/alternative; boundary="0000000000004dfa200570e85a16"

--0000000000004dfa200570e85a16
Content-Type: text/plain; charset="UTF-8"

Known issue, there's a thread where someone is working on fixing it on the
oe-core and meta-oe lists: "[OE-core] [meta-oe][PATCH] package.bbclass:
provide debug sources in externalsrc -dbg packages"

On Fri, Jul 13, 2018 at 1:19 PM Jonathan Richardson <
jonathan.richardson@broadcom.com> wrote:

> Hi,
>
> Before I report a bug, is there a reason why the source code isn't added
> to the dbg package when using devtool on a recipe pointing to a git repo
> but it does get added if the recipe isn't devtool'd? It makes it difficult
> to debug code using core dumps when I devtool a recipe, change code, and
> then dnf the dbg package on the target to get the updated souce and debug
> symbols - no code found to list in gdb.
>
> Thanks.
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


-- 
Christopher Larson
kergoth at gmail dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Senior Software Engineer, Mentor Graphics

--0000000000004dfa200570e85a16
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Known issue, there&#39;s a thread where someone is working=
 on fixing it on the oe-core and meta-oe lists: &quot;[OE-core] [meta-oe][P=
ATCH] package.bbclass: provide debug sources in externalsrc -dbg packages&q=
uot;</div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri, Jul 13, 2=
018 at 1:19 PM Jonathan Richardson &lt;<a href=3D"mailto:jonathan.richardso=
n@broadcom.com">jonathan.richardson@broadcom.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">Hi,<br>
<br>
Before I report a bug, is there a reason why the source code isn&#39;t adde=
d<br>
to the dbg package when using devtool on a recipe pointing to a git repo<br=
>
but it does get added if the recipe isn&#39;t devtool&#39;d? It makes it di=
fficult<br>
to debug code using core dumps when I devtool a recipe, change code, and<br=
>
then dnf the dbg package on the target to get the updated souce and debug<b=
r>
symbols - no code found to list in gdb.<br>
<br>
Thanks.<br>
-- <br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><d=
iv dir=3D"ltr">Christopher Larson<br>kergoth at gmail dot com<br>Founder - =
BitBake, OpenEmbedded, OpenZaurus<br>Senior Software Engineer, Mentor Graph=
ics</div></div></div></div>

--0000000000004dfa200570e85a16--
