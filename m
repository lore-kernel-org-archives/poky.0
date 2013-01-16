Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4505BE006C3
	for <poky@yoctoproject.org>; Wed, 16 Jan 2013 08:46:36 -0800 (PST)
Received: from mail-yh0-f72.google.com ([209.85.213.72])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 16 Jan 2013 08:46:35 -0800
Received: by mail-yh0-f72.google.com with SMTP id q46so2405704yhf.3
	for <poky@yoctoproject.org>; Wed, 16 Jan 2013 08:46:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=Igsv0m+06jXK1sjBjZKn3+tCQ3/amVylbqluucQLfj0=;
	b=bZlRANQQKzr3O+1gLTve3eI9QtPJHRxKmTHAUewpMpFzGw2ZNo7RwsfpokmfOJ339v
	iXmzeFEbWdA/T9F0fB7wGkmPmhg8NPWXDqG32sH7x7rcE/QleFZdFDieVFQQS+9nmxU8
	KOEf2SSXS+Y7sAIdeFgZvEijyG0sJkKwRXo9ok+PvbV7vt/NRtFxfKpBuZzHLZAR0jym
	E06Hcw/uBlWwfpmcXnvJ9zR9iRnDnSZhkbZ3WVE7z7zAdiGQKgn7YlIg90nNJvsvJj+9
	uVj1o2lJp+lohpODDJLK2O+MSSHdJ21kyD8GPYdEk/VxTxhjxWJoqTTOftdSOQFF7GT7
	g6EA==
X-Received: by 10.52.17.70 with SMTP id m6mr1657013vdd.92.1358354794186;
	Wed, 16 Jan 2013 08:46:34 -0800 (PST)
X-Received: by 10.52.17.70 with SMTP id m6mr1657007vdd.92.1358354794118; Wed,
	16 Jan 2013 08:46:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.95.103 with HTTP; Wed, 16 Jan 2013 08:46:14 -0800 (PST)
In-Reply-To: <50F6D82B.4040001@mlbassoc.com>
References: <50F6D326.9000500@mlbassoc.com>
	<CAJTo0LYJtaEAHbsQQ89cwpOJJ3imD3fsp6Gs__WMLr+Xqu+j_A@mail.gmail.com>
	<50F6D82B.4040001@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 16 Jan 2013 16:46:14 +0000
Message-ID: <CAJTo0LY5mLse9jYgG+xa2yHAbQKkp60W8OdUnde1gUDY7M=FZg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQmu/uQv48KoAxLUZxB7cY8m/odnv02TBDaNbBZyq2rY6NyH6BHfshNeDpniTGbXc3AUAd5QQ0iuEvOvkzDHhoaCrz3QIrxJO+2jtL7SVKo4fcDFyp5GcgXHjNlSnfJC/jIjgmV/nUT2TGyK4a2JIhfKFEtb0w==
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
X-List-Received-Date: Wed, 16 Jan 2013 16:46:36 -0000
Content-Type: text/plain; charset=UTF-8

On 16 January 2013 16:41, Gary Thomas <gary@mlbassoc.com> wrote:
>> Did your image include the gnome-icon-theme package?
>
> Yes (actually I added it post build but it should be the same)

Hmph.  Danny or Denzil?

Ross

