Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F686E006C2
	for <poky@yoctoproject.org>; Wed, 16 Jan 2013 09:46:04 -0800 (PST)
Received: from mail-yh0-f71.google.com ([209.85.213.71])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 16 Jan 2013 09:44:58 -0800
Received: by mail-yh0-f71.google.com with SMTP id 22so2498089yhr.10
	for <poky@yoctoproject.org>; Wed, 16 Jan 2013 09:46:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=GTxmCxguBBSUk8DM1IJLJAdfOAatHrC1j/n3V+1wwE4=;
	b=J7qxN7j4siEQEuL2f9aHYwjnS+awIjYOh/VBeWJZo13SQw/ImzLL/3cEDl/gpM6AAr
	JYkiCIIbgpeH9k1DgBv7mjkX0ZC7E7V1PNr8kuDbXzdJ29z7lX41FdIe/q6h3kINJ2BC
	epA9fhyT1olseWJh5W5yTabnEIhcWH+3XWBRZTTi38j0CLRiq2h6tqkg+X8C26TAphKo
	A/VP3yAZVsUUMIbBg/6dhiqVN97W8urMR2foONv6ZTuL2nBYlnmN8D5uwT9slfeDgM+5
	s15waVHIsiYt+k3st8hf4dddDPelJ0oQmVixkaJlZp/e+RFbt9CEk57RQF2b7ff2Cn1G
	Cz9A==
X-Received: by 10.52.72.232 with SMTP id g8mr1886528vdv.69.1358358362497;
	Wed, 16 Jan 2013 09:46:02 -0800 (PST)
X-Received: by 10.52.72.232 with SMTP id g8mr1886520vdv.69.1358358362343; Wed,
	16 Jan 2013 09:46:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.95.103 with HTTP; Wed, 16 Jan 2013 09:45:41 -0800 (PST)
In-Reply-To: <50F6DA02.2010305@mlbassoc.com>
References: <50F6D326.9000500@mlbassoc.com>
	<CAJTo0LYJtaEAHbsQQ89cwpOJJ3imD3fsp6Gs__WMLr+Xqu+j_A@mail.gmail.com>
	<50F6D82B.4040001@mlbassoc.com>
	<CAJTo0LY5mLse9jYgG+xa2yHAbQKkp60W8OdUnde1gUDY7M=FZg@mail.gmail.com>
	<50F6DA02.2010305@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 16 Jan 2013 17:45:41 +0000
Message-ID: <CAJTo0LaqQn6NVot_DDfpwxVgVgW0S5GmPRmtfTagu7dJAbu8zA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQlxzTtoQ2BUIaGGXxn5RN+QLbFnm8UpFCaO24yWsMUWxyk8ZJe2TBy+Xavm3NUl4JOIOXEY9v2OFhf8nLTstMhB2lYj+S8O6G6RZA4wqoBiOAKZu9t2R9odpwZeZwWOJkqeER6kOEVqoRvjJ7wGIKc8aUCWRQ==
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Using gnome icons
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
X-List-Received-Date: Wed, 16 Jan 2013 17:46:04 -0000
Content-Type: text/plain; charset=UTF-8

On 16 January 2013 16:49, Gary Thomas <gary@mlbassoc.com> wrote:
>> Hmph.  Danny or Denzil?
>
> Master :-)

Good man, I like your style!

What application is this?  The core apps in Sato are somewhat tuned
for the Sato experience which makes this tricky to replicate easily.
I thought there might be a tunable for the button style that we're
overriding, but I can't see anything obvious.

Ross

