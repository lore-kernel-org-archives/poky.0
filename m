Return-Path: <holger@freyther.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C949E00BAA; Sat, 19 Dec 2015 23:42:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from gandharva.secretlabs.de (gandharva.secretlabs.de [5.9.72.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01C97E0044F
	for <poky@yoctoproject.org>; Sat, 19 Dec 2015 23:42:29 -0800 (PST)
Received: from [10.0.1.2] (ip5b41fb99.dynamic.kabel-deutschland.de
	[91.65.251.153])
	by gandharva.secretlabs.de (Postfix) with ESMTPSA id EDB106389A;
	Sun, 20 Dec 2015 07:42:27 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
From: Holger Freyther <holger@freyther.de>
In-Reply-To: <1450566176.8461.87.camel@linuxfoundation.org>
Date: Sun, 20 Dec 2015 08:42:27 +0100
Message-Id: <2A239212-32AC-47BC-846D-F646F489FE52@freyther.de>
References: <014C7722-0747-4CF8-B2D1-AA7021E2B011@freyther.de>
	<1450566176.8461.87.camel@linuxfoundation.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.3112)
Cc: poky@yoctoproject.org
Subject: Re: Weird python/OE issue on parsing
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
X-List-Received-Date: Sun, 20 Dec 2015 07:42:33 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On 20 Dec 2015, at 00:02, Richard Purdie =
<richard.purdie@linuxfoundation.org> wrote:
>=20
>=20
> It certainly seems related to the line numbering changes maybe
> interacting badly with EOF somehow. Is this on a 32 bit system?=20

Yes, that is a 32bit userspace. debootstrap --arch=3Di386 wheezy wheezy =
and then
installing the deps and a plain git.yoctoproject,org/poky checkout is =
enough to see
the issue.

holger=

