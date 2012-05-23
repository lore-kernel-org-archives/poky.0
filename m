Return-Path: <flocirel@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 832BDE01304
	for <poky@yoctoproject.org>; Wed, 23 May 2012 02:04:07 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so5637994wgb.11
	for <poky@yoctoproject.org>; Wed, 23 May 2012 02:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=RL8IkEviSnDKQHXcyvmlXbWxw3Xz1zDQ4G/CRIlcf38=;
	b=p8SOgrC9kYvDBGj69wnolH1bQgJpas/DHZ4uPL8iY60Ta/uGDWQhVmfih45BWaqBn8
	I/5Hr90rWxlxIe6CXpDue4vOOic0R4sGv5jr0Y5hOa/8iVOTUeBEoXZor/olvS05M/R3
	CdTc8KUPyAIXdlvisWt9zFdvOgjcGVBiTmbUs66AwPxRWQMIzqsv2lg38EriSXTN6fu4
	1XZHWHcaMsLj1s+yOY6Mq3zauiGQIYuFFjpSlof6wOF9L+WFiTEhTmekIanPX40R+inO
	PRnB1tLZk4q6LDjo5R5gWZUtFB6Ww/tPhPW7AmX2huMToJYO80/oEVukuN8nXLa/Ly/T
	RFQg==
MIME-Version: 1.0
Received: by 10.180.8.69 with SMTP id p5mr43991911wia.17.1337763846456; Wed,
	23 May 2012 02:04:06 -0700 (PDT)
Received: by 10.194.18.231 with HTTP; Wed, 23 May 2012 02:04:06 -0700 (PDT)
Date: Wed, 23 May 2012 12:04:06 +0300
Message-ID: <CANdftmNDK3oR8m5_1kAW8eJTYYkaS2VvOY0wMf8QpuwWEjCZNg@mail.gmail.com>
From: Foinel <flocirel@gmail.com>
To: poky@yoctoproject.org
Subject: question about yoctoproject mirrors
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
X-List-Received-Date: Wed, 23 May 2012 09:04:07 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I'm trying to use the denzil branch and encounter some issues with a
package. netbase to be more precise. On upstream, netbase 4.47 does
not exist anymore. So it automatically tries a mirror to download
netbase 4.47. It ends up fetching the package from
http://snapshot.debian.net/archive/pool/n/netbase/netbase_4.47.tar.gz
. The package from this mirror seems broken though and do_unpack fails
with "gzip: stdin: not in gzip format"
Now my question is: why doesn't it uses
http://downloads.yoctoproject.org/mirror/sources/ ? Which is the
scenario when it fetches from the yoctoproject mirror?

Thanks.

