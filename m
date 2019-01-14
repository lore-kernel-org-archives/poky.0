Return-Path: <jeff.dagenais@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF534E00CF4; Mon, 14 Jan 2019 10:35:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jeff.dagenais[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 498F4E00CD6
	for <poky@yoctoproject.org>; Mon, 14 Jan 2019 10:35:30 -0800 (PST)
Received: by mail-qk1-f172.google.com with SMTP id d15so34974qkj.0
	for <poky@yoctoproject.org>; Mon, 14 Jan 2019 10:35:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=MPRQ8VcUgecDnAANCHJRbRpGShDVC9k56c/CkyiIK9U=;
	b=D0D9NkPN4bdkixN9LIoOj1zqmCP/HYPiUnN9GPC3zkw0gQw2ijRQCRuVtyjUf2F5fU
	CexEfDR0k4qkE2RCUW7/WI0ZClKUPzb94qbNUidfaE3oRDI/UbuA0VFkGgpw2MNVYC4z
	s5H/YbNRCrTAO9h8+LHaKLyCfXYWOOh6rdx3N/6kwk3EtNfZsrNIHbvEDc3jhOQePwm5
	dyBX0foSYa1wHfKIkajIBP3eLn3j0khCfs+f/q861j+FihC9eCn+66T2GTVh1ZTv2v/3
	vIjWEZNWxVJV2iBxqREFkRPmBgRvEd3Zo/YH0mklTJ2W4HghptkKtqBpvhsSaQXhcSGR
	/wmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=MPRQ8VcUgecDnAANCHJRbRpGShDVC9k56c/CkyiIK9U=;
	b=rQAktd9Zy8nrDuEVf38McLvIS52ZBBTuqq/uLO7GZ6t4vPTNvfOZ/lSJnn2SvlB5Yf
	fmLmZmYBG82bXVIgyPxZWDK7GlIDf6BAzK33CIekRNOreHijYztDmyYXGFjxsj18f1pp
	/CJUUyD4uw8Tr1d9Dxa1z85fs9MZa8rG1ddtam4o/Ydz6T4kwcjY2yAKOEnMwoowwNVm
	6UOP2KrdDx7K4HG7mh0rQPIACt9akbIzAYRwBBjoFWSyYkrL8kvk/T36z3ExIwGzgmHo
	aPuqpX5LG9Ab1f5+51X5tvqXcCwWx7a7flsMitlFk+28wGZ76sppS/6CGZ4OOr/tZJkC
	mvQg==
X-Gm-Message-State: AJcUuke+bZ5AjeesXCSw9HoLlEf+kNLptUDJLudmmd16y9gYE6dcm9Ic
	NxxebWIGE1UoUOI25AZssq1LpsXb
X-Google-Smtp-Source: ALg8bN5uk3rn4KlZD4Up8lc8cAJH3yr/0WfEsDHRJdYDdZWNBJxjdueKIWr1rRzIn6+mXHdfziBewQ==
X-Received: by 2002:a37:3692:: with SMTP id
	d140mr22863646qka.108.1547490929578; 
	Mon, 14 Jan 2019 10:35:29 -0800 (PST)
Received: from [192.168.100.201]
	(ipagstaticip-d73c7528-4de5-0861-800b-03d8b15e3869.sdsl.bell.ca.
	[174.94.156.236]) by smtp.gmail.com with ESMTPSA id
	y70sm39606983qka.75.2019.01.14.10.35.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Jan 2019 10:35:28 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 12.2 \(3445.102.3\))
From: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
In-Reply-To: <40EBB072-485F-4099-99A6-CA4EB88A2F6D@gmail.com>
Date: Mon, 14 Jan 2019 13:35:27 -0500
Message-Id: <725EBE10-0967-4DE2-9116-E3C5EEE4582C@gmail.com>
References: <4F6CA6D8-E1F6-4AB3-A481-241AA0DE3B28@gmail.com>
	<CAJTo0LbZr=iAv7zgVtNAEDkVGL=MwgvFdEJHaakOqv0AgS5D=Q@mail.gmail.com>
	<F776005A-D6E7-4D5D-BE50-A2E80A405732@gmail.com>
	<CAJTo0LZ+VnFcD0GOarDbYGXz8dLUgr0Qc6MOt_ov7jFUfApX4w@mail.gmail.com>
	<40EBB072-485F-4099-99A6-CA4EB88A2F6D@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.3445.102.3)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: thud systemd root home wrong
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
X-List-Received-Date: Mon, 14 Jan 2019 18:35:30 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Answering myself here...

> On Jan 14, 2019, at 1:18 PM, Jean-Francois Dagenais =
<jeff.dagenais@gmail.com> wrote:
>=20
> Were there any plans to submit this upstream? Seems a worthy mod. =
Although might not be a need for regular distros.

I looked at it closer and does seem like its not upstream-able. At =
least, not in such a simple form.

There are tests and units in the source tree which would need to by =
dynamically updated. On top of that, the man pages give some good =
arguments to keep root as "/root":

/root
           The home directory of the root user. The root user's home =
directory is located outside of /home in order to make sure the root =
user may log in even without /home being available and mounted.

You'd be hard pressed to get the systemd people to agree to change this =
I think.

So the problem is certainly becoming a bit too big for the amount of =
extra time I can afford right now.

For the record, since we don't actually require root's home to be in =
/home, I will add ROOT_HOME =3D "/root" in my distro file as a perfectly =
fine workaround for our use.

I will try to help any brave soul who tries to tackle this in the near =
future! ;)

Cheers!
/jfd=

