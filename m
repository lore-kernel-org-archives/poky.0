Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f43.google.com (mail-vb0-f43.google.com
	[209.85.212.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 274D7E00747
	for <poky@yoctoproject.org>; Wed, 21 Aug 2013 03:19:58 -0700 (PDT)
Received: by mail-vb0-f43.google.com with SMTP id h11so156371vbh.30
	for <poky@yoctoproject.org>; Wed, 21 Aug 2013 03:19:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=/VOl0W4ixZQRtGmfKz10YSC3yy/mIt/FoXyNS2qoIwg=;
	b=KJ7s5EFIKo43xN3fYqjOWauOG0z8xfE8GCT7iMA5lom4qNjZhdk7ccZw5urY4AAs1v
	gPvFLhvXCdiZB17vx51BrKMeQaidwe0v5L2B4PFBFLKAaUPgXH/ISy0dxq/AsBXpjgCj
	uZhG2yelnapaQVpg7O10bb6PWTRpgzy9MHNorWbf0yZmezO0RgIRzZLiXgFw5d2mVsfI
	KhhMlXOiisZXnMhdzyVeX9JE1cMrt3SndPcaeojT/jblG2dP6DZkZadRaHZoQEFK+QDC
	7g1Qn3QyY6UNBCI7LNTfTg9BVlwLeQr38wWb6wnpOfMR+0nk8dLlXoj2u8DXvHEpB39D
	3SJQ==
X-Gm-Message-State: ALoCoQk2p5hxmmkjpd5Y8RDiaok6UDLEl6XehNwVnAewNElVZn3BadYuLAacEGwPCfJIhKq/KPBS
X-Received: by 10.221.32.133 with SMTP id sk5mr349984vcb.27.1377080397935;
	Wed, 21 Aug 2013 03:19:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Wed, 21 Aug 2013 03:19:37 -0700 (PDT)
In-Reply-To: <CAOMwXhMj++wFF8Z24j3pXa7evtnFXbmOxj+6TWH8hhwYpVrsRQ@mail.gmail.com>
References: <CAOMwXhNzKFZNdbRrfc67_5swmjz_0gqJoG-=YJg0hkFpor5RMQ@mail.gmail.com>
	<CAJTo0LZ-hGHQY5tQrpFDzW_z_YFmmRDd9YtHR0B1AiYeHY+xfg@mail.gmail.com>
	<CAOMwXhMj++wFF8Z24j3pXa7evtnFXbmOxj+6TWH8hhwYpVrsRQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 21 Aug 2013 11:19:37 +0100
Message-ID: <CAJTo0LbVgCEckeGZRAhZyVqki88oG8L6X1Q59jcK63EacPzPdA@mail.gmail.com>
To: Laszlo Papp <lpapp@kde.org>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Help with regression from denzil to dylan
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
X-List-Received-Date: Wed, 21 Aug 2013 10:19:59 -0000
Content-Type: multipart/alternative; boundary=001a1133aa00f24d9a04e47283b8

--001a1133aa00f24d9a04e47283b8
Content-Type: text/plain; charset=UTF-8

On 21 August 2013 11:13, Laszlo Papp <lpapp@kde.org> wrote:

> Yeah, I was discussing this feature request in #git on IRC.
>
> Anyway, can we get rid of this gtk doc stub stuff? It is just causing
> havoc.
>

No (see my other mail for the rationale).

This isn't specific to the gtk-doc-stub recipe, but a problem you'll have
with every git clone in your downloads directory.

I really do recommend you don't put DL_DIR inside a git repository, and
share it between multiple clients some other way.

Ross

--001a1133aa00f24d9a04e47283b8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 21 August 2013 11:13, Laszlo Papp <span dir=3D"ltr">&lt=
;<a href=3D"mailto:lpapp@kde.org" target=3D"_blank">lpapp@kde.org</a>&gt;</=
span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gmail_quote"><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">

<div dir=3D"ltr">Yeah, I was discussing this feature request in #git on IRC=
.<div><br></div><div>Anyway, can we get rid of this gtk doc stub stuff? It =
is just causing havoc.</div></div></blockquote><div><br></div><div>No (see =
my other mail for the rationale).</div>

<div><br></div><div>This isn&#39;t specific to the gtk-doc-stub recipe, but=
 a problem you&#39;ll have with every git clone in your downloads directory=
.</div><div><br></div><div>I really do recommend you don&#39;t put DL_DIR i=
nside a git repository, and share it between multiple clients some other wa=
y.</div>

<div><br></div><div>Ross</div></div></div></div>

--001a1133aa00f24d9a04e47283b8--
