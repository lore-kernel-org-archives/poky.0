Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85CAFE00A13
	for <poky@yoctoproject.org>; Mon, 28 Apr 2014 08:02:56 -0700 (PDT)
Received: by mail-ie0-f172.google.com with SMTP id at1so3290512iec.3
	for <poky@yoctoproject.org>; Mon, 28 Apr 2014 08:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=MZmRnSEMh5yvWJUS9L7hih7pumV96bzCk4nB++CRlqc=;
	b=jMkFm4hIlJcyK9zxH+9I0UmZ9Xsoc2fgJDwXGyfHXI6iz2JtcxBMEggvm/glqIYN6B
	w/KPGUpSKZuISkiDBXySr6bfkf4S6wXCJ78BsteXQy73m8rgC/Bvppv4tZJsf1q14tny
	QNXXZZU72G/STe5jJv50EWouZnJnrylejs9Vfza8k4s5eEyWk9/7jchgyRsZCS6G7A8s
	wqQTeeT7K3PBxvN4fQAvw1OLdPtoPmE4F1SMZ308oeq0EwMhk5rJuGW4z9sUP+EQdEPe
	lcripLh3ws1B8V3MwHag9IQLIM7r0vbgwwozQdVEDgi5KufkDOT4eIL8jWwT4hFwfg2P
	jZjg==
X-Received: by 10.50.49.109 with SMTP id t13mr24888790ign.2.1398697375478;
	Mon, 28 Apr 2014 08:02:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.229.14 with HTTP; Mon, 28 Apr 2014 08:02:25 -0700 (PDT)
In-Reply-To: <CAAEo+ZoJ8wXt8y=XPVdA6bdpCYmUk1uYUMz4T+2NoFQakPAdfg@mail.gmail.com>
References: <CAAEo+ZrTKqkFUxcaP4BU+hcg-9RZsFHnZs3PLA54zwdeh99W-w@mail.gmail.com>
	<CAAEo+ZoJ8wXt8y=XPVdA6bdpCYmUk1uYUMz4T+2NoFQakPAdfg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 28 Apr 2014 08:02:25 -0700
Message-ID: <CAMKF1sp=-866sRWqbFxeseY_edghG4tZ9CsLjka=j0C=y5WQjA@mail.gmail.com>
To: jigar chokshi <jigar.chokshi89@gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: oe_runconf failed
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
X-List-Received-Date: Mon, 28 Apr 2014 15:02:56 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Apr 28, 2014 at 12:57 AM, jigar chokshi
<jigar.chokshi89@gmail.com> wrote:
> arm-poky-linux-gnueabi-gcc: error: unrecognized command line option '-V'
> arm-poky-linux-gnueabi-gcc: fatal error: no input files
> compilation terminated.
>
> arm-poky-linux-gnueabi-gcc: error: unrecognized command line option
> '-qversion'
> arm-poky-linux-gnueabi-gcc: fatal error: no input files
> compilation terminated.
>
> I don't know where am i wrong?

paste the contents of config.log somewhere

