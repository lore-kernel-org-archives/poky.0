Return-Path: <holger@freyther.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08E63E00707; Sat,  8 Aug 2015 11:09:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from gandharva.secretlabs.de (gandharva.secretlabs.de [5.9.72.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95AE9E00343
	for <poky@yoctoproject.org>; Sat,  8 Aug 2015 11:09:09 -0700 (PDT)
Received: from [10.0.1.2] (ip5b41fb99.dynamic.kabel-deutschland.de
	[91.65.251.153])
	by gandharva.secretlabs.de (Postfix) with ESMTPSA id 1A27D31731;
	Sat,  8 Aug 2015 18:09:07 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2102\))
From: Holger Freyther <holger@freyther.de>
In-Reply-To: <1439051443.30467.56.camel@linuxfoundation.org>
Date: Sat, 8 Aug 2015 20:09:06 +0200
Message-Id: <AD5BEC73-4B03-49FF-9090-C56758BB0E06@freyther.de>
References: <5331BB7A-0C6A-42AE-BA46-4E7A9D970FB4@freyther.de>
	<1439051443.30467.56.camel@linuxfoundation.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.2102)
Cc: poky@yoctoproject.org
Subject: Re: Odd log messages for apps using autotools and __FILE__
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
X-List-Received-Date: Sat, 08 Aug 2015 18:09:14 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On 08 Aug 2015, at 18:30, Richard Purdie =
<richard.purdie@linuxfoundation.org> wrote:

>=20
> I can confirm that this is from the B !=3D S change.

Thank you. I like that OE is finally using this feature and that we =
could have a ro source
trree.

> We've kept meaning to go and look at how gcc generates these paths to
> maybe try and add the option to remove a prefix for example. The =
.debug
> src paths have a rewrite mechanism and we could use this for other =
paths
> too?

the macro is defined here[1] and on a very quick (<30s) look line-map =
doesn=E2=80=99t allow
any remapping. This means OE is the first buildsystem to systematically =
apply the
B !=3D S? My hackish(?) solution would be to force __FILE__ to behave =
like __BASE_FILE__.

holger


[1] =
https://gcc.gnu.org/viewcvs/gcc/trunk/libcpp/macro.c?revision=3D225185&vie=
w=3Dmarkup#l286
[2] https://gcc.gnu.org/viewcvs/gcc/trunk/libcpp/line-map.c?view=3Dmarkup=

