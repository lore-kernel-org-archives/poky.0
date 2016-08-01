Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77555E00E6E; Mon,  1 Aug 2016 06:58:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9DE1E00E67
	for <poky@yoctoproject.org>; Mon,  1 Aug 2016 06:58:46 -0700 (PDT)
Received: by mail-it0-f50.google.com with SMTP id f6so171200578ith.0
	for <poky@yoctoproject.org>; Mon, 01 Aug 2016 06:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zw0p5g5Ka7Mpn2PKWsO90JMLUQjdRxOESWuUUjjDKoM=;
	b=AVgM+CwcYn+YIY004+azsCaW068/mo0ZT+NkEn/UWGWck2kbJR/sKgpMpQdwYOaRiM
	w93Pm6sVPWnkRuDbfK+LRopB0gO1/jwGT/xTKgFl+XGjHXKuTVBvvjC/Y8bGV8k7N0y1
	mv9+0aOzOnWP0bUXxeoqmDuzeNIZZ9YmyaauB0HEacWhSyKJgR25c8aGmOAMeSioxzSL
	euj5NiavkNcnK1IcwdAtHm0MJ93BDdcrwhJTP6Rvd0tMmMPgPsxLAsV+1jptNRbTyfyp
	1vxisBto+j/sfAtp9XbK0FPkpbNg8iXRY1HOIv/CxUT4BPLqbGELCLtyP3POzdl9nb1g
	okRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zw0p5g5Ka7Mpn2PKWsO90JMLUQjdRxOESWuUUjjDKoM=;
	b=bwA0JTYX40O+lIUxzMcIzBMlvybQmKoqRoQHf0eSg56BpucBLdaCUPYJ0OgLRHzu/D
	/EXbQTQX0zrBSKodYPWmYwWL39kO7By8Iv5/1Wv3SCSFzryKDZimYgZCb0zd8GdaqxQ6
	2P6BKJ1HEhJsfSu3MFVdqa3z5nOArfPyrf9XLvm32+2/7VwSDC3DEhksGaFzPATDYPcX
	BAbkOagR4uT5h/XQoaRi4WmJE46p2oTN9VKX0VWkCgz8mcwgzBO3ofwpka14gfLW9fvT
	e/DXONDYhj09rj7zWHUIpR9eOjaaB0EXSobi4qrWyVpokkVIwE1o88wDTC+e7uZD1nt+
	HVhw==
X-Gm-Message-State: AEkoousBceKfpDFZGx28nmHbqOW5iGLAX2bv2bqSSaWmM7M5pwXdJdhTkzYp9IN7b75JU9ND5dZGOq9nUKGpp+ng
X-Received: by 10.36.131.194 with SMTP id d185mr14318972ite.38.1470059925880; 
	Mon, 01 Aug 2016 06:58:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Mon, 1 Aug 2016 06:58:26 -0700 (PDT)
In-Reply-To: <BLUPR0201MB1553A0AEA355EAAC33EABD5CF7010@BLUPR0201MB1553.namprd02.prod.outlook.com>
References: <BLUPR0201MB1553A0AEA355EAAC33EABD5CF7010@BLUPR0201MB1553.namprd02.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 1 Aug 2016 14:58:26 +0100
Message-ID: <CAJTo0LaZvdRm9TLcnSarNhLtXZiCXdtMcW90-BZyq-Dv-urMFQ@mail.gmail.com>
To: Edson Seabra <Edson.Seabra@zpesystems.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: metadata_scm - get branch/revision from svn repository
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
X-List-Received-Date: Mon, 01 Aug 2016 13:58:49 -0000
Content-Type: multipart/alternative; boundary=94eb2c049652ae72fa053902ff1a

--94eb2c049652ae72fa053902ff1a
Content-Type: text/plain; charset=UTF-8

On 29 July 2016 at 19:56, Edson Seabra <Edson.Seabra@zpesystems.com> wrote:

> With this patch bitbake commands can display the branch/revision of layers
> under svn control.
>
> meta-java         = "trunk:4360-4037"
>
> meta
>
> meta-yocto
>
> meta-yocto-bsp    = "jethro:dd0ba9ea4a11ab15348d4fe3574e4b28784db82f"
>

openembedded-core@lists.openembedded.org please, and no HTML in the
message.  Ideally, sent the patch with git send-email so it can be
trivially reviewed and applied.  As it is you're asking me to manually
apply the patch and then copy/de-HTML/paste a commit message, override the
attribution so that you're the owner, and fake a signed-off-by tag.


Ross

--94eb2c049652ae72fa053902ff1a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 29 July 2016 at 19:56, Edson Seabra <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:Edson.Seabra@zpesystems.com" target=3D"_blank">Edson.Seabra@zpesystems.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"=
"><div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:16=
px;margin-top:0px;margin-bottom:0px">With this patch bitbake commands can d=
isplay the branch/revision of layers under svn control.</div>
<div><br>
</div>
</span><p><span style=3D"font-family:&quot;Courier New&quot;,monospace">met=
a-java =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;trunk:4360-4037&quot;</span></=
p>
<span style=3D"font-family:&quot;Courier New&quot;,monospace"></span>
<p><span style=3D"font-family:&quot;Courier New&quot;,monospace">meta =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span></p>
<span style=3D"font-family:&quot;Courier New&quot;,monospace"></span>
<p><span style=3D"font-family:&quot;Courier New&quot;,monospace">meta-yocto=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span></p>
<span style=3D"font-family:&quot;Courier New&quot;,monospace"></span>
<p><span style=3D"font-family:&quot;Courier New&quot;,monospace">meta-yocto=
-bsp=C2=A0 =C2=A0 =3D &quot;jethro:dd0ba9ea4a11ab15348d4fe3574e4b28784db82f=
&quot;</span></p>
</blockquote></div><br><a href=3D"mailto:openembedded-core@lists.openembedd=
ed.org">openembedded-core@lists.openembedded.org</a> please, and no HTML in=
 the message.=C2=A0 Ideally, sent the patch with git send-email so it can b=
e trivially reviewed and applied.=C2=A0 As it is you&#39;re asking me to ma=
nually apply the patch and then copy/de-HTML/paste a commit message, overri=
de the attribution so that you&#39;re the owner, and fake a signed-off-by t=
ag.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><b=
r></div><div class=3D"gmail_extra">Ross</div></div>

--94eb2c049652ae72fa053902ff1a--
