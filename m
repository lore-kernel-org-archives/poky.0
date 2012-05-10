Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E09F6E0044A
	for <poky@yoctoproject.org>; Thu, 10 May 2012 09:31:08 -0700 (PDT)
Received: by eekb45 with SMTP id b45so806879eek.35
	for <poky@yoctoproject.org>; Thu, 10 May 2012 09:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=5bibmFISlwbF+PBtICU1b6q8AUMmBSH/i95wNUejfXw=;
	b=jzP2GqflR0u5d8MvxrcecSneArKwVcvvdIJcg99Li4Lm0ziDnNWPH8K3TojgY/O0oc
	bMrL4qZfShz7PPM6kXkWKkn8CE4FGLDEvdyMRew/nGPF0HOTX/J78crTC8cY9RFByrCS
	MmbJlmCSUlMMVl3cLT0yK0wrcb0jleCstXKGybVynEp1z2kXiWJu7sKND0OzedNVe/KP
	/tX+KW7AEmaDbRJKdt6J9hvLEuhnuLdaeOeJ2YTg1H4ajpD0AAAxQuotRgxyxRnikIzH
	kTBPYbCSUR+3lYtXw76pyIwgk/R+GjadG++Esk+EGLmXtWvlEWMvW0LYG5gYQBE/jhEh
	PZ9A==
Received: by 10.213.20.200 with SMTP id g8mr1585318ebb.103.1336667467930; Thu,
	10 May 2012 09:31:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.132 with HTTP; Thu, 10 May 2012 09:30:37 -0700 (PDT)
In-Reply-To: <4FABEA1B.4050901@mlbassoc.com>
References: <4FABD070.9090100@mlbassoc.com>
	<CAMKF1soadVR07jQ_QGBjkc0=UAvCrTHFPu2V3hxf_dNXg4vmEw@mail.gmail.com>
	<4FABEA1B.4050901@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 10 May 2012 09:30:37 -0700
Message-ID: <CAMKF1sqUt4QrNh9ff0ZERDCttdUSams-wUcOR4e4hDs+7z-Txw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Bad ARM code with GCC 4.7.1
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
X-List-Received-Date: Thu, 10 May 2012 16:31:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, May 10, 2012 at 9:17 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>
> My board is DM3730, much like a BeagleBoard
> =C2=A0ARM architecture: armv7a
> =C2=A0Linux kernel 3.0

hmmm that should be able to handle alignment faults in hardware

>
>
>>
>> gcc generate unaligned accesses by default
>>
>> Does adding -mno-unaligned-access to cflags help ?
>
>
> I'll check.

Its not entirely clear whats going on so post the complete function disasse=
mbly
so further context can be seen as well.

