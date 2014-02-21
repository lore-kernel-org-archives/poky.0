Return-Path: <ross.burton@intel.com>
Received: from mail-qa0-f53.google.com (mail-qa0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17944E0087B
	for <poky@yoctoproject.org>; Fri, 21 Feb 2014 12:27:59 -0800 (PST)
Received: by mail-qa0-f53.google.com with SMTP id cm18so3120351qab.12
	for <poky@yoctoproject.org>; Fri, 21 Feb 2014 12:27:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=+3LimYjegpMhM/Z1vIF1NXopyHGA5nmhHzg8bvWr4lY=;
	b=VnFa200SgC86hsCWi1zrU0uQ6yykZkEqz21zlp/YF6b27rsxseersVf2kBv1Rl3g7h
	TWIVOkZp2cfTEEWMcxsMdz/kSEJqbiR36wPDkYkQ/P42c8J48MvSNvQb/N3RZBauqCIy
	74PIwsjMXHlvouPeU0fPEEK9uPTVCoRQYNmd6C2b80XJ0ms7EtFfycn0Q5AuXKloMqVI
	434ZRg4QOwDzSAmVgGtGQZp32U+AdJjH3uqzT4kzPTSypZ0Pnk+DT3zwfe3GqWalscpu
	h1fESKe/hAqkN5SzPSaRY0yAgSWEK0Xv/GEbrcBFHhSKjvShcIYhgZj9C3q1R/9Sg239
	oSOg==
X-Gm-Message-State: ALoCoQlDon+3LWWpuIB0BKNGo28dim+8UmOctxkZLVShfhX+TZEOvyIuOK8kYcAABR7JKjrboBeW
X-Received: by 10.140.42.138 with SMTP id c10mr12359624qga.24.1393014478475;
	Fri, 21 Feb 2014 12:27:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.79 with HTTP; Fri, 21 Feb 2014 12:27:38 -0800 (PST)
In-Reply-To: <54eef9b1596a474c8b0817db566f492d@BLUPR05MB037.namprd05.prod.outlook.com>
References: <54eef9b1596a474c8b0817db566f492d@BLUPR05MB037.namprd05.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 21 Feb 2014 20:27:38 +0000
Message-ID: <CAJTo0LZm5RVV2CNN7w9OyC0=Hk8vVrGL515p4H3sNN_r9iQ9zA@mail.gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Setup for hot plugging Ethernet
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
X-List-Received-Date: Fri, 21 Feb 2014 20:28:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 21 February 2014 19:14, Bryan Evenson <bevenson@melinkcorp.com> wrote:
> I am on poky dylan-9.0.1 and I am using a custom image based upon core-im=
age-minimal (core-image-minimal with a few added packages).  I'm using sysv=
init and init-ifupdown for network intialization.  With this setup, network=
ing works just fine as long as the wired Ethernet is plugged in when my sys=
tem boots up.  However, hotplugging the Ethernet cable doesn't work; if the=
 cable wasn't plugged in on bootup, I need to reboot to get  a network conn=
ection.  I'm looking for a simple way to fix that.


Instead of using init-ifupdown, install connman.  That will do
ethernet hotplug (and a lot more) for you.

Ross

