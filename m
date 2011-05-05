Return-Path: <kergoth@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 517E44C80097
	for <poky@yoctoproject.org>; Thu,  5 May 2011 11:38:23 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vxa37 with SMTP id 37so3955262vxa.35
	for <poky@yoctoproject.org>; Thu, 05 May 2011 09:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=mnvgfF5VCBqrMhkj8tbCeLS6GGFbT33QkPIzEbZpgRQ=;
	b=ZJzdMoOg5IcHThGV1wetBNEFJLykqHChBD0tkWn47TXsd/lr90awktQEAnVYCuswx8
	O9ppdXaYFyvjdXopQ+HS7Lvw4jfu3nQvMaIFZDA+mzK9kA7UC7K5QMPFB6chnpP54aN0
	nnxvrQxRMnk+1mHntR2dDRCn6wUxQwg1tvI7g=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	b=XE4pDk7mmbxu7GHVNeUcNVXFQcEFSr2l5SXD8FFqTS7xt+lhivX5+AkngqT/tY0yy5
	raluuQCGvKHOJXH6m7W8sKY7qvhb5iAYoPbDSfeZi+oezuW2VVBQ2R8bIF0z/Jjq8r7T
	ve3faq4a8WL/fu9S1mv97TJtMivy+edTYJKBA=
Received: by 10.52.112.66 with SMTP id io2mr550009vdb.141.1304613497127; Thu,
	05 May 2011 09:38:17 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.52.186.170 with HTTP; Thu, 5 May 2011 09:37:57 -0700 (PDT)
In-Reply-To: <4DC2D0D6.2030709@mlbassoc.com>
References: <4DC16EFA.4070003@mlbassoc.com> <4DC2D0D6.2030709@mlbassoc.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 5 May 2011 09:37:57 -0700
X-Google-Sender-Auth: N1dnCpEArUjgrLT08ZGC80I3sxU
Message-ID: <BANLkTinkE=5h2KfgOjSobuyU2KQgHH+iPA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Debugging overrides
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
X-List-Received-Date: Thu, 05 May 2011 16:38:23 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, May 5, 2011 at 9:31 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>> My .bbappend file (identical in both trees) looks like this:
>>
>>
>> ------------------------------------------------------------------------=
-----------
>> THISDIR :=3D "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
>> FILESPATH =3D. "${@base_set_filespath(["${THISDIR}/${PN}-${PV}"], d)}:"
>> PACKAGE_ARCH =3D "${MACHINE_ARCH}"
>>
>> ------------------------------------------------------------------------=
-----------
>>
>> I've traced through this with -DDD and on one target, I can see the
>> fetcher finding the files in my layer. On a different target, it only
>> finds the files in the main meta/recipes-core/netbase tree
>>
>> Any suggestions on where I look to understand what's going on?
>
> 'strace' is my friend :-) =C2=A0It turns out that I had some layering
> problems which caused the wrong packages/netbase tree to be searched.
> I ran strace on 'bitbake netbase' and was able to see the erroneous
> file/path searches which pointed out my problem.

Okay, what sort of layer tooling would have helped you identify this
problem without strace? :)
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

