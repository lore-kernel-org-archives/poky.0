Return-Path: <lpapp@archlinux.us>
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1186DE00744
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 01:54:54 -0800 (PST)
Received: by mail-pa0-f49.google.com with SMTP id hz1so5960717pad.22
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 01:54:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=YmZIOz6J1ysr+wVDRNR3u9MWqdIU+1SOiwv1zPxMYIQ=;
	b=Mb9VzB5WJeCXR3qsUwi3Ct8bfucEC5+JcE00oQpHcJ2U8dcBEaTDYz9asT51mTvhN/
	dCICmxX6RJVln+eGtgnvGubkAwRxZYavj/J3qwJhHyObCbof7lOy4mOUuf2KkTQ2u3b2
	981Xb0bXByzU1GIOikcKHy0sJW+Y9OhH1kkum5nZnGk9BsfbwhvonOPJ/1uNYvTr2ugu
	sL9S1tvphd0lAl4FhgIcO45NFZrnI0eKOVOTccyfwbI1ix5P8E9S8dFQbBKXPciXcDBP
	gNxLBeQ+zF0ct/blb85cl7Ql2IjiHMvs9y8UzZ0kmSKLsziPUBK7zhaoFGOd0fimYeqg
	n8nA==
X-Gm-Message-State: ALoCoQmP9DbZvdBL+ieIkBiG4QCWD1bwn1iO8Vmal8DGh+s8A6FMsPu9dwr+i1Jk0OEqpEBQv/PK
MIME-Version: 1.0
X-Received: by 10.68.189.5 with SMTP id ge5mr36427654pbc.42.1392026094142;
	Mon, 10 Feb 2014 01:54:54 -0800 (PST)
Sender: lpapp@archlinux.us
Received: by 10.70.21.228 with HTTP; Mon, 10 Feb 2014 01:54:54 -0800 (PST)
In-Reply-To: <20140210094605.GI23583@axis.com>
References: <1392025053-22406-1-git-send-email-olof.johansson@axis.com>
	<20140210094605.GI23583@axis.com>
Date: Mon, 10 Feb 2014 09:54:54 +0000
X-Google-Sender-Auth: yiVTMHIRSjgLhYRmvQqfjFjTvPQ
Message-ID: <CAOMwXhNP=cP1PrnM1A8mYrrTY4qKyvpFTcQX3++hvJm08K1YHA@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Olof Johansson <olof.johansson@axis.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] poky.conf: Add Debian-7.4 to SANITY_TESTED_DISTROS
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
X-List-Received-Date: Mon, 10 Feb 2014 09:54:55 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Feb 10, 2014 at 9:46 AM, Olof Johansson <olof.johansson@axis.com> wrote:
> On 14-02-10 10:37 +0100, Olof Johansson wrote:
>> Signed-off-by: Olof Johansson <olof.johansson@axis.com>
>> ---
>>  meta-yocto/conf/distro/poky.conf | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
>> index 9f45b6c..b04c597 100644
>> --- a/meta-yocto/conf/distro/poky.conf
>> +++ b/meta-yocto/conf/distro/poky.conf
>> @@ -86,6 +86,7 @@ SANITY_TESTED_DISTROS ?= " \
>>              Debian-7.1 \n \
>>              Debian-7.2 \n \
>>              Debian-7.3 \n \
>> +            Debian-7.4 \n \
>>              SUSE-LINUX-12.2 \n \
>>              openSUSE-project-12.3 \n \
>>              "
>
> Is somebody working on wildcards in SANITY_TESTED_DISTROS? Would
> be nice for Debian-7.x :-).

You mean [1-4]?

7.x could break if a new version is available, but it is not tested.

