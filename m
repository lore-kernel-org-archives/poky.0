Return-Path: <gizero@gmail.com>
Received: from mail-qa0-f47.google.com (mail-qa0-f47.google.com
	[209.85.216.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5FF0E006C7
	for <poky@yoctoproject.org>; Fri, 20 Apr 2012 10:15:40 -0700 (PDT)
Received: by qabg1 with SMTP id g1so724451qab.13
	for <poky@yoctoproject.org>; Fri, 20 Apr 2012 10:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=XRUloIg+GLLtTlvu5XKwhm7N1eCYrznJunBN1rDLQwI=;
	b=h3P/4VQOoyJntHkDF/2daEiB8Ii8ZFIf4H69BpoSBtLD3RTBHtYeWSHIyK6wMj+ojK
	eEgCf9iyTb4NZGKy/fhF46OplwO4NQrcf9QN1PXdcDGYc82xf0fstaPsHCkvWj2/r43u
	OgfIkTMmV2ZO/tqgpHQfS08GOq2upPj+18b9BBt2iyvIig1aO1xokvxS9QszRD5oraKx
	06vz/eZOUkwh5EfZYw7yPH0NguFulyyOBUY2heqdNQ6/YqXL9VRXEvjetH+DzSPoRWyS
	XIvcQ2fV4h5DyqnTZg5H+tZV+uUyjwA3eCqJp0NYBTzH3szOhubi05Ah3SGVxBFwCdEY
	aIeg==
MIME-Version: 1.0
Received: by 10.229.135.201 with SMTP id o9mr2195824qct.148.1334942140161;
	Fri, 20 Apr 2012 10:15:40 -0700 (PDT)
Received: by 10.229.225.202 with HTTP; Fri, 20 Apr 2012 10:15:40 -0700 (PDT)
In-Reply-To: <74169790.jigKjBi9LZ@helios>
References: <4F5B73E6.9040908@mlbassoc.com> <1856275.4JdY7aZveN@helios>
	<CAC+thW26psx39QTFBUqXexPkxao8hk_D_nmrMhOis5+0Gdo3YQ@mail.gmail.com>
	<74169790.jigKjBi9LZ@helios>
Date: Fri, 20 Apr 2012 19:15:40 +0200
Message-ID: <CAC+thW1yrn9sm0hMyrBF5N4Rw7+eSRuPw1iq54XXhv1O8GpAeA@mail.gmail.com>
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
X-List-Received-Date: Fri, 20 Apr 2012 17:15:40 -0000
Content-Type: text/plain; charset=ISO-8859-1

Paul,

On Fri, Apr 20, 2012 at 6:38 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Friday 20 April 2012 18:01:54 Andrea Galbusera wrote:
>> On Thu, Mar 15, 2012 at 4:24 PM, Paul Eggleton
>> <paul.eggleton@linux.intel.com> wrote:
>> > That's not an unreasonable approach for now. However we do really want to
>> > tidy up meta-oe such that it doesn't do surprising things when you enable
>> > it. Hopefully we will get a chance to make progress on this over the next
>> > few months.
>>
>> Before starting to mess up things I'm asking if there is any relevant
>> improvement on this side? I need a few recipes that are in meta-oe but
>> not in poky/yocto (python-twisted, gpsd and a few more). Enabling
>> meta-oe over my current edison environment would be nice to avoid
>> manually importing those recipes with dependencies. Maybe master
>> branch and upcoming 1.2 are expected to work better on this side?
>
> No major progress as yet, I've been busy with things leading up to the 1.2
> release; however once that's out the door there should be more time available
> for improving meta-oe.

Thank you for updating on this. I'm looking forward to hopefully see
progress in this area in the future. For the time being, I'll go on
manually importing those recipes. By the way, one of them
(python-twisted) is triggering some problems when RDEPENDing on it: I
have to figure out if they are yocto specific or not. If not, I'll
report to meta-oe people.

