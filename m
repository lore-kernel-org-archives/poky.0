Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1D72B4C80A74
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 03:23:23 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn7 with SMTP id 7so922020iwn.35
	for <poky@yoctoproject.org>; Tue, 07 Dec 2010 01:23:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=FBq2DgpKpxCK97zfvFJ4BCKWWwmc8vT3MZHK5KFPf/U=;
	b=S0a9L/t8hFevOeIL/RvI7WXm86ygZf1KJwi664TA45qMc3/IpcDyeTI6FQAuJQiNyz
	L6nsCotO8vYJnR+hnqHn7iT75BVXN2JcGNFxiwC5+RCSpuG//GMuCQ3wLwzS5JpvNtP6
	Ijp3A7QBRpWlPdtcQFKRuDDJ4Ng9lJrfOzKqo=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=ATN7jPLnoI/s5tX22H9px5WP0FxSPRoas1XhZzL0PhGaDow3f8vQiXYs4ZhMDtRRpz
	FUhaRnnHN1HWXexXAQ6fbErgld3ljKmBF7H970Pt9F6RzDviOoAjO1eUOIbqDmAorG7+
	5eAbA7l+vgUxrdtrrMfE+Mv0wDBDM17CcdxFU=
MIME-Version: 1.0
Received: by 10.231.191.4 with SMTP id dk4mr7319652ibb.82.1291713802812; Tue,
	07 Dec 2010 01:23:22 -0800 (PST)
Received: by 10.231.200.140 with HTTP; Tue, 7 Dec 2010 01:23:22 -0800 (PST)
In-Reply-To: <4CFD9E17.5070209@intel.com>
References: <AANLkTi==kWiyOrmeUeUVNeC8FT0B8XxruHA0X4qMaPs_@mail.gmail.com>
	<4CFD68A2.20408@intel.com> <20101206225236.GD29253@denix.org>
	<4CFD9E17.5070209@intel.com>
Date: Tue, 7 Dec 2010 10:23:22 +0100
Message-ID: <AANLkTikHxJ=4iWnx=-afTjj8Y6=qca2jv5y7yovqzAMe@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Saul Wold <saul.wold@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>
Subject: Re: [oe] libcdaudio license issue
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
X-List-Received-Date: Tue, 07 Dec 2010 09:23:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Replying to 3 replies in this one


2010/12/7 Saul Wold <saul.wold@intel.com>:
> On 12/06/2010 02:52 PM, Denys Dmytriyenko wrote:
>>
>> On Mon, Dec 06, 2010 at 02:50:10PM -0800, Saul Wold wrote:
>>>
>>> On 12/06/2010 11:48 AM, Frans Meulenbroeks wrote:
>>>>
>>>> I was checking libcdaudio for LICENSE info.
>>>> recipe says GPL
>>>> COPYING file is the GPLv2 one
>>>> README file says:
>>>>
>>>> libcdaudio is distributed under the GNU Library General Public
>>>> License, included in this package under the top level source directory
>>>> in the file COPYING
>>>>
>>>> C files also mention LGPL. but say v2 or later
>>>>
>>>> What to do with this in the LICENSE field? LGPLv2+ ?
>>>>
>>> This seems reasonable, you should also include the header chunk in the
>>> LIC_FILES_CHKSUM, you can specify start and end lines for the checksum.

Yes, I'm aware of this. Would you want to add all the header chunks
that state this, or only e.g. the most important one (assuming such a
file can be identified)
I've seen the text in different files.

Also is poky planning to take this recipe? If not, it is kind-a
pointless for me to update it, so I'd rather waste time on something
else :-)
>>
>> Saul,
>>
>> We don't have this feature in OpenEmbedded yet... But it would be nice t=
o
>> port
>> it from Poky though! :)

Note that adding/using  LIC_FILES_CHKSUM in OE should be harmless as
it is a var, which is not used.
So if we wnat to move into that dir we might consider keeping the
field in the OE recipes (currently for libaudio it is not there)
>>
> Denys, sorry I saw this via my poky email and did not notice it was OE al=
so,
> I will what what I cross post next time!

The recipe is also in OE and of course suffers from the same issue.
That's why I posted to both lists.
>
> Glad to hear that you like the idea! =A0We will have all Poky recipes
> checksummed this week!

Cool!

Frans

