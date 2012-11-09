Return-Path: <erik.boto@pelagicore.com>
Received: from mail-da0-f48.google.com (mail-da0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EDEEE003DA
	for <poky@yoctoproject.org>; Fri,  9 Nov 2012 02:16:02 -0800 (PST)
Received: by mail-da0-f48.google.com with SMTP id z8so1634889dad.35
	for <poky@yoctoproject.org>; Fri, 09 Nov 2012 02:16:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=Jt8XlQF3z/J5oHNGQXICJWVJqImNgqYCwq+wLUOhcgo=;
	b=X4cAQKQVIaLq/mHu9YD9TJXnA8/d55BzG5usLq48yJljLfBdIFr+kR1Q2/CEsQfyTb
	j40wMBtosg08wZ4R+9+NiIdvVXHdtfpf9+9XP44iuVNu0dtDa+CH/Tjll3WEIfE5JqSh
	PMzpuJKMkyyVjp7UR8CB0F6ehdnDsMI5GCnbTq8SZVELFxWxDDWDrA7eJROxtBUeEvbG
	5v+EWmPoiOb9jlnudxk9usDZv3AtQrZdBcPZNh1ezKFfJo0Zo+GHBDWKsrVF/wDCl27Z
	A+d8y53YhJlpG8xASjIfC+kyQl0bceozquf/6TQsKXxWNAbi0DrfqagPaDMBeS3QYMr4
	iYDg==
MIME-Version: 1.0
Received: by 10.68.253.4 with SMTP id zw4mr32405482pbc.143.1352456162020; Fri,
	09 Nov 2012 02:16:02 -0800 (PST)
Received: by 10.68.82.35 with HTTP; Fri, 9 Nov 2012 02:16:02 -0800 (PST)
Date: Fri, 9 Nov 2012 11:16:02 +0100
Message-ID: <CA+AhUGydak7kaCY=gGXeCS=XAfdEqiZ9wbMjQZbiF7FA71LSew@mail.gmail.com>
From: =?ISO-8859-1?Q?Erik_Bot=F6?= <erik.boto@pelagicore.com>
To: poky@yoctoproject.org
X-Gm-Message-State: ALoCoQnNTtfK5H38ukaR7YuMw5GB0z9iBa5Ua7pOMnrHBGtLeW36e2I3bJpT45GDGVtO2F/Ui7on
Subject: Cannot use QT_VERSION in project file when building Qt app
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
X-List-Received-Date: Fri, 09 Nov 2012 10:16:02 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I have a very simple recipe:

DESCRIPTION = "My App"
SECTION = "system"
LICENSE = "CLOSED"
PR="r1"
SRC_URI = "file://${PN}_${PV}.tar.gz"
DEPENDS = "qt-mobility-x11"
S = "${WORKDIR}/${PN}-${PV}/"
inherit qmake2 qt4x11

In the .pro file I have some checks for the QT version used, e.g. :

contains(QT_MAJOR_VERSION, 4):lessThan(QT_MINOR_VERSION, 6) {
    // stuff
}

But it appears as the QT_VERSION, QT_MAJOR_VERSION and
QT_MINOR_VERSION variables are not set.

If I run qmake2 --version in i devshell I get the correct version:
$ qmake2 -v
QMake version 2.01a
Using Qt version 4.8.1 in
/home/erbo/pcore/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/lib

Any ideas what the issue could be?

Cheers,
Erik

