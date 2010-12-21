Return-Path: <raj.khem@gmail.com>
Received: from mail-gx0-f169.google.com (mail-gx0-f169.google.com
	[209.85.161.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id 770E24C80039
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 10:55:26 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gxk5 with SMTP id 5so2188455gxk.28
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 08:55:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:received:in-reply-to
	:references:from:date:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=ghUKEyzlO1dfXuE6RZJdEKQOzm4heDYannIlibpJ0fQ=;
	b=OVKruI98evlbE5kJAudPpAdlKQS98B+vdx5at2MpFeP93hvNlEF6Z2vFOPz1iulvSM
	wtIWgqbxgNhfdSQBYgYABBnbqfRNTfQTXaC8SdgsAlag+qXc0qRrZNoBlu2qQxdsB6Jk
	iYUQG232+5ygl5fvi6N+4pR4FSsXU2iPdXejU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	b=KB8VC1hFQuBTMe07dzRvdGZqQ+kSmvUXGI1c6ABMOnFfnQAiFUmNkO2MnMZPgKwbag
	PFH4OJPyQumm729yYYiozwVhNyzHKgEMcmGc6sv/E0GP95w0IZSwOyteRuJFEWNplnsm
	rTbAIJ9OJxpsI6eupnfyhYioMuiNrBSXxBpZ4=
Received: by 10.90.120.17 with SMTP id s17mr7206195agc.193.1292950525955; Tue,
	21 Dec 2010 08:55:25 -0800 (PST)
MIME-Version: 1.0
Received: by 10.90.86.4 with HTTP; Tue, 21 Dec 2010 08:55:05 -0800 (PST)
In-Reply-To: <20101221151305.4C9E1126EB19@gemini.denx.de>
References: <cover.1292920700.git.raj.khem@gmail.com>
	<20101221151305.4C9E1126EB19@gemini.denx.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 21 Dec 2010 08:55:05 -0800
Message-ID: <AANLkTikE3+s+WV8PYhPA0Z+T4kzquR6cb_uQf=e-ECNr@mail.gmail.com>
To: Wolfgang Denk <wd@denx.de>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] gcc 4.5.4 + linaro update
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
X-List-Received-Date: Tue, 21 Dec 2010 16:55:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 21, 2010 at 7:13 AM, Wolfgang Denk <wd@denx.de> wrote:
> Dear Khem Raj,
>
> In message <cover.1292920700.git.raj.khem@gmail.com> you wrote:
>>
>> This branch brings in gcc 4.5.2 and on top linaro's enhancements to gcc =
4.5
>> I have made sure that it builds poky-image-minimal for arm, ppc, x86, mi=
ps
>> qemu and boots on all of them. It did not boot on ppc however poky-qemu
>> did not boot any images for me even the ones built without these enhance=
ments
>> i.e. on vanilla yocto. So I used a qemu 0.12.5 built with OE
>> which worked well. I need help in testing it out. So please test these p=
atches rigourously
>> with standard testing setup you use before you pull them
>>
>> If there are issues found let me know
>
> The 4.5.4 in the subject is just a typo?

yes it is.

>
> If I apply your patches on top of current head, I see a failure like
> this:
>
> ERROR: Task failed: Unknown fetch Error: local variable 'md5data' referen=
ced before assignment
> NOTE: package gcc-cross-initial-4.5.2-r0: task do_fetch: Failed
>

hmm interesting. I did not see this error. But anyway wait for the V2
of the patchset
>
> Best regards,
>
> Wolfgang Denk
>
> --
> DENX Software Engineering GmbH, =C2=A0 =C2=A0 MD: Wolfgang Denk & Detlev =
Zundel
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
> C++ was an interesting and valuable experiment, but we've learned its
> lessons and it's time to move on.
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0- Peter Curran in <DCqM4z.BxB@isgtec.com>
>

