Return-Path: <ross.burton@intel.com>
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9DFAE003D2
	for <poky@yoctoproject.org>; Wed,  4 Sep 2013 07:49:55 -0700 (PDT)
Received: by mail-wi0-f170.google.com with SMTP id cb5so3690638wib.5
	for <poky@yoctoproject.org>; Wed, 04 Sep 2013 07:49:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=9j/VGXY08/d9fJS5mV5NzQNWFR5AbZQxdQ4ASsOpRXE=;
	b=geWMb8Xg34tX1HR2W6q6h9xmqh8hfpB1UnJLOite+FqcXlUnIKNevAZzvQnnec2/Wu
	HYm7MZvnRUrURlSacQF9wDPHnC9McvanJQMRszzSOrw4N3UOCXA1DBbnKVRP7MKEiiAq
	kjRhwSXLhvS+JNfHADLImzbwABA1F90oDgVxxE4zA9LQSgwSgH7sQ9oduZ7vK55c/T8h
	4kEIdG6MSBgkBbUW3VG9TTnx1yoQ7m9lMR1AWdg2VX4x8APcaRWZqscx0YSgZK1dNLxq
	/uwyGzlcOLR6kC0KPHn2B/4bYxxodeGwa1QMgcw9QOA5S2fbqXS8fNKqOeqka5zGSQwf
	yD9w==
X-Gm-Message-State: ALoCoQmtSpaOnLd9tvbz/GHrzkpAK36gbMPw5c39cDu8JVydN8wbJbEhe14av+Uj6M7Wf/l9M6Bz
X-Received: by 10.181.12.16 with SMTP id em16mr2419598wid.36.1378306194352;
	Wed, 04 Sep 2013 07:49:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.99.10 with HTTP; Wed, 4 Sep 2013 07:49:34 -0700 (PDT)
In-Reply-To: <522743A2.6070609@gmail.com>
References: <1378259015-25126-1-git-send-email-net147@gmail.com>
	<CADkTA4NS36hZBgpZ-CQmxgJ63D_jyo5nEV8osa2u1eP+tutq9g@mail.gmail.com>
	<CANwerB2PtV9Sk=qMPKJ6EBu88DWSJ6rxLH9OYui=29f5wqT2dA@mail.gmail.com>
	<CADkTA4OiNjkfiE4oa-AMb_NFX1P9JNoG4SkwP3xmFpoqyTubEA@mail.gmail.com>
	<CANwerB0PQgJQSqR4S_b0N77w2vejVZsO967AgzJgyDveu8aUcA@mail.gmail.com>
	<CANwerB3wV4R_1pR-hhQeZK-FabdF2oCzozgqoSjNKX_ZOoZ_WA@mail.gmail.com>
	<CANwerB3KCBuaq87oSWaze1B+_+DYmzokKoV1dk=S7Gj8EnLS4g@mail.gmail.com>
	<52272D84.6050405@windriver.com>
	<CAJTo0LZt4Wmre2XOjLtTFPnmOOMvC+x0Gu-EDEQSFB_F_XkFFw@mail.gmail.com>
	<522743A2.6070609@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 4 Sep 2013 15:49:34 +0100
Message-ID: <CAJTo0LbJf2ao0vjJMR2QH5QdZHWaa_s2LhTs1R_+i6EL9_C9qw@mail.gmail.com>
To: Jonathan Liu <net147@gmail.com>
Cc: Darren Hart <dvhart@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] genericx86: tune for i586 instead of atom
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
X-List-Received-Date: Wed, 04 Sep 2013 14:49:56 -0000
Content-Type: text/plain; charset=UTF-8

On 4 September 2013 15:28, Jonathan Liu <net147@gmail.com> wrote:
> Is CONFIG_MATOM=y being used for genericx86?
> Using CONFIG_MATOM=y with Linux 3.10 seems to require MOVBE instruction
> which is only available on Intel Atom...

ross@melchett /data/poky-master/tmp/work/genericx86-poky-linux/linux-yocto/3.8.13+gitAUTOINC+b60144f698_f20047520a-r4.2/linux-genericx86-standard-build
$ grep MATOM .config
# CONFIG_MATOM is not set

Apparently not.

Ross

