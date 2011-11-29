Return-Path: <martin.jansa@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3A22E006B3
	for <poky@yoctoproject.org>; Tue, 29 Nov 2011 08:52:22 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by faao14 with SMTP id o14so1415577faa.35
	for <poky@yoctoproject.org>; Tue, 29 Nov 2011 08:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=o3p4z+OxD2lLwqtE5aheLqiWtR+oPkT+IAcbRvxm/lc=;
	b=Rv79SQkfj7i9kFUXdDmpg1lfLVDyQSjo41fBakSBduLqdzKmuQwPEpASHLlUISNtXC
	ZbKefwWBEbPzJH8qcIl1Q8gEmqku1yPexZE4/Yj1YryQOhVBHMsR9w3Imd/Ij+IMicWK
	YSlLMcKyprgB5CKk9ESEI7mAvFkPvxNXYv9j4=
Received: by 10.204.157.135 with SMTP id b7mr50344303bkx.122.1322585541862;
	Tue, 29 Nov 2011 08:52:21 -0800 (PST)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id d2sm14776300bky.11.2011.11.29.08.52.19
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 29 Nov 2011 08:52:20 -0800 (PST)
Date: Tue, 29 Nov 2011 17:52:08 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20111129165208.GH7441@jama.jama.net>
References: <4ED50B45.70903@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <4ED50B45.70903@mlbassoc.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Missing files in Python
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
X-List-Received-Date: Tue, 29 Nov 2011 16:52:23 -0000
X-Groupsio-MsgNum: 7217
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="SdvjNjn6lL3tIsv0"
Content-Disposition: inline

--SdvjNjn6lL3tIsv0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 29, 2011 at 09:41:41AM -0700, Gary Thomas wrote:
> I'm experiencing some Python packaging issues.
>=20
> * python-setuptools has a bunch of missing depends
>    I had to manually install these packages to be able to run a
>    simple 'setup.py' script:
>        python-audio
>        python-codecs
>        python-compile
>        python-compression
>        python-core
>        python-crypt
>        python-datetime
>        python-distutils
>        python-email
>        python-image
>        python-io
>        python-lang
>        python-logging
>        python-math
>        python-mime
>        python-netclient
>        python-netserver
>        python-pickle
>        python-pprint
>        python-re
>        python-readline
>        python-shell
>        python-stringold
>        python-threading
>        python-zlib

Add those to python-setuptools RDEPENDS_${PN}

> * easy_install shows that the basic Python packages are not exporting
>    the 'io' module.  I can't find any package that includes these:
>      /usr/lib/python2.7/lib-dynload/_io.so
>      /usr/lib/python2.7/io.py

it's in python-io

SHR root@gjama / $ opkg files python-io
Package python-io (2.7.2-r0.2) is installed on root and has the
following files:
/usr/lib/python2.7/lib-dynload/termios.so
/usr/lib/python2.7/StringIO.py
/usr/lib/python2.7/ssl.py
/usr/lib/python2.7/socket.pyo
/usr/lib/python2.7/lib-dynload/_socket.so
/usr/lib/python2.7/lib-dynload/select.so
/usr/lib/python2.7/lib-dynload/_io.so
/usr/lib/python2.7/pipes.py
/usr/lib/python2.7/tempfile.pyo
/usr/lib/python2.7/io.pyo
/usr/lib/python2.7/io.py
/usr/lib/python2.7/StringIO.pyo
/usr/lib/python2.7/lib-dynload/cStringIO.so
/usr/lib/python2.7/_pyio.py
/usr/lib/python2.7/tempfile.py
/usr/lib/python2.7/socket.py
/usr/lib/python2.7/pipes.pyo
/usr/lib/python2.7/ssl.pyo
/usr/lib/python2.7/lib-dynload/_ssl.so
/usr/lib/python2.7/_pyio.pyo

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--SdvjNjn6lL3tIsv0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk7VDbcACgkQN1Ujt2V2gBz1egCfZoTGVh74iLQzYE+RVfqmpRvC
psQAnjDkch9VY4TRkpxEK3YPdQs5HUoB
=2Ops
-----END PGP SIGNATURE-----

--SdvjNjn6lL3tIsv0--
