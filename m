Return-Path: <cgwalters@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id A40304C80A71
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 08:58:10 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwd20 with SMTP id 20so3218432wwd.11
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 06:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=RSOAKrElX1XXtsW+cGPGck1TjwjCxvhSwVfTFB7VzIo=;
	b=E0G8lxhaGg6jJGAMYXQGfUO4oR5YzK+aNhjaHYYDLqjgL+nFsJ15Ees11Uhew8E8S2
	VkC9Debq/G3/0gac64n36+CxGwKyjYbW86IC6YldjnZl6QG8GwWva//rJzRVp8Z2j8yE
	ylJwN0B90p3JoIRj9aVX46dSXVchncK44cbuI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	b=gmBB1wEQS5EcrNJV3YDx6v3qhzZJyg2vPwTRwYzuPjh1fBTc3BVnMvGoEm8YmCxKCE
	qTXKu6AAfm1+zEek1ezwMzK+luXgyImIf0zQ0vxaNSYFKLLgaDrGjRjhrflxcQRhQ/1z
	lweF0g7tHAmhKaO22irriTyX3ntroQDn1iD/Y=
MIME-Version: 1.0
Received: by 10.216.145.130 with SMTP id p2mr7952878wej.58.1302875889729; Fri,
	15 Apr 2011 06:58:09 -0700 (PDT)
Sender: cgwalters@gmail.com
Received: by 10.216.254.42 with HTTP; Fri, 15 Apr 2011 06:58:09 -0700 (PDT)
In-Reply-To: <DE8BA75F34A0404282AC5E15F691BC765118FAE8@orsmsx504.amr.corp.intel.com>
References: <BANLkTik2tXVqLPZUf9kf7WW6hrNpVbFWEQ@mail.gmail.com>
	<DE8BA75F34A0404282AC5E15F691BC765118FAE8@orsmsx504.amr.corp.intel.com>
Date: Fri, 15 Apr 2011 09:58:09 -0400
X-Google-Sender-Auth: buCekHbRXnj8LR-XsYYbEs3Fsbg
Message-ID: <BANLkTinj1RmuowBwU-q4KqWxico6jyJmUg@mail.gmail.com>
From: Colin Walters <walters@verbum.org>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Cc: poky <poky@yoctoproject.org>
Subject: Re: [patch] yocto-project-qs.xml: Add a title
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 15 Apr 2011 13:58:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 15, 2011 at 9:55 AM, Rifenbark, Scott M
<scott.m.rifenbark@intel.com> wrote:
> Hi Colin,
>
> The Quick Start has a different format than the other Yocto Project manua=
ls. =C2=A0Namely, there is no title page or large title. =C2=A0We did this =
purpose. =C2=A0In order to accomplish it within our manual generation schem=
e I had to hack the DocBook code a bit, which is why the '<title></title>' =
lame code appears. =C2=A0I can't really offer anything but an explanation a=
t this point for the way the front matter of the Quick Start is designed.

Oh, hm, can't say I understand exactly, but - can we do a quick hack
to fixup the HTML after it's generated then?

