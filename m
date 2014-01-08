Return-Path: <ross.burton@intel.com>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EADFE007D2
	for <poky@yoctoproject.org>; Wed,  8 Jan 2014 11:47:07 -0800 (PST)
Received: by mail-qa0-f41.google.com with SMTP id w5so2192632qac.14
	for <poky@yoctoproject.org>; Wed, 08 Jan 2014 11:47:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=rlDFxMLR2Z+7//COa8skB+vKEL4wEA8WKj2fVvldMYo=;
	b=KW+pE1AL4Yq3lqZTgN+Fb92WGo6Xg2xkXxlRWvK75MFwi7fnl0ZfFtHo5DmNMis6+1
	eoCoAJvS9O9AMih+l2jj9v8vzt9v29mH8yEcJUzjB7hOAaMCjku55+KG/lJCgh8/y6C9
	7fvSc7xV1xr8LN9BA38x0IyKtvLalcLnOPA65bmEfgH/SGfYWbtrBp2ZyCRYI0saXnUd
	qP7/c1CQLOB9bkx3h0YEbIaayAoddOg5UcfMlfu+BPBiQa2vli2aUnZK/Dxsu0c7K6d7
	PjwctvnD1SXr19aFbPtJSu7GYPZFQ3pXCMhSND5NG/CrKR8Rd0IUlvoDguV6AKwUUeXz
	ObhA==
X-Gm-Message-State: ALoCoQniDW/rzpgg2n794guOPntxXubgxzFw5qjD4u3pXOq4tAFut88/eOF8BGO4vVAR+g1+4eha
X-Received: by 10.229.65.130 with SMTP id j2mr203597622qci.6.1389210427210;
	Wed, 08 Jan 2014 11:47:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.96.179.105 with HTTP; Wed, 8 Jan 2014 11:46:47 -0800 (PST)
In-Reply-To: <52CD9C72.20309@balister.org>
References: <CAJTo0LZsBfxGm=OJPa++egDjL6L0ZABMebTtTr_Bmw_TdQrohg@mail.gmail.com>
	<52B8DECA.6060704@balister.org>
	<CAJTo0LaEgLWZHk34e-_-+z69Zw3J+S1zGFFJAONjfYBDQ1TehQ@mail.gmail.com>
	<1389200502.6899.112.camel@ted> <52CD9C72.20309@balister.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 8 Jan 2014 19:46:47 +0000
Message-ID: <CAJTo0La6b=X6=D9y0StTCxgE=4rJ+FR9bhiBL4TUyKi2By1YVg@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: OE-devel <openembedded-devel@lists.openembedded.org>,
	Poky Project <poky@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Piglit in Poky
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
X-List-Received-Date: Wed, 08 Jan 2014 19:47:10 -0000
Content-Type: text/plain; charset=UTF-8

On 8 January 2014 18:44, Philip Balister <philip@balister.org> wrote:
> On 01/08/2014 12:01 PM, Richard Purdie wrote:
>> On Wed, 2014-01-08 at 16:09 +0000, Burton, Ross wrote:
>>> Hi,
>>>
>>> Despite a good start this thread got rapidly hijacked, so let's try again!
>>>
>>> On 24 December 2013 01:09, Philip Balister <philip@balister.org> wrote:
>>>>> 1) Move piglit and deps to oe-core.  Piglit is for QA purposes only
>>>>> and pushes the boundaries of "core platform".  In a sense this is a
>>>>> repeat of the discussion we had with Midori...  does oe-core contain
>>>>> everything needed to sufficiently exercise the core components it
>>>>> ships or not?
>>>>
>>>> I expect Richard will push back on this, and I would support him here.
>>>
>>> Probably best to let Richard speak for himself here. :)
>>
>> :)
>>
>> I have to admit I'm leaning towards pulling in the 4 recipes we need
>> since the win is we get to test the GL stacks.
>>
>> We do support graphics in the core, we also do particularly badly at
>> testing it. That is something I think we need to change. piglit lets us
>> do that and its not like it has a significant number of dependencies.
>> Having a couple more python modules to test the python stack probably
>> isn't a bad idea ether. We pruned quite a number of recipes out, this is
>> a case where we can add a small number for a significant win.
>
> Does this mean you will fix the host contamination that occurs when
> machines have atals and/or blas devel packages installed :)
>
> We should probably look carefully at the numpy recipe if we go this route,

I've looked at it enough to know I don't want to look at it anymore. ;)

Ross

