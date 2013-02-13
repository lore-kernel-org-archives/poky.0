Return-Path: <erik.boto@pelagicore.com>
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 1AF4BE006DE
	for <poky@yoctoproject.org>; Wed, 13 Feb 2013 01:34:59 -0800 (PST)
Received: by mail-ob0-f177.google.com with SMTP id wc18so1015095obb.8
	for <poky@yoctoproject.org>; Wed, 13 Feb 2013 01:34:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=WRNIUD4LO2AAURsJqj+0WnDukq1urUvl/ILF0bbi3KE=;
	b=SqhWfcUwiq7FSRBLF0+fjXsmfpTiTz3c4QFU7Vbazb/MWpJJcXPaZQAI7tDDgNOhY2
	gT1LnBaj1gffgk22y1RSMwLljGdKdWfSj3tqDcePqeNdhMyxFXyrbA6CgdiB0uj5rqd2
	j/J6MLxf/kEsTrfksMrQdT4ekqP8TX82y+LBkaejg2c2xYptdL0JLfCb8epzNfrQYAVq
	GurxxIVpCOC8q6drHrc+q+D1IcEjFvtirZ49s8LXsKjhqNzYBxL9gvvGn1DFwl5ix0CP
	4cFWt+sI/uTc+qEg9TnrzE2UcshYLrcVre0B6UMJSey5S5hqNZ1qI7YwXqj7wjPb7ZcQ
	u8Cw==
MIME-Version: 1.0
X-Received: by 10.60.22.198 with SMTP id g6mr16295318oef.45.1360748097701;
	Wed, 13 Feb 2013 01:34:57 -0800 (PST)
Received: by 10.76.113.209 with HTTP; Wed, 13 Feb 2013 01:34:57 -0800 (PST)
Date: Wed, 13 Feb 2013 10:34:57 +0100
Message-ID: <CA+AhUGwJTH0UjXZe6QpQRSKeCY5pXOYCP7Schr1jOH8MmVqZeQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Erik_Bot=F6?= <erik.boto@pelagicore.com>
To: poky@yoctoproject.org
X-Gm-Message-State: ALoCoQlUjJ1qI1dpuEPataiC6peC1OG+IQCzkcs+pcLbCcGHGY4Uw/UISNGSCPU1JtNbjn3c0ob1
Subject: Python gobject bindings and gobject-introspection
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
X-List-Received-Date: Wed, 13 Feb 2013 09:34:59 -0000
Content-Type: multipart/alternative; boundary=e89a8fb2016efe059104d597daa6

--e89a8fb2016efe059104d597daa6
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,

I'm looking at building a newer version of pygobject then what's currently
in Poky, and from what I find it seems the new recommended way is to use
gobject-introspection and the gi.repository module.

I saw that gobject-introspection was available in recipes-gnome/gnome/
before but is now removed. So I'm curious about the reasoning for removing
it? Was there any particular reason?

Best Regards,
Erik Bot=F6

--e89a8fb2016efe059104d597daa6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=A0<div><br></div><div>I&#39;m looking at building a ne=
wer version of pygobject then what&#39;s currently in Poky, and from what I=
 find it seems the new recommended way is to use gobject-introspection and =
the gi.repository module.</div>
<div><br></div><div>I saw that gobject-introspection was available in recip=
es-gnome/gnome/ before but is now removed. So I&#39;m curious about the rea=
soning for removing it? Was there any particular reason?<br clear=3D"all">
<div><br></div><div style>Best Regards,=A0</div><div style>Erik Bot=F6</div=
></div></div>

--e89a8fb2016efe059104d597daa6--
