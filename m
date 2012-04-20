Return-Path: <gizero@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BC31E0070C
	for <poky@yoctoproject.org>; Fri, 20 Apr 2012 09:01:55 -0700 (PDT)
Received: by qam2 with SMTP id 2so504909qam.14
	for <poky@yoctoproject.org>; Fri, 20 Apr 2012 09:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=YV+AkCLW9oEVKg4VCNth3/zfE7Cykzc8WDq9OKSN4S0=;
	b=tU9/s+iuMIjzvrryf6zUu/c9nO4SJ/IiIfJA8NRWTPCrWwPorvmeyXhr6yCN19GAOL
	ci2XMrGiZ1Jt7DHgstIm+Q9NqBojtGQbhlwlUQZddNLJfcytvvH5ZE2qDoHCEi9Vq/ye
	OhHrqRQ/2P6CzPgnH2FXmQQP10vTn4IwsTCsPdmClJBtl/l/vR4NJLwVl7bn/oLVzjAv
	ILbelS7ouH4zyUP1GQxILZVZFxn3vLutHFJhosNDUmewqr2Q0opxYt577PKb19e9GR39
	JxBP6AkMt7YJQpWpqmEGQmNrGnbMzFJ2odYXZ+aXt3dYnwo//bOXssS2MC7dapmUCJrG
	eqQA==
MIME-Version: 1.0
Received: by 10.229.136.69 with SMTP id q5mr2284680qct.88.1334937714909; Fri,
	20 Apr 2012 09:01:54 -0700 (PDT)
Received: by 10.229.225.202 with HTTP; Fri, 20 Apr 2012 09:01:54 -0700 (PDT)
In-Reply-To: <1856275.4JdY7aZveN@helios>
References: <4F5B73E6.9040908@mlbassoc.com>
	<1856275.4JdY7aZveN@helios>
Date: Fri, 20 Apr 2012 18:01:54 +0200
Message-ID: <CAC+thW26psx39QTFBUqXexPkxao8hk_D_nmrMhOis5+0Gdo3YQ@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: Poky doesn't play nice with meta-oe
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
X-List-Received-Date: Fri, 20 Apr 2012 16:01:55 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi! I'm resurrecting this thread because it's becoming somewhat
interesting for me.

On Thu, Mar 15, 2012 at 4:24 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Saturday 10 March 2012 08:31:50 Gary Thomas wrote:
>> I wanted to do some experimenting with midori (a webkit based
>> browser that is [arguably] better than web2) in my familiar Poky
>> environment.
>>...
>> * Rebuild core-image-sato
>> =A0 =A0Lots of packages get rebuilt, down to GCC which has been updated
>> =A0 =A0to r27 from r22. =A0I thought the poky meta "core" was tracking m=
eta-oe
>> =A0 =A0and openembedded-core more closely than this.
>
> I agree, this is not particularly desirable. We've discussed this in the =
OE
> TSC and the agreement was that the toolchain bits currently in the meta-o=
e
> layer itself will be moved out to a separate layer.
>
>> Image will boot, but most things are broken, no X, no network, ...
>
> That's not good :(
>
>> It looks like the evil systemd has pervaded meta-oe (which IMO should
>> be at least a DISTRO decision).
>
> I agree, but there are others who think it should be switchable on a per-=
image
> basis. I don't think it's going to be long before that's impossible howev=
er.
>
>> I guess the only way I'll be able to test this in Poky, if at all,
>> will be to only import the midori recipes and its dependencies, which
>> there seem to be many.
>
> That's not an unreasonable approach for now. However we do really want to=
 tidy
> up meta-oe such that it doesn't do surprising things when you enable it.
> Hopefully we will get a chance to make progress on this over the next few
> months.

Before starting to mess up things I'm asking if there is any relevant
improvement on this side? I need a few recipes that are in meta-oe but
not in poky/yocto (python-twisted, gpsd and a few more). Enabling
meta-oe over my current edison environment would be nice to avoid
manually importing those recipes with dependencies. Maybe master
branch and upcoming 1.2 are expected to work better on this side?

