Return-Path: <lpapp@archlinux.us>
Received: from mail-pb0-f44.google.com (mail-pb0-f44.google.com
	[209.85.160.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24701E00747
	for <poky@yoctoproject.org>; Wed, 21 Aug 2013 02:48:20 -0700 (PDT)
Received: by mail-pb0-f44.google.com with SMTP id xa7so217292pbc.17
	for <poky@yoctoproject.org>; Wed, 21 Aug 2013 02:48:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:sender:date:message-id:subject:from
	:to:content-type;
	bh=kIY1G6qyqEY8Ki3X4OeL/uuzPUQxW3GNmIHG4Fej6B8=;
	b=N+eJ68Z08luNyDZPt3znyarH0wXYdRynys8bHuLMpcXfpUo6l+q0iOy5I75xCjFHh4
	1WNX0RcQi4baRV+NkJObwf9Xugke2NRZ1HJ5FNQ+xx5Ax1GBiEiRNw7kfFgRuQCIhLlx
	ydX6qkwIzEh3MHOUh2kcZ0kZ6saKL1k4X5C97re3ZQYed5R+o8lLJN6pNO+V2Pm33XbX
	iWlDaxprh8KNvxtYE1EeGTOxcML+Pii9vzoXSCWxLyE0NENuNGXFZooTPZSqhifgdiEa
	AoqcAYQTYHLXedimxnDudcFGsd9HnxCj/H/aCa5Lo6qtqBQub00CwmZHx7PKrPJ1kYTS
	7YJg==
X-Gm-Message-State: ALoCoQm8w8vsR34JC1lE8Z6iu6zCzzBe3h5dz+KKvY1EJL6VCAu6Nw1AT106rsF1hxFPc5blbFfN
MIME-Version: 1.0
X-Received: by 10.68.59.98 with SMTP id y2mr6716145pbq.135.1377078499866; Wed,
	21 Aug 2013 02:48:19 -0700 (PDT)
Sender: lpapp@archlinux.us
Received: by 10.70.57.234 with HTTP; Wed, 21 Aug 2013 02:48:19 -0700 (PDT)
Date: Wed, 21 Aug 2013 10:48:19 +0100
X-Google-Sender-Auth: kNmgCH5ytWB5gSEb8oULfkodrSA
Message-ID: <CAOMwXhNzKFZNdbRrfc67_5swmjz_0gqJoG-=YJg0hkFpor5RMQ@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: poky@yoctoproject.org
Subject: Help with regression from denzil to dylan
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
X-List-Received-Date: Wed, 21 Aug 2013 09:48:24 -0000
Content-Type: multipart/alternative; boundary=bcaec5304f81d00c7c04e4721261

--bcaec5304f81d00c7c04e4721261
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I have had a working downloads folder checked in for denzil, but having
upgraded and built locally fine with dylan, it is not working remotely.

All I did was basically updating the packages in the downloads folder
respectively.

Any idea why it has worked with denzil, but not dylan? Not sure if it is
the only instance where it would go wrong, but at least the gtk doc stub
stuff is continuously failing with git fetch issues.

Oh, and we use git for the VCS under which the several poky variants can be
found. Is it a git tree inside the downloads folder supposed to work with
the main git repository even if the internal is just a bare clone?

Fwiw, the branches and refs folders are empty and hence I canot commit
those with git add. That might be a reason, but then it is a silly git bug?
If not, something else?

Cheers, L.

--bcaec5304f81d00c7c04e4721261
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have had a working downloads fold=
er checked in for denzil, but having upgraded and built locally fine with d=
ylan, it is not working remotely.</div><div><br></div><div>All I did was ba=
sically updating the packages in the downloads folder respectively.</div>
<div><br></div><div>Any idea why it has worked with denzil, but not dylan? =
Not sure if it is the only instance where it would go wrong, but at least t=
he gtk doc stub stuff is continuously failing with git fetch issues.</div>
<div><br></div><div>Oh, and we use git for the VCS under which the several =
poky variants can be found. Is it a git tree inside the downloads folder su=
pposed to work with the main git repository even if the internal is just a =
bare clone?</div>
<div><br></div><div>Fwiw, the branches and refs folders are empty and hence=
 I canot commit those with git add. That might be a reason, but then it is =
a silly git bug? If not, something else?</div><div><br></div><div>Cheers, L=
.</div>
</div>

--bcaec5304f81d00c7c04e4721261--
