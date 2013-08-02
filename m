Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CEF2E0152B
	for <poky@yoctoproject.org>; Fri,  2 Aug 2013 00:28:50 -0700 (PDT)
Received: by mail-pd0-f182.google.com with SMTP id r10so360002pdi.41
	for <poky@yoctoproject.org>; Fri, 02 Aug 2013 00:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=rCn0w1OC+hf85NbeVVyiU7jdHW4qiwnxliSto7/BDBg=;
	b=j2MAM6PCPMNYMxLkB1A/tNV9NzmixNWUn43hOA2Ue3KTLjVom1p7Q/HlRMDGzOdlbU
	OPMV9z3r5jx4tPEJOksWu/0IMGGiAg4ZVgaLTH3Va64NiVQXuITuzFPACOVFWBzbM/TA
	zY+TjvqqgmfdRlWJfxbFZQ6xHL0NmQxO4iNnAAB1t2U/RCR99iN4O2UG640p6E0cI/+Z
	jv23wTx46qd/7QTc1loJTz4L+K5hZOhRd8OkARSzM14ru0LmdFsDQ6JO8qxyrUZvbiLH
	MqozGxCnmzxlNJifqdj5n9SRSSpr72NIkNuGivOq4DTmjBHOebAwSkyKYiiaWf6wwnO0
	XHaQ==
X-Received: by 10.66.224.237 with SMTP id rf13mr9000379pac.26.1375428530427;
	Fri, 02 Aug 2013 00:28:50 -0700 (PDT)
Received: from sa-nc-spg-213.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPSA id fk4sm6779461pab.23.2013.08.02.00.28.48
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 02 Aug 2013 00:28:49 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <51FB52D7.1010507@cn.fujitsu.com>
Date: Fri, 2 Aug 2013 00:28:47 -0700
Message-Id: <9301F5F5-31B5-48AD-8038-8065EBEAD303@gmail.com>
References: <51EF7AD7.7080009@cn.fujitsu.com>
	<EDC7964C-6C92-49D1-BA30-4CE95F5578A3@gmail.com>
	<51FB52D7.1010507@cn.fujitsu.com>
To: Bian Naimeng <biannm@cn.fujitsu.com>
X-Mailer: Apple Mail (2.1508)
Cc: poky@yoctoproject.org
Subject: Re: Why we release yocto on different branch
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
X-List-Received-Date: Fri, 02 Aug 2013 07:28:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Aug 1, 2013, at 11:33 PM, Bian Naimeng <biannm@cn.fujitsu.com> wrote:

> Thanks for your answer.
>=20
> Do we apply new features into these branches such as =
denzil/danny/dylan.
> Only bug fix?
>=20

bug fixes only. And the fix has to be done in master branch if its =
existing there
and then back ported into the release branch=

