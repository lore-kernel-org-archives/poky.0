Return-Path: <Andreas.Zoufal@ait.ac.at>
Received: from mail.ait.ac.at (arcss01.ait.ac.at [62.218.164.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CCC6E01374
	for <poky@yoctoproject.org>; Mon, 26 Mar 2012 08:57:43 -0700 (PDT)
Received: from Mailbox.arc.local ([169.254.1.137]) by S0HCN1.arc.local ([::1])
	with mapi; Mon, 26 Mar 2012 17:57:41 +0200
From: Zoufal Andreas <Andreas.Zoufal@ait.ac.at>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 26 Mar 2012 17:57:41 +0200
Thread-Topic: gcc -print-file-name option without path?
Thread-Index: Ac0LZ9XbvdZAI0lBRpiSlVbUSL33Lg==
Message-ID: <9F69795E29C890408AC2DAF646C89BB379D69623E5@MAILBOX.arc.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: gcc -print-file-name option without path?
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
X-List-Received-Date: Mon, 26 Mar 2012 15:57:43 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
We am starting to use the Yocto/Poky toolchain as replacement for ELDK5. Tr=
ying to compile our existing kernel fails, but it worked fine with ELDK5. D=
oing some investigation we recognized a different behavior which I guess is=
 the reason for the problem: using the cross compiler to show the path of t=
he libgcc.a with the option "-print-libgcc-file-name" doesn't show the full=
 path, only the filename itself! But ELDK5 does.=20
I'm using poky-1.2_M3.final for arm, and the build folder is in my home dir=
ectory, like:
/home/user/path/to/project/poky/build/tmp/sysroots   ...and so on
Am I doing something wrong? gcc --help says that the -print-file-name shoul=
d return the full path, which is even not true.
Kind regards, Andi

