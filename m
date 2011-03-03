Return-Path: <kubera.samrat@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 811174C80050
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 00:08:09 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwi18 with SMTP id 18so909261wwi.11
	for <poky@yoctoproject.org>; Wed, 02 Mar 2011 22:08:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=Jzth7OUW8RfuJUWvwGobH7nw2RsyKEUAMnkmcu74fas=;
	b=mNgDjRSvTdnumATecWsW8pXNpqeUdjG1D+bEnxiXFl8iKNl9G4CH4cNS1W/MsArINr
	19H7V6SJUU4+qeYoi6Wxl8qsVUMhJST0DmetxWRscuotGAEJh+mUKTt6cdZObPGIPMGx
	4a2hlcAp77flv9UOzQQeBkW+60OZ0X0CwJuqg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=nsWLXhX/MIOShWF29aXPvXumuqn4fNDEQJdNJHXrF3tNZ75i+KnIKW33cQsu4lMnJq
	Koh4JrK0zTu7Bvwkl2Vo7+/7tWU86MNoCaqaoFlHo5vHp+9tVyroZLr7u8AsCUaez3bC
	uWMdXy1UyWXjt9uMoCCk2iWfQXLSA0FqUdl10=
MIME-Version: 1.0
Received: by 10.216.160.1 with SMTP id t1mr229872wek.2.1299132488000; Wed, 02
	Mar 2011 22:08:08 -0800 (PST)
Received: by 10.216.69.83 with HTTP; Wed, 2 Mar 2011 22:08:07 -0800 (PST)
In-Reply-To: <20110303054749.GA3081@sakrah.homelinux.org>
References: <AANLkTi=XgciNC_9dy3zocW8GzBj6sbg5RjfbJe-OuhJM@mail.gmail.com>
	<1865303E0DED764181A9D882DEF65FB6866D365FBA@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=YH3OH89E8viucBekQcSxvM0ZAyNcCnfFottwB@mail.gmail.com>
	<20110303054749.GA3081@sakrah.homelinux.org>
Date: Thu, 3 Mar 2011 11:38:07 +0530
Message-ID: <AANLkTi=yAJnwDkncFtV6Wm861pkj2BC=rVT-9GmqXHtc@mail.gmail.com>
From: kubera samrat <kubera.samrat@gmail.com>
To: kubera samrat <kubera.samrat@gmail.com>, "Cui,
	Dexuan" <dexuan.cui@intel.com>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Reg:problem while Adding libgcc_s
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
X-List-Received-Date: Thu, 03 Mar 2011 06:08:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

hi Khem Raj,
             Thank you. problem is solved.

On Thu, Mar 3, 2011 at 11:17 AM, Khem Raj <raj.khem@gmail.com> wrote:
> On (03/03/11 11:05), kubera samrat wrote:
>> Hi Dexuan,
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 I have pulled in gcc into poky(using
>> meta/recipes-devtools/gcc/libgcc_4.5.1.bb). But I couldn't find
>> libgcc_s.so in target image. Do I have to change any configure options
>> to get gcc_s ?
>> or else suggest me approproate solution
>
> by pulling into poky what exactly do you mean ?
> target is populated with packages that appear in depends of
> image you are building. So if you build a package that may
> not appear in your image by default unless its pulled in
> through some indirect/direct dependency on image.
>
> --
> -Khem
>



--=20
V kubera Samrat

