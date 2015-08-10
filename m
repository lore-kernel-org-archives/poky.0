Return-Path: <holger@freyther.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CC68E0034B; Mon, 10 Aug 2015 00:04:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from gandharva.secretlabs.de (gandharva.secretlabs.de [5.9.72.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 553B4E00343
	for <poky@yoctoproject.org>; Mon, 10 Aug 2015 00:04:46 -0700 (PDT)
Received: from [10.9.1.161] (ip5b41c1ec.dynamic.kabel-deutschland.de
	[91.65.193.236])
	by gandharva.secretlabs.de (Postfix) with ESMTPSA id AFACF372D2;
	Mon, 10 Aug 2015 07:04:44 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2102\))
From: Holger Freyther <holger@freyther.de>
In-Reply-To: <778E969C-DC7F-48B7-864D-6F0D6152B513@gmail.com>
Date: Mon, 10 Aug 2015 09:04:43 +0200
Message-Id: <C7720E26-9C95-42A5-9DF7-3D2137990676@freyther.de>
References: <5331BB7A-0C6A-42AE-BA46-4E7A9D970FB4@freyther.de>
	<1439051443.30467.56.camel@linuxfoundation.org>
	<778E969C-DC7F-48B7-864D-6F0D6152B513@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Mon, 10 Aug 2015 07:04:50 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On 08 Aug 2015, at 21:19, Khem Raj <raj.khem@gmail.com> wrote:
>=20

>>> I know I can use __BASE_FILE__ in gcc to get back to install.c
>=20
> __BASE_FILE__ is a gnu extension, just be aware of that if you target =
portability

Yes, that is mentioned in the GNU GCC documentation.


> __FILE__ is one of standard pre-processing macros that are computed by =
cpp and its supposed to contain the path and name by which cpp opens the =
current input file and naturally when B !=3D S then you are referring to =
source file more commonly with absolute path, one could use relative =
paths  w.r.t build dir but thats up to components build system and may =
not be even possible in all cases. I don=E2=80=99t think there is any =
thing to fix there in compiler unless we want to violate the standard. =
.debug rewrite might be a different thing someone tried a stab at it see
> https://sourceware.org/ml/gdb-patches/2011-06/msg00385.html but =
didn=E2=80=99t move very far since there were alternative ways.

yes, but this leads to unreadable and huge log messages in many =
applications.
E.g. all invocations that do something like:


file.c:
	debug(__FILE__, __LINE__, =E2=80=9CMy message %d=E2=80=9D, 23);

turns into

=
/home/hfreyther/poky/fido/build/tmp/work/armv5te-poky-musl/my-app/r0/git/s=
rc/component/file.c:2 My message 23

=46rom my point of view this creates a usability issue for the =
developers. When I looked
at my BTS log. I couldn=E2=80=99t see the actual log messages (line =
wrapping, majority of output
being the path). Now it obvious that Poky is the first mainstream =
distribution to compile
with B!=3DS but is there a plan in regard to log messages? Migrate to =
use __BASE_FILE__?
Use __FILE__ but wrap it with strstr? Or is the situation okay enough?

kins regards
	holger=

