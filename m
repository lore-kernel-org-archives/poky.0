Return-Path: <kergoth@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id CC6CD4C800A2
	for <poky@yoctoproject.org>; Thu, 14 Apr 2011 15:57:36 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwr19 with SMTP id 19so2637386iwr.35
	for <poky@yoctoproject.org>; Thu, 14 Apr 2011 13:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=PIVeGqPC1ZuHkvQLavMnpe8vyNoa/fFqNpTtjeegePk=;
	b=LgXOfz8GbxWzDC8zaXtATpW0WxBLumLhWCDHNL5UKe1pn7cJ4ft1CBfjlTD+qbDCm5
	JfigXnU5X3hUMNC2nNIpN3KCngp8IVMSSM4k1HSgXAygPoqqRoKKY2D1oC8EnLXUbSm/
	mV+gfHg9R2afUJGnv4W4zcHRjMa5/GArMT+ZM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	b=h+9/LSelPioHwakhsDT25IO4YZpTSHuzZ4bNhNT10oMat2U6txXvAGFkXoSAbOc9kV
	JjSEeJ/koLn6+Z+zj2xoKeXlAeL5FdJoSVA31CYnsbFjfGxRpB61jh4kHAe9sxyyOdjW
	TWLyTt5M6ZyRBIqW/pT7DvpJpJLlNRZYKuQIM=
Received: by 10.42.154.131 with SMTP id q3mr1677107icw.465.1302814656099; Thu,
	14 Apr 2011 13:57:36 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.42.164.66 with HTTP; Thu, 14 Apr 2011 13:57:16 -0700 (PDT)
In-Reply-To: <4DA758E6.7040606@intel.com>
References: <20110414194445.9BCC5151F83@gemini.denx.de>
	<4DA758E6.7040606@intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 14 Apr 2011 13:57:16 -0700
X-Google-Sender-Auth: CuR1-xKi0eHXee0mtDt3iqNQBC0
Message-ID: <BANLkTikLPSrRtUObRTSHFRdWS+h5pTuO0A@mail.gmail.com>
To: Saul Wold <saul.wold@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: Distro policy ?
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
X-List-Received-Date: Thu, 14 Apr 2011 20:57:37 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Apr 14, 2011 at 1:28 PM, Saul Wold <saul.wold@intel.com> wrote:
>> So, from the policy side I think we should go with our own layer.
>> On the technical side I'm disappointed with this 'include' problem: I
>> find it rather impractical to copy things we don't want to change and
>> just want to use from one layer to another and then having to keep
>> these in sync with mainline.

There's no reason you should have to copy unmodified files from one
layer to another, ever.  Configuration files are found via BBPATH when
they're referenced via a relative path, and file:// files via
FILESPATH are easily dealt with as well.  The only time you should
have to copy is if you have a need to modify them, particularly as
there's no "bbappend" that corresponds to recipe .inc files.  Is there
a particular case you're thinking of here?
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

