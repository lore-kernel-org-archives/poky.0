Return-Path: <hemmo.nieminen@aalto.fi>
Received: from mx05.aalto.fi (mx05.aalto.fi [130.233.222.104])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03DAEE0132F
	for <poky@yoctoproject.org>; Thu,  3 Nov 2011 04:54:59 -0700 (PDT)
Received: from mx05.aalto.fi (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id B7DDA80DB9
	for <poky@yoctoproject.org>; Thu,  3 Nov 2011 13:54:57 +0200 (EET)
Received: from EXHUB03.org.aalto.fi (ex-hub03.org.aalto.fi [130.233.222.116])
	by mx05.aalto.fi (Postfix) with ESMTP id AC0E380DB1
	for <poky@yoctoproject.org>; Thu,  3 Nov 2011 13:54:57 +0200 (EET)
Received: from localhost (80.221.42.148) by mail.aalto.fi (130.233.222.116)
	with Microsoft SMTP Server (TLS) id 14.1.270.1; Thu, 3 Nov 2011 13:54:57
	+0200
Date: Thu, 3 Nov 2011 13:53:43 +0200
From: Hemmo Nieminen <hemmo.nieminen@aalto.fi>
To: Poky Project <poky@yoctoproject.org>
Message-ID: <20111103115343.GA15780@fcku>
Mail-Followup-To: Poky Project <poky@yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Originating-IP: [80.221.42.148]
Subject: Depending on a specific version of a package
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Hemmo Nieminen <hemmo.nieminen@iki.fi>
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Nov 2011 11:55:00 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline

Hi all,

I was wondering if it was possible to depend on a specific
version of a package? Say, I have the following packages

packageA_1.0.bb

packageB_2.2.bb
packageB_2.3.bb

I then want packageA to depend on packageB-2.2 (say,
packageB-2.3 is not backwards compatible). How could I do this?


I've noticed, that some of the existing recipes in Poky contain
Debian-like dependency definitions like the one below from
meta/recipes-support/gnutls/gnutls.inc. 

DEPENDS = "zlib lzo libtasn1 libgcrypt (>= 1.4.2) libcap"

I expect that this would mean that gnutls depends on version
1.4.2 or higher of package libgcrypt. This would be exactly what
I'm looking for, expect that I haven't been able to get the
desired effect with this. The version information inside the
parentheses seems to be completely ignored. 


I also tried adding a line like

DEPENDS += "packageB-2.2" 

into packageA's recipe, but this made Bitbake to start compiling
both the version I had specified as a dependency and the latest
version of that package and eventually to fail compiling either
one of those. 


Bitbake's manual also suggests using
PREFERRED_VERSION_package-name variable in some .conf file.
However, I'd rather define the version dependency in a recipe
file.


I'm using the latest Poky from Git.

Br,
Hemmo

