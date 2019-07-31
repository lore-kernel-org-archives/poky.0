Return-Path: <contact@nicheconsult.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F61CE00D35; Wed, 31 Jul 2019 08:23:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [217.26.49.172 listed in list.dnswl.org]
Received: from mxout012.mail.hostpoint.ch (mxout012.mail.hostpoint.ch
	[217.26.49.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00E08E00CD5
	for <poky@yoctoproject.org>; Wed, 31 Jul 2019 08:23:04 -0700 (PDT)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
	by mxout012.mail.hostpoint.ch with esmtp (Exim 4.92 (FreeBSD))
	(envelope-from <contact@nicheconsult.in>) id 1hsqRT-0003Iz-7W
	for poky@yoctoproject.org; Wed, 31 Jul 2019 17:23:03 +0200
Received: from [122.172.95.138] (helo=[192.168.1.3])
	by asmtp013.mail.hostpoint.ch with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91 (FreeBSD))
	(envelope-from <contact@nicheconsult.in>) id 1hsqRS-0006Q0-UJ
	for poky@yoctoproject.org; Wed, 31 Jul 2019 17:23:03 +0200
X-Authenticated-Sender-Id: contact@nicheconsult.in
From: Niche Consulting India <contact@nicheconsult.in>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Wed, 31 Jul 2019 20:52:59 +0530
References: <1564544459-411336-1-git-send-email-changqing.li@windriver.com>
	<8b53b4e5ccd515faed145f1844ac7be1170338fa.camel@linuxfoundation.org>
To: poky@yoctoproject.org
In-Reply-To: <8b53b4e5ccd515faed145f1844ac7be1170338fa.camel@linuxfoundation.org>
Message-Id: <5DDDFCF3-C543-4699-91C4-AF5D54C98D8A@nicheconsult.in>
X-Mailer: Apple Mail (2.3273)
Subject: error in building qt5-image
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
X-List-Received-Date: Wed, 31 Jul 2019 15:23:06 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

hello,
 i encountered this error when building qt5-image for ubuntu 14.04 on =
warrior branch.
=20
=20
Can someone tell me how to fix this? does this mean i checked out an =
older version of code?

=E2=80=94=E2=80=94=E2=80=94=E2=80=94
# bit bake qt5-image
=E2=80=A6.
n file included from libavdevice/avdevice.h:51,
                 from libavdevice/avdevice.c:23:
./libavformat/avformat.h:2070:17: note: declared here
 AVOutputFormat *av_oformat_next(const AVOutputFormat *f);
                 ^~~~~~~~~~~~~~~
libavdevice/avdevice.c:92:13: warning: 'av_iformat_next' is deprecated =
[-Wdeprecated-declarations]
             if (!(prev =3D av_iformat_next(prev)))
             ^~
In file included from libavdevice/avdevice.h:51,
                 from libavdevice/avdevice.c:23:
./libavformat/avformat.h:2062:17: note: declared here
 AVInputFormat  *av_iformat_next(const AVInputFormat  *f);
                 ^~~~~~~~~~~~~~~
make[1]: *** write jobserver: Bad file descriptor.  Stop.
ERROR: oe_runmake failed
make: *** [compile] Error 2
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_compile (log file is located at =
/data/build_area/warrior/poky/build/tmp/work/raspberrypi3-poky-linux-gnuea=
bi/omxplayer/git-r4/temp/log.do_compile.26121)


