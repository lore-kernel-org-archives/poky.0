Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6429EE011C5
	for <poky@yoctoproject.org>; Wed,  9 Oct 2013 13:48:39 -0700 (PDT)
Received: by mail-ie0-f171.google.com with SMTP id at1so3072331iec.2
	for <poky@yoctoproject.org>; Wed, 09 Oct 2013 13:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=2FZihvjnHOYs3dQ/0Ry+3vh5w4OPKr9joAUEh/n2OAo=;
	b=Hgn7i4bnJ7RTx29UjyVs1tDxbt6a39YRB4cGV2Vd2G50FMhPOcAAUHVIY7VfYUJ1A0
	IISog9hrHTaqSixNix1OAlxiL6bG0IxkuYdUgrtR+u3dM/gQ6p/wKYsZkiBnLttvD0Cp
	aF6NLkgtkwusHxDqkkeRdKp9hEsXFDT22m2/J4AL/6fhmAdiExu4nhBIJBWVhkGz37I0
	LADa71e6H1sE4CIIRGgLBt/XMeuVJGczIPPE+35QUbDdLeznSGGjVQDQHrWQhePtqcKJ
	cJQdKGeaV0G9JbhK0eQ58WiZXEaaJlFp7i8zL/NZG6KW/x9aBd6H6GdkkQ4ySJIB2MHb
	zY9w==
X-Received: by 10.50.26.36 with SMTP id i4mr3613943igg.33.1381351718873; Wed,
	09 Oct 2013 13:48:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.5.225 with HTTP; Wed, 9 Oct 2013 13:48:08 -0700 (PDT)
In-Reply-To: <7BDD69127112414F90CF3FED4711BF150D15A47D1C@IAD2MBX05.mex02.mlsrvr.com>
References: <7BDD69127112414F90CF3FED4711BF150D15A47D1C@IAD2MBX05.mex02.mlsrvr.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 9 Oct 2013 13:48:08 -0700
Message-ID: <CAMKF1spfOH+voFxwAx-q8sms6ZBbSYL0wvHTJjH61J-Xs_Pu9g@mail.gmail.com>
To: Michael Davis <mdavis@planetaryresources.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Zeromq recipe
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
X-List-Received-Date: Wed, 09 Oct 2013 20:48:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 9, 2013 at 1:20 PM, Michael Davis
<mdavis@planetaryresources.com> wrote:
> Hi there,  I would like to cross-compile zeromq-3.2.3 source
> (http://download.zeromq.org/) into my poky build for zynq zx3.  I figured
> that the best way would be to create a new layer with a bb recipe that ca=
n
> find the source.  I am trying to use something like this recipe:
> https://github.com/openembedded/openembedded/blob/b8e90091aca8777092aa410=
fbfbb5c5d8cc7cbcb/recipes/zeromq/zeromq_2.1.6.bb
>
>


see my python3 series posted here

http://git.openembedded.org/openembedded-core-contrib/log/?h=3Dkraj/python3
and I believe you will find zeromq recipes there if not then search oe-core=
 ml
if still not I can post it again.


>
> I=E2=80=99ve created a new layer with a .bb file like this and a simple l=
ayer.conf
> to find it.  I=E2=80=99ve also added the layer to bblayers.conf.  Poky do=
esn=E2=80=99t seem
> to want to build the source though.  It recognizes the layer and parses t=
he
> bb file but never builds the package or integrates it to my ramdisk image=
.
> This is my first try at making a bb recipe, so perhaps I am just missing
> something important.  Should I be specifying compile and install steps ot=
her
> than the default steps?  Any info on creating layers and recipes would be
> greatly appreciated.  Thank you!
>
>
>
> -Mike
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

