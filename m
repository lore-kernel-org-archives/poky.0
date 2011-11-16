Return-Path: <fdupoux@free.fr>
Received: from smtp6-g21.free.fr (smtp6-g21.free.fr [212.27.42.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CF5CE00307
	for <poky@yoctoproject.org>; Wed, 16 Nov 2011 11:47:34 -0800 (PST)
Received: from zimbra33-e6.priv.proxad.net (unknown [172.20.243.183])
	by smtp6-g21.free.fr (Postfix) with ESMTP id C688C8226D
	for <poky@yoctoproject.org>; Wed, 16 Nov 2011 20:47:28 +0100 (CET)
Date: Wed, 16 Nov 2011 20:47:27 +0100 (CET)
From: Francois Dupoux <fdupoux@free.fr>
To: poky@yoctoproject.org
Message-ID: <aeedea3c-261d-447f-beb5-d2c6752c583f@zimbra33-e6.priv.proxad.net>
In-Reply-To: <37aa3d7e-7cbb-48f7-8339-8f2b6f7ee06d@zimbra33-e6.priv.proxad.net>
MIME-Version: 1.0
X-Originating-IP: [46.33.16.32]
X-Mailer: Zimbra 7.1.4-GA3333 (ZimbraWebClient - GC15 (Linux)/7.1.4-GA3333)
X-Authenticated-User: fdupoux@free.fr
Subject: Qt should be linked to openssl at compilation
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
X-List-Received-Date: Wed, 16 Nov 2011 19:47:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

Would it be possible to link Qt with openssl at compilation time ?

The problem we are having is our minimal root filesystem provides one Qt-4.7 application which connects to an HTTPS backend. But the openssl library is not in the root filesystem as it is not linked to any other application. So we end up with a run time error when Qt fails to dynamically load openssl:

QSslSocket: cannot call unresolved function d2i_X509

In that particular case this error is triggered by this function call:
QSslCertificate::fromPath("/path/to/ca.crt");

We are using Qt-Embedded but I guess the problem would be exactly the same with Qt-x11

So it would be great to just link Qt with openssl so that all SSL related classes can work.

We just need to add "-openssl-linked" to QT_CONFIG_FLAGS in recipes-qt/qt4.

Many thanks
Francois

