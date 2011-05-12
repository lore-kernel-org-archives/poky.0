Return-Path: <raj.khem@gmail.com>
Received: from mail-ew0-f48.google.com (mail-ew0-f48.google.com
	[209.85.215.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id A4D324C81006
	for <poky@yoctoproject.org>; Wed, 11 May 2011 21:44:03 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ewy22 with SMTP id 22so481696ewy.35
	for <poky@yoctoproject.org>; Wed, 11 May 2011 19:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=tjpJmsD+kwybWDJYLF+f0SzNqZkSZnvhsbuKfLZLyHU=;
	b=KcvZ4p8y4H/WcMdClnLi+/BEHPJOvZFFUVg9+d/1CeYX/affOF1Z4/FacP61ISts4E
	wQo8cSnqkCQHJgR51LgD4nhXvMihh2glAWHxQbS+ctwpItOrpnQzSazJZLfp9+ZfD1ys
	3yUPiB2EBS4QqA6JdwqiEdbw6x+bDlhd2xGik=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	b=ghgp6QnuquXtgh7KGX/ULT31GF16ImqIi9uRDoiak3kfqFIFriM7NZjHdGF4UvFdSB
	sIjKs9EzyNNQlTvsIpXu4yYsZ8UPSTAUeYxQLe34z6HQgUR2KhMcoa8un3hu+VsAMJFt
	laiewtzcHu+NuW0bNLYuqWoVe1tUd4VS1o1qo=
Received: by 10.14.15.20 with SMTP id e20mr4742176eee.16.1305168242148; Wed,
	11 May 2011 19:44:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.53.5 with HTTP; Wed, 11 May 2011 19:43:32 -0700 (PDT)
In-Reply-To: <1305135637.30391.455.camel@rex>
References: <4DCAB609.8030601@linux.intel.com>
	<BANLkTintvgFGKUUUdvq2M7Q=m+gYuzs2-A@mail.gmail.com>
	<1305135637.30391.455.camel@rex>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 11 May 2011 19:43:32 -0700
Message-ID: <BANLkTikco5DBEeucjhRsMsrGhy7XTTJ8Kw@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Otavio Salvador <otavio@ossystems.com.br>,
	Darren Hart <dvhart@linux.intel.com>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	Tom Rini <tom_rini@mentor.com>
Subject: Re: RFC: create-pull-request / send-pull-request updates
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
X-List-Received-Date: Thu, 12 May 2011 02:44:04 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, May 11, 2011 at 10:40 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Wed, 2011-05-11 at 10:01 -0700, Khem Raj wrote:
>> On Wed, May 11, 2011 at 9:15 AM, Darren Hart <dvhart@linux.intel.com> wrote:
>> >
>> > Thoughts/Comments?
>> >
>>
>> I would suggest to alter the process a bit and get rid of the scripts
>> completely. Patches are sent to mailing list for review once reviewed
>> the final patches are
>> sent as git pull-request. It would simplify things.
>
> I'd argue that it doesn't. It just means the requests come in different
> formats, sometimes with key pieces of information missing which means
> the people trying to handle the requests (like me) get frustrated.
>
> I find it easiest to deal with requests that have come through those
> scripts.

I think review process and pull process are different. and pull follows reviews
right now they are sort of mixed. There are multiple pull requests that are sent
and sometimes one patch appears in multiple pull requests. Signoffs
acks etc. are not collected. Thats why I was suggesting
to use emails for reviews and there will be trail and then create pull requests


>
> Cheers,
>
> Richard
>
>

