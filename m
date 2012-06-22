Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68160E006D9
	for <poky@yoctoproject.org>; Fri, 22 Jun 2012 07:25:40 -0700 (PDT)
Received: by eekb45 with SMTP id b45so791327eek.35
	for <poky@yoctoproject.org>; Fri, 22 Jun 2012 07:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=3XFPOFJqMglCGrlNLSOQ8IuuQk2zanpW3764dyufZBE=;
	b=VFj9a8ff48vGbxR9WbGTwAXaXTqOhGdoS6tOgFFHnOBrlN9Ycf6B2H4KYAtsbHhwYT
	KWnx6/lm/LsxvdtQzRn0xsh8vLDbe1DEsZtyuZvNpSC+WeFTCcq7vRi8anhTMSGqF91B
	Gx+Yvmme3IsvzgSL/pS4niW+m7TQVtaN38EIWNeVHAepj7zBr/4aWfP0YqRUiGp2xCkU
	utxcz7A0rnL3EPBJ9wmBaUhcMLtX3N15FZWNwSAYhuNxVfgaYmbF6biJ91+1dS5TC2eg
	4jSNPLYIcaCqfEebaqGTTav9fedyubpiRKCL9UVMlX0kXoLP9TFaBGlAFk1ZeYK4hRRq
	PIHw==
Received: by 10.14.37.206 with SMTP id y54mr498843eea.218.1340375139016; Fri,
	22 Jun 2012 07:25:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Fri, 22 Jun 2012 07:25:08 -0700 (PDT)
In-Reply-To: <4FE45BE3.3090200@mlbassoc.com>
References: <4FE220B8.2080903@mlbassoc.com>
	<CAMKF1so1L3GNuELFb4stPPORTwN29vOLngJM_x_9BrV7_jMaiQ@mail.gmail.com>
	<4FE253E8.7090901@mlbassoc.com> <3380572.szjuG0GuWa@helios>
	<4FE45BE3.3090200@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 22 Jun 2012 07:25:08 -0700
Message-ID: <CAMKF1spwDas33mEkGEsmjzC323MXMT_0L6_Dq=NuJH=5a0_jjQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, poky@yoctoproject.org
Subject: Re: New warning
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
X-List-Received-Date: Fri, 22 Jun 2012 14:25:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 22, 2012 at 4:49 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>
>
> It gets more complicated as my kernel recipe (in meta-MYDISTRO) reference=
s
> files like
> =C2=A0SRC_URI +=3D "file://${MACHINE}.patch"
> I don't see any way to define a dummy version of this.
>
> Is this clear now? =C2=A0Any ideas how to clean it up?

well you should be fine if file://${MACHINE}.patch is available for
every machine you build.

You can also call it same name e.g. platform.patch and then put
platform.patch in files/<MACHINE>/ directory


But If I were you I would put these patches in a bbappend in same
layer where they come from

